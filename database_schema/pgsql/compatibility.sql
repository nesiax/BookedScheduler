-- Run this script after having migrated from MySQL using pgloader

ALTER TABLE blackout_series RENAME COLUMN blackout_series_id TO series_id;

ALTER TABLE blackout_series_resources RENAME COLUMN blackout_series_id TO series_id;

ALTER TABLE blackout_instances RENAME COLUMN blackout_series_id TO series_id;

ALTER TABLE announcements
    ALTER COLUMN display_page DROP DEFAULT;

ALTER TABLE announcements
    ALTER COLUMN display_page TYPE smallint
    USING display_page::bool::int;

ALTER TABLE announcements
    ALTER COLUMN display_page SET DEFAULT 1;

ALTER TABLE peak_times
    ALTER COLUMN begin_month TYPE smallint
    USING begin_month::bool::int;

ALTER TABLE peak_times
    ALTER COLUMN begin_day TYPE smallint
    USING begin_day::bool::int;

ALTER TABLE peak_times
    ALTER COLUMN end_month TYPE smallint
    USING end_month::bool::int;

ALTER TABLE peak_times
    ALTER COLUMN end_day TYPE smallint
    USING end_day::bool::int;

ALTER TABLE custom_attributes
    ALTER COLUMN admin_only SET DEFAULT FALSE;

ALTER TABLE custom_attributes
    ALTER COLUMN admin_only SET NOT NULL;

ALTER TABLE custom_attributes
    ALTER COLUMN is_private SET DEFAULT FALSE;

ALTER TABLE custom_attributes
    ALTER COLUMN is_private SET DEFAULT NOT NULL;

UPDATE
    custom_attributes
SET
    admin_only = FALSE
WHERE
    admin_only IS NULL;

UPDATE
    custom_attributes
SET
    is_private = FALSE
WHERE
    is_private IS NULL;

-- find_in_set

CREATE OR REPLACE FUNCTION public.find_in_set(str text, strlist text) RETURNS integer
    LANGUAGE sql STRICT
    AS $_$
SELECT i
   FROM generate_subscripts(string_to_array($2,','),1) g(i)
  WHERE (string_to_array($2, ','))[i] = $1
  UNION ALL
  SELECT 0
  LIMIT 1
$_$;

-- timstampdiff

CREATE OR REPLACE FUNCTION public.timestampdiff(units character varying, start_t timestamp without time zone, end_t timestamp without time zone) RETURNS integer
    LANGUAGE plpgsql
    AS $$
   DECLARE
     diff_interval INTERVAL;
     diff INT = 0;
     years_diff INT = 0;
   BEGIN
     IF units IN ('yy', 'yyyy', 'year', 'mm', 'm', 'month') THEN
       years_diff = DATE_PART('year', end_t) - DATE_PART('year', start_t);

       IF units IN ('yy', 'yyyy', 'year') THEN
         -- SQL Server does not count full years passed (only difference between year parts)
         RETURN years_diff;
       ELSE
         -- If end month is less than start month it will subtracted
         RETURN years_diff * 12 + (DATE_PART('month', end_t) - DATE_PART('month', start_t));
       END IF;
     END IF;

     -- Minus operator returns interval 'DDD days HH:MI:SS'
     diff_interval = end_t - start_t;

     diff = diff + DATE_PART('day', diff_interval);

     IF units IN ('wk', 'ww', 'week') THEN
       diff = diff/7;
       RETURN diff;
     END IF;

     IF units IN ('dd', 'd', 'day') THEN
       RETURN diff;
     END IF;

     diff = diff * 24 + DATE_PART('hour', diff_interval);

     IF units IN ('hh', 'hour') THEN
        RETURN diff;
     END IF;

     diff = diff * 60 + DATE_PART('minute', diff_interval);

     IF units IN ('mi', 'n', 'minute') THEN
        RETURN diff;
     END IF;

     diff = diff * 60 + DATE_PART('second', diff_interval);

     RETURN diff;
   END;
   $$;
