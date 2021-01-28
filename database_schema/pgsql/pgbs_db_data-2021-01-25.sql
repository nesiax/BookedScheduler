--
-- PostgreSQL database dump
--

-- Dumped from database version 11.10 (Debian 11.10-1.pgdg100+1)
-- Dumped by pg_dump version 11.10 (Debian 11.10-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY bookedscheduler.users DROP CONSTRAINT users_ibfk_1;
ALTER TABLE ONLY bookedscheduler.user_session DROP CONSTRAINT user_session_ibfk_1;
ALTER TABLE ONLY bookedscheduler.user_resource_permissions DROP CONSTRAINT user_resource_permissions_ibfk_2;
ALTER TABLE ONLY bookedscheduler.user_resource_permissions DROP CONSTRAINT user_resource_permissions_ibfk_1;
ALTER TABLE ONLY bookedscheduler.user_preferences DROP CONSTRAINT user_preferences_ibfk_1;
ALTER TABLE ONLY bookedscheduler.user_groups DROP CONSTRAINT user_groups_ibfk_2;
ALTER TABLE ONLY bookedscheduler.user_groups DROP CONSTRAINT user_groups_ibfk_1;
ALTER TABLE ONLY bookedscheduler.user_email_preferences DROP CONSTRAINT user_email_preferences_ibfk_1;
ALTER TABLE ONLY bookedscheduler.time_blocks DROP CONSTRAINT time_blocks_ibfk_1;
ALTER TABLE ONLY bookedscheduler.schedules DROP CONSTRAINT schedules_ibfk_1;
ALTER TABLE ONLY bookedscheduler.schedules DROP CONSTRAINT schedules_groups_admin_group_id;
ALTER TABLE ONLY bookedscheduler.saved_reports DROP CONSTRAINT saved_reports_ibfk_1;
ALTER TABLE ONLY bookedscheduler.resources DROP CONSTRAINT resources_ibfk_3;
ALTER TABLE ONLY bookedscheduler.resources DROP CONSTRAINT resources_ibfk_2;
ALTER TABLE ONLY bookedscheduler.resources DROP CONSTRAINT resources_ibfk_1;
ALTER TABLE ONLY bookedscheduler.resource_type_assignment DROP CONSTRAINT resource_type_assignment_ibfk_2;
ALTER TABLE ONLY bookedscheduler.resource_type_assignment DROP CONSTRAINT resource_type_assignment_ibfk_1;
ALTER TABLE ONLY bookedscheduler.resource_images DROP CONSTRAINT resource_images_ibfk_1;
ALTER TABLE ONLY bookedscheduler.resource_groups DROP CONSTRAINT resource_groups_ibfk_1;
ALTER TABLE ONLY bookedscheduler.resource_group_assignment DROP CONSTRAINT resource_group_assignment_ibfk_2;
ALTER TABLE ONLY bookedscheduler.resource_group_assignment DROP CONSTRAINT resource_group_assignment_ibfk_1;
ALTER TABLE ONLY bookedscheduler.resource_accessories DROP CONSTRAINT resource_accessories_ibfk_2;
ALTER TABLE ONLY bookedscheduler.resource_accessories DROP CONSTRAINT resource_accessories_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reservation_series DROP CONSTRAINT reservations_type;
ALTER TABLE ONLY bookedscheduler.reservation_series DROP CONSTRAINT reservations_status;
ALTER TABLE ONLY bookedscheduler.reservation_instances DROP CONSTRAINT reservations_series;
ALTER TABLE ONLY bookedscheduler.reservation_series DROP CONSTRAINT reservations_owner;
ALTER TABLE ONLY bookedscheduler.reservation_waitlist_requests DROP CONSTRAINT reservation_waitlist_requests_ibfk_2;
ALTER TABLE ONLY bookedscheduler.reservation_waitlist_requests DROP CONSTRAINT reservation_waitlist_requests_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reservation_users DROP CONSTRAINT reservation_users_ibfk_2;
ALTER TABLE ONLY bookedscheduler.reservation_users DROP CONSTRAINT reservation_users_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reservation_resources DROP CONSTRAINT reservation_resources_ibfk_2;
ALTER TABLE ONLY bookedscheduler.reservation_resources DROP CONSTRAINT reservation_resources_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reservation_reminders DROP CONSTRAINT reservation_reminders_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reservation_guests DROP CONSTRAINT reservation_guests_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reservation_files DROP CONSTRAINT reservation_files_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reservation_color_rules DROP CONSTRAINT reservation_color_rules_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reservation_accessories DROP CONSTRAINT reservation_accessories_ibfk_2;
ALTER TABLE ONLY bookedscheduler.reservation_accessories DROP CONSTRAINT reservation_accessories_ibfk_1;
ALTER TABLE ONLY bookedscheduler.reminders DROP CONSTRAINT reminders_ibfk_1;
ALTER TABLE ONLY bookedscheduler.refund_transaction_log DROP CONSTRAINT refund_transaction_log_ibfk_1;
ALTER TABLE ONLY bookedscheduler.quotas DROP CONSTRAINT quotas_ibfk_3;
ALTER TABLE ONLY bookedscheduler.quotas DROP CONSTRAINT quotas_ibfk_2;
ALTER TABLE ONLY bookedscheduler.quotas DROP CONSTRAINT quotas_ibfk_1;
ALTER TABLE ONLY bookedscheduler.peak_times DROP CONSTRAINT peak_times_ibfk_1;
ALTER TABLE ONLY bookedscheduler.groups DROP CONSTRAINT groups_ibfk_1;
ALTER TABLE ONLY bookedscheduler.group_roles DROP CONSTRAINT group_roles_ibfk_2;
ALTER TABLE ONLY bookedscheduler.group_roles DROP CONSTRAINT group_roles_ibfk_1;
ALTER TABLE ONLY bookedscheduler.group_resource_permissions DROP CONSTRAINT group_resource_permissions_ibfk_2;
ALTER TABLE ONLY bookedscheduler.group_resource_permissions DROP CONSTRAINT group_resource_permissions_ibfk_1;
ALTER TABLE ONLY bookedscheduler.custom_time_blocks DROP CONSTRAINT custom_time_blocks_ibfk_1;
ALTER TABLE ONLY bookedscheduler.custom_attribute_entities DROP CONSTRAINT custom_attribute_entities_ibfk_1;
ALTER TABLE ONLY bookedscheduler.blackout_series_resources DROP CONSTRAINT blackout_series_resources_ibfk_2;
ALTER TABLE ONLY bookedscheduler.blackout_series_resources DROP CONSTRAINT blackout_series_resources_ibfk_1;
ALTER TABLE ONLY bookedscheduler.blackout_instances DROP CONSTRAINT blackout_instances_ibfk_1;
ALTER TABLE ONLY bookedscheduler.announcement_resources DROP CONSTRAINT announcement_resources_ibfk_2;
ALTER TABLE ONLY bookedscheduler.announcement_resources DROP CONSTRAINT announcement_resources_ibfk_1;
ALTER TABLE ONLY bookedscheduler.announcement_groups DROP CONSTRAINT announcement_groups_ibfk_2;
ALTER TABLE ONLY bookedscheduler.announcement_groups DROP CONSTRAINT announcement_groups_ibfk_1;
ALTER TABLE ONLY bookedscheduler.resources DROP CONSTRAINT admin_group_id;
ALTER TABLE ONLY bookedscheduler.account_activation DROP CONSTRAINT account_activation_ibfk_1;
DROP TRIGGER on_update_current_timestamp ON bookedscheduler.users;
DROP INDEX bookedscheduler.idx_40321_user_session_user_id;
DROP INDEX bookedscheduler.idx_40321_user_session_session_token;
DROP INDEX bookedscheduler.idx_40314_user_id_2;
DROP INDEX bookedscheduler.idx_40314_user_id;
DROP INDEX bookedscheduler.idx_40314_resource_id_2;
DROP INDEX bookedscheduler.idx_40314_resource_id;
DROP INDEX bookedscheduler.idx_40307_user_id;
DROP INDEX bookedscheduler.idx_40302_user_id;
DROP INDEX bookedscheduler.idx_40302_group_id;
DROP INDEX bookedscheduler.idx_40280_status_id;
DROP INDEX bookedscheduler.idx_40280_public_id;
DROP INDEX bookedscheduler.idx_40272_layout_id;
DROP INDEX bookedscheduler.idx_40243_schedules_groups_admin_group_id;
DROP INDEX bookedscheduler.idx_40243_public_id;
DROP INDEX bookedscheduler.idx_40243_layout_id;
DROP INDEX bookedscheduler.idx_40233_user_id;
DROP INDEX bookedscheduler.idx_40224_resource_type_id;
DROP INDEX bookedscheduler.idx_40209_status_id;
DROP INDEX bookedscheduler.idx_40202_resource_id;
DROP INDEX bookedscheduler.idx_40197_resource_group_assignment_resource_id;
DROP INDEX bookedscheduler.idx_40197_resource_group_assignment_resource_group_id;
DROP INDEX bookedscheduler.idx_40191_resource_groups_parent_id;
DROP INDEX bookedscheduler.idx_40185_resource_id;
DROP INDEX bookedscheduler.idx_40185_accessory_id;
DROP INDEX bookedscheduler.idx_40161_schedule_id;
DROP INDEX bookedscheduler.idx_40161_resource_type_id;
DROP INDEX bookedscheduler.idx_40161_resource_status_reason_id;
DROP INDEX bookedscheduler.idx_40161_public_id;
DROP INDEX bookedscheduler.idx_40161_auto_release_minutes;
DROP INDEX bookedscheduler.idx_40161_admin_group_id;
DROP INDEX bookedscheduler.idx_40155_user_id;
DROP INDEX bookedscheduler.idx_40155_resource_id;
DROP INDEX bookedscheduler.idx_40150_user_id;
DROP INDEX bookedscheduler.idx_40150_reservation_user_level;
DROP INDEX bookedscheduler.idx_40150_reservation_instance_id;
DROP INDEX bookedscheduler.idx_40133_type_id;
DROP INDEX bookedscheduler.idx_40133_status_id;
DROP INDEX bookedscheduler.idx_40133_reservations_owner;
DROP INDEX bookedscheduler.idx_40128_series_id;
DROP INDEX bookedscheduler.idx_40128_resource_id;
DROP INDEX bookedscheduler.idx_40124_series_id;
DROP INDEX bookedscheduler.idx_40124_reminder_type;
DROP INDEX bookedscheduler.idx_40117_start_date;
DROP INDEX bookedscheduler.idx_40117_series_id;
DROP INDEX bookedscheduler.idx_40117_reference_number;
DROP INDEX bookedscheduler.idx_40117_end_date;
DROP INDEX bookedscheduler.idx_40117_checkin_date;
DROP INDEX bookedscheduler.idx_40112_reservation_guests_reservation_user_level;
DROP INDEX bookedscheduler.idx_40112_reservation_guests_reservation_instance_id;
DROP INDEX bookedscheduler.idx_40112_reservation_guests_email_address;
DROP INDEX bookedscheduler.idx_40107_series_id;
DROP INDEX bookedscheduler.idx_40097_custom_attribute_id;
DROP INDEX bookedscheduler.idx_40092_series_id;
DROP INDEX bookedscheduler.idx_40092_accessory_id;
DROP INDEX bookedscheduler.idx_40085_reminders_user_id;
DROP INDEX bookedscheduler.idx_40072_payment_transaction_log_id;
DROP INDEX bookedscheduler.idx_40064_schedule_id;
DROP INDEX bookedscheduler.idx_40064_resource_id;
DROP INDEX bookedscheduler.idx_40064_group_id;
DROP INDEX bookedscheduler.idx_40055_schedule_id;
DROP INDEX bookedscheduler.idx_40042_user_id;
DROP INDEX bookedscheduler.idx_40042_invoice_number;
DROP INDEX bookedscheduler.idx_40018_role_id;
DROP INDEX bookedscheduler.idx_40018_group_id;
DROP INDEX bookedscheduler.idx_40014_resource_id_2;
DROP INDEX bookedscheduler.idx_40014_resource_id;
DROP INDEX bookedscheduler.idx_40014_group_id_2;
DROP INDEX bookedscheduler.idx_40014_group_id;
DROP INDEX bookedscheduler.idx_40008_isdefault;
DROP INDEX bookedscheduler.idx_40008_admin_group_id;
DROP INDEX bookedscheduler.idx_39997_layout_id;
DROP INDEX bookedscheduler.idx_39988_entity_id;
DROP INDEX bookedscheduler.idx_39988_custom_attribute_id;
DROP INDEX bookedscheduler.idx_39988_attribute_category;
DROP INDEX bookedscheduler.idx_39974_display_label;
DROP INDEX bookedscheduler.idx_39974_attribute_category;
DROP INDEX bookedscheduler.idx_39957_resource_id;
DROP INDEX bookedscheduler.idx_39941_start_date;
DROP INDEX bookedscheduler.idx_39941_end_date;
DROP INDEX bookedscheduler.idx_39941_blackout_series_id;
DROP INDEX bookedscheduler.idx_39936_resource_id;
DROP INDEX bookedscheduler.idx_39933_group_id;
DROP INDEX bookedscheduler.idx_39925_start_date;
DROP INDEX bookedscheduler.idx_39925_end_date;
DROP INDEX bookedscheduler.idx_39925_display_page;
DROP INDEX bookedscheduler.idx_39919_user_id;
DROP INDEX bookedscheduler.idx_39919_activation_code_2;
DROP INDEX bookedscheduler.idx_39919_activation_code;
ALTER TABLE ONLY bookedscheduler.user_statuses DROP CONSTRAINT idx_40328_primary;
ALTER TABLE ONLY bookedscheduler.user_session DROP CONSTRAINT idx_40321_primary;
ALTER TABLE ONLY bookedscheduler.user_resource_permissions DROP CONSTRAINT idx_40314_primary;
ALTER TABLE ONLY bookedscheduler.user_preferences DROP CONSTRAINT idx_40307_primary;
ALTER TABLE ONLY bookedscheduler.user_groups DROP CONSTRAINT idx_40302_primary;
ALTER TABLE ONLY bookedscheduler.user_email_preferences DROP CONSTRAINT idx_40299_primary;
ALTER TABLE ONLY bookedscheduler.users DROP CONSTRAINT idx_40280_primary;
ALTER TABLE ONLY bookedscheduler.time_blocks DROP CONSTRAINT idx_40272_primary;
ALTER TABLE ONLY bookedscheduler.terms_of_service DROP CONSTRAINT idx_40260_primary;
ALTER TABLE ONLY bookedscheduler.schedules DROP CONSTRAINT idx_40243_primary;
ALTER TABLE ONLY bookedscheduler.saved_reports DROP CONSTRAINT idx_40233_primary;
ALTER TABLE ONLY bookedscheduler.roles DROP CONSTRAINT idx_40227_primary;
ALTER TABLE ONLY bookedscheduler.resource_type_assignment DROP CONSTRAINT idx_40224_primary;
ALTER TABLE ONLY bookedscheduler.resource_types DROP CONSTRAINT idx_40216_primary;
ALTER TABLE ONLY bookedscheduler.resource_status_reasons DROP CONSTRAINT idx_40209_primary;
ALTER TABLE ONLY bookedscheduler.resource_images DROP CONSTRAINT idx_40202_primary;
ALTER TABLE ONLY bookedscheduler.resource_group_assignment DROP CONSTRAINT idx_40197_primary;
ALTER TABLE ONLY bookedscheduler.resource_groups DROP CONSTRAINT idx_40191_primary;
ALTER TABLE ONLY bookedscheduler.resource_accessories DROP CONSTRAINT idx_40185_primary;
ALTER TABLE ONLY bookedscheduler.resources DROP CONSTRAINT idx_40161_primary;
ALTER TABLE ONLY bookedscheduler.reservation_waitlist_requests DROP CONSTRAINT idx_40155_primary;
ALTER TABLE ONLY bookedscheduler.reservation_users DROP CONSTRAINT idx_40150_primary;
ALTER TABLE ONLY bookedscheduler.reservation_types DROP CONSTRAINT idx_40147_primary;
ALTER TABLE ONLY bookedscheduler.reservation_statuses DROP CONSTRAINT idx_40144_primary;
ALTER TABLE ONLY bookedscheduler.reservation_series DROP CONSTRAINT idx_40133_primary;
ALTER TABLE ONLY bookedscheduler.reservation_resources DROP CONSTRAINT idx_40128_primary;
ALTER TABLE ONLY bookedscheduler.reservation_reminders DROP CONSTRAINT idx_40124_primary;
ALTER TABLE ONLY bookedscheduler.reservation_instances DROP CONSTRAINT idx_40117_primary;
ALTER TABLE ONLY bookedscheduler.reservation_guests DROP CONSTRAINT idx_40112_primary;
ALTER TABLE ONLY bookedscheduler.reservation_files DROP CONSTRAINT idx_40107_primary;
ALTER TABLE ONLY bookedscheduler.reservation_color_rules DROP CONSTRAINT idx_40097_primary;
ALTER TABLE ONLY bookedscheduler.reservation_accessories DROP CONSTRAINT idx_40092_primary;
ALTER TABLE ONLY bookedscheduler.reminders DROP CONSTRAINT idx_40085_primary;
ALTER TABLE ONLY bookedscheduler.refund_transaction_log DROP CONSTRAINT idx_40072_primary;
ALTER TABLE ONLY bookedscheduler.quotas DROP CONSTRAINT idx_40064_primary;
ALTER TABLE ONLY bookedscheduler.peak_times DROP CONSTRAINT idx_40055_primary;
ALTER TABLE ONLY bookedscheduler.payment_transaction_log DROP CONSTRAINT idx_40042_primary;
ALTER TABLE ONLY bookedscheduler.payment_gateway_settings DROP CONSTRAINT idx_40034_primary;
ALTER TABLE ONLY bookedscheduler.payment_configuration DROP CONSTRAINT idx_40030_primary;
ALTER TABLE ONLY bookedscheduler.layouts DROP CONSTRAINT idx_40023_primary;
ALTER TABLE ONLY bookedscheduler.group_roles DROP CONSTRAINT idx_40018_primary;
ALTER TABLE ONLY bookedscheduler.group_resource_permissions DROP CONSTRAINT idx_40014_primary;
ALTER TABLE ONLY bookedscheduler.groups DROP CONSTRAINT idx_40008_primary;
ALTER TABLE ONLY bookedscheduler.custom_time_blocks DROP CONSTRAINT idx_39997_primary;
ALTER TABLE ONLY bookedscheduler.custom_attribute_values DROP CONSTRAINT idx_39988_primary;
ALTER TABLE ONLY bookedscheduler.custom_attribute_entities DROP CONSTRAINT idx_39983_primary;
ALTER TABLE ONLY bookedscheduler.custom_attributes DROP CONSTRAINT idx_39974_primary;
ALTER TABLE ONLY bookedscheduler.credit_log DROP CONSTRAINT idx_39962_primary;
ALTER TABLE ONLY bookedscheduler.blackout_series_resources DROP CONSTRAINT idx_39957_primary;
ALTER TABLE ONLY bookedscheduler.blackout_series DROP CONSTRAINT idx_39947_primary;
ALTER TABLE ONLY bookedscheduler.blackout_instances DROP CONSTRAINT idx_39941_primary;
ALTER TABLE ONLY bookedscheduler.announcement_resources DROP CONSTRAINT idx_39936_primary;
ALTER TABLE ONLY bookedscheduler.announcement_groups DROP CONSTRAINT idx_39933_primary;
ALTER TABLE ONLY bookedscheduler.announcements DROP CONSTRAINT idx_39925_primary;
ALTER TABLE ONLY bookedscheduler.account_activation DROP CONSTRAINT idx_39919_primary;
ALTER TABLE ONLY bookedscheduler.accessories DROP CONSTRAINT idx_39912_primary;
ALTER TABLE bookedscheduler.users ALTER COLUMN user_id DROP DEFAULT;
ALTER TABLE bookedscheduler.user_session ALTER COLUMN user_session_id DROP DEFAULT;
ALTER TABLE bookedscheduler.user_preferences ALTER COLUMN user_preferences_id DROP DEFAULT;
ALTER TABLE bookedscheduler.time_blocks ALTER COLUMN block_id DROP DEFAULT;
ALTER TABLE bookedscheduler.terms_of_service ALTER COLUMN terms_of_service_id DROP DEFAULT;
ALTER TABLE bookedscheduler.schedules ALTER COLUMN schedule_id DROP DEFAULT;
ALTER TABLE bookedscheduler.saved_reports ALTER COLUMN saved_report_id DROP DEFAULT;
ALTER TABLE bookedscheduler.resources ALTER COLUMN resource_id DROP DEFAULT;
ALTER TABLE bookedscheduler.resource_types ALTER COLUMN resource_type_id DROP DEFAULT;
ALTER TABLE bookedscheduler.resource_status_reasons ALTER COLUMN resource_status_reason_id DROP DEFAULT;
ALTER TABLE bookedscheduler.resource_images ALTER COLUMN resource_image_id DROP DEFAULT;
ALTER TABLE bookedscheduler.resource_groups ALTER COLUMN resource_group_id DROP DEFAULT;
ALTER TABLE bookedscheduler.resource_accessories ALTER COLUMN resource_accessory_id DROP DEFAULT;
ALTER TABLE bookedscheduler.reservation_waitlist_requests ALTER COLUMN reservation_waitlist_request_id DROP DEFAULT;
ALTER TABLE bookedscheduler.reservation_series ALTER COLUMN series_id DROP DEFAULT;
ALTER TABLE bookedscheduler.reservation_reminders ALTER COLUMN reminder_id DROP DEFAULT;
ALTER TABLE bookedscheduler.reservation_instances ALTER COLUMN reservation_instance_id DROP DEFAULT;
ALTER TABLE bookedscheduler.reservation_files ALTER COLUMN file_id DROP DEFAULT;
ALTER TABLE bookedscheduler.reservation_color_rules ALTER COLUMN reservation_color_rule_id DROP DEFAULT;
ALTER TABLE bookedscheduler.reminders ALTER COLUMN reminder_id DROP DEFAULT;
ALTER TABLE bookedscheduler.refund_transaction_log ALTER COLUMN refund_transaction_log_id DROP DEFAULT;
ALTER TABLE bookedscheduler.quotas ALTER COLUMN quota_id DROP DEFAULT;
ALTER TABLE bookedscheduler.peak_times ALTER COLUMN peak_times_id DROP DEFAULT;
ALTER TABLE bookedscheduler.payment_transaction_log ALTER COLUMN payment_transaction_log_id DROP DEFAULT;
ALTER TABLE bookedscheduler.payment_configuration ALTER COLUMN payment_configuration_id DROP DEFAULT;
ALTER TABLE bookedscheduler.layouts ALTER COLUMN layout_id DROP DEFAULT;
ALTER TABLE bookedscheduler.groups ALTER COLUMN group_id DROP DEFAULT;
ALTER TABLE bookedscheduler.custom_time_blocks ALTER COLUMN custom_time_block_id DROP DEFAULT;
ALTER TABLE bookedscheduler.custom_attributes ALTER COLUMN custom_attribute_id DROP DEFAULT;
ALTER TABLE bookedscheduler.custom_attribute_values ALTER COLUMN custom_attribute_value_id DROP DEFAULT;
ALTER TABLE bookedscheduler.credit_log ALTER COLUMN credit_log_id DROP DEFAULT;
ALTER TABLE bookedscheduler.blackout_series ALTER COLUMN series_id DROP DEFAULT;
ALTER TABLE bookedscheduler.blackout_instances ALTER COLUMN blackout_instance_id DROP DEFAULT;
ALTER TABLE bookedscheduler.announcements ALTER COLUMN announcementid DROP DEFAULT;
ALTER TABLE bookedscheduler.account_activation ALTER COLUMN account_activation_id DROP DEFAULT;
ALTER TABLE bookedscheduler.accessories ALTER COLUMN accessory_id DROP DEFAULT;
DROP SEQUENCE bookedscheduler.users_user_id_seq;
DROP TABLE bookedscheduler.users;
DROP TABLE bookedscheduler.user_statuses;
DROP SEQUENCE bookedscheduler.user_session_user_session_id_seq;
DROP TABLE bookedscheduler.user_session;
DROP TABLE bookedscheduler.user_resource_permissions;
DROP SEQUENCE bookedscheduler.user_preferences_user_preferences_id_seq;
DROP TABLE bookedscheduler.user_preferences;
DROP TABLE bookedscheduler.user_groups;
DROP TABLE bookedscheduler.user_email_preferences;
DROP SEQUENCE bookedscheduler.time_blocks_block_id_seq;
DROP TABLE bookedscheduler.time_blocks;
DROP SEQUENCE bookedscheduler.terms_of_service_terms_of_service_id_seq;
DROP TABLE bookedscheduler.terms_of_service;
DROP SEQUENCE bookedscheduler.schedules_schedule_id_seq;
DROP TABLE bookedscheduler.schedules;
DROP SEQUENCE bookedscheduler.saved_reports_saved_report_id_seq;
DROP TABLE bookedscheduler.saved_reports;
DROP TABLE bookedscheduler.roles;
DROP SEQUENCE bookedscheduler.resources_resource_id_seq;
DROP TABLE bookedscheduler.resources;
DROP SEQUENCE bookedscheduler.resource_types_resource_type_id_seq;
DROP TABLE bookedscheduler.resource_types;
DROP TABLE bookedscheduler.resource_type_assignment;
DROP SEQUENCE bookedscheduler.resource_status_reasons_resource_status_reason_id_seq;
DROP TABLE bookedscheduler.resource_status_reasons;
DROP SEQUENCE bookedscheduler.resource_images_resource_image_id_seq;
DROP TABLE bookedscheduler.resource_images;
DROP SEQUENCE bookedscheduler.resource_groups_resource_group_id_seq;
DROP TABLE bookedscheduler.resource_groups;
DROP TABLE bookedscheduler.resource_group_assignment;
DROP SEQUENCE bookedscheduler.resource_accessories_resource_accessory_id_seq;
DROP TABLE bookedscheduler.resource_accessories;
DROP SEQUENCE bookedscheduler.reservation_waitlist_requests_reservation_waitlist_request__seq;
DROP TABLE bookedscheduler.reservation_waitlist_requests;
DROP TABLE bookedscheduler.reservation_users;
DROP TABLE bookedscheduler.reservation_types;
DROP TABLE bookedscheduler.reservation_statuses;
DROP SEQUENCE bookedscheduler.reservation_series_series_id_seq;
DROP TABLE bookedscheduler.reservation_series;
DROP TABLE bookedscheduler.reservation_resources;
DROP SEQUENCE bookedscheduler.reservation_reminders_reminder_id_seq;
DROP TABLE bookedscheduler.reservation_reminders;
DROP SEQUENCE bookedscheduler.reservation_instances_reservation_instance_id_seq;
DROP TABLE bookedscheduler.reservation_instances;
DROP TABLE bookedscheduler.reservation_guests;
DROP SEQUENCE bookedscheduler.reservation_files_file_id_seq;
DROP TABLE bookedscheduler.reservation_files;
DROP SEQUENCE bookedscheduler.reservation_color_rules_reservation_color_rule_id_seq;
DROP TABLE bookedscheduler.reservation_color_rules;
DROP TABLE bookedscheduler.reservation_accessories;
DROP SEQUENCE bookedscheduler.reminders_reminder_id_seq;
DROP TABLE bookedscheduler.reminders;
DROP SEQUENCE bookedscheduler.refund_transaction_log_refund_transaction_log_id_seq;
DROP TABLE bookedscheduler.refund_transaction_log;
DROP SEQUENCE bookedscheduler.quotas_quota_id_seq;
DROP TABLE bookedscheduler.quotas;
DROP SEQUENCE bookedscheduler.peak_times_peak_times_id_seq;
DROP TABLE bookedscheduler.peak_times;
DROP SEQUENCE bookedscheduler.payment_transaction_log_payment_transaction_log_id_seq;
DROP TABLE bookedscheduler.payment_transaction_log;
DROP TABLE bookedscheduler.payment_gateway_settings;
DROP SEQUENCE bookedscheduler.payment_configuration_payment_configuration_id_seq;
DROP TABLE bookedscheduler.payment_configuration;
DROP SEQUENCE bookedscheduler.layouts_layout_id_seq;
DROP TABLE bookedscheduler.layouts;
DROP SEQUENCE bookedscheduler.groups_group_id_seq;
DROP TABLE bookedscheduler.groups;
DROP TABLE bookedscheduler.group_roles;
DROP TABLE bookedscheduler.group_resource_permissions;
DROP TABLE bookedscheduler.dbversion;
DROP SEQUENCE bookedscheduler.custom_time_blocks_custom_time_block_id_seq;
DROP TABLE bookedscheduler.custom_time_blocks;
DROP SEQUENCE bookedscheduler.custom_attributes_custom_attribute_id_seq;
DROP TABLE bookedscheduler.custom_attributes;
DROP SEQUENCE bookedscheduler.custom_attribute_values_custom_attribute_value_id_seq;
DROP TABLE bookedscheduler.custom_attribute_values;
DROP TABLE bookedscheduler.custom_attribute_entities;
DROP SEQUENCE bookedscheduler.credit_log_credit_log_id_seq;
DROP TABLE bookedscheduler.credit_log;
DROP TABLE bookedscheduler.blackout_series_resources;
DROP SEQUENCE bookedscheduler.blackout_series_blackout_series_id_seq;
DROP TABLE bookedscheduler.blackout_series;
DROP SEQUENCE bookedscheduler.blackout_instances_blackout_instance_id_seq;
DROP TABLE bookedscheduler.blackout_instances;
DROP SEQUENCE bookedscheduler.announcements_announcementid_seq;
DROP TABLE bookedscheduler.announcements;
DROP TABLE bookedscheduler.announcement_resources;
DROP TABLE bookedscheduler.announcement_groups;
DROP SEQUENCE bookedscheduler.account_activation_account_activation_id_seq;
DROP TABLE bookedscheduler.account_activation;
DROP SEQUENCE bookedscheduler.accessories_accessory_id_seq;
DROP TABLE bookedscheduler.accessories;
DROP FUNCTION public.timestampdiff(units character varying, start_t timestamp without time zone, end_t timestamp without time zone);
DROP FUNCTION public.find_in_set(str text, strlist text);
DROP FUNCTION bookedscheduler.on_update_current_timestamp_users();
DROP SCHEMA bookedscheduler;
--
-- Name: bookedscheduler; Type: SCHEMA; Schema: -; Owner: pgbs_user
--

CREATE SCHEMA bookedscheduler;


ALTER SCHEMA bookedscheduler OWNER TO pgbs_user;

--
-- Name: on_update_current_timestamp_users(); Type: FUNCTION; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE FUNCTION bookedscheduler.on_update_current_timestamp_users() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.last_modified = now();
   RETURN NEW;
END;
$$;


ALTER FUNCTION bookedscheduler.on_update_current_timestamp_users() OWNER TO pgbs_user;

--
-- Name: find_in_set(text, text); Type: FUNCTION; Schema: public; Owner: pgbs_user
--

CREATE FUNCTION public.find_in_set(str text, strlist text) RETURNS integer
    LANGUAGE sql STRICT
    AS $_$
SELECT i
   FROM generate_subscripts(string_to_array($2,','),1) g(i)
  WHERE (string_to_array($2, ','))[i] = $1
  UNION ALL
  SELECT 0
  LIMIT 1
$_$;


ALTER FUNCTION public.find_in_set(str text, strlist text) OWNER TO pgbs_user;

--
-- Name: timestampdiff(character varying, timestamp without time zone, timestamp without time zone); Type: FUNCTION; Schema: public; Owner: pgbs_user
--

CREATE FUNCTION public.timestampdiff(units character varying, start_t timestamp without time zone, end_t timestamp without time zone) RETURNS integer
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


ALTER FUNCTION public.timestampdiff(units character varying, start_t timestamp without time zone, end_t timestamp without time zone) OWNER TO pgbs_user;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accessories; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.accessories (
    accessory_id integer NOT NULL,
    accessory_name character varying(85) NOT NULL,
    accessory_quantity integer,
    legacyid character(16) DEFAULT NULL::bpchar
);


ALTER TABLE bookedscheduler.accessories OWNER TO pgbs_user;

--
-- Name: accessories_accessory_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.accessories_accessory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.accessories_accessory_id_seq OWNER TO pgbs_user;

--
-- Name: accessories_accessory_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.accessories_accessory_id_seq OWNED BY bookedscheduler.accessories.accessory_id;


--
-- Name: account_activation; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.account_activation (
    account_activation_id integer NOT NULL,
    user_id integer NOT NULL,
    activation_code character varying(30) NOT NULL,
    date_created timestamp with time zone NOT NULL
);


ALTER TABLE bookedscheduler.account_activation OWNER TO pgbs_user;

--
-- Name: account_activation_account_activation_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.account_activation_account_activation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.account_activation_account_activation_id_seq OWNER TO pgbs_user;

--
-- Name: account_activation_account_activation_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.account_activation_account_activation_id_seq OWNED BY bookedscheduler.account_activation.account_activation_id;


--
-- Name: announcement_groups; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.announcement_groups (
    announcementid integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE bookedscheduler.announcement_groups OWNER TO pgbs_user;

--
-- Name: announcement_resources; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.announcement_resources (
    announcementid integer NOT NULL,
    resource_id integer NOT NULL
);


ALTER TABLE bookedscheduler.announcement_resources OWNER TO pgbs_user;

--
-- Name: announcements; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.announcements (
    announcementid integer NOT NULL,
    announcement_text text NOT NULL,
    priority integer,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    display_page smallint DEFAULT 1 NOT NULL
);


ALTER TABLE bookedscheduler.announcements OWNER TO pgbs_user;

--
-- Name: announcements_announcementid_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.announcements_announcementid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.announcements_announcementid_seq OWNER TO pgbs_user;

--
-- Name: announcements_announcementid_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.announcements_announcementid_seq OWNED BY bookedscheduler.announcements.announcementid;


--
-- Name: blackout_instances; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.blackout_instances (
    blackout_instance_id bigint NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    series_id bigint NOT NULL
);


ALTER TABLE bookedscheduler.blackout_instances OWNER TO pgbs_user;

--
-- Name: blackout_instances_blackout_instance_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.blackout_instances_blackout_instance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.blackout_instances_blackout_instance_id_seq OWNER TO pgbs_user;

--
-- Name: blackout_instances_blackout_instance_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.blackout_instances_blackout_instance_id_seq OWNED BY bookedscheduler.blackout_instances.blackout_instance_id;


--
-- Name: blackout_series; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.blackout_series (
    series_id bigint NOT NULL,
    date_created timestamp with time zone NOT NULL,
    last_modified timestamp with time zone,
    title character varying(85) NOT NULL,
    description text,
    owner_id integer NOT NULL,
    legacyid character(16) DEFAULT NULL::bpchar,
    repeat_type character varying(10) DEFAULT NULL::character varying,
    repeat_options character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE bookedscheduler.blackout_series OWNER TO pgbs_user;

--
-- Name: blackout_series_blackout_series_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.blackout_series_blackout_series_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.blackout_series_blackout_series_id_seq OWNER TO pgbs_user;

--
-- Name: blackout_series_blackout_series_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.blackout_series_blackout_series_id_seq OWNED BY bookedscheduler.blackout_series.series_id;


--
-- Name: blackout_series_resources; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.blackout_series_resources (
    series_id bigint NOT NULL,
    resource_id integer NOT NULL
);


ALTER TABLE bookedscheduler.blackout_series_resources OWNER TO pgbs_user;

--
-- Name: credit_log; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.credit_log (
    credit_log_id bigint NOT NULL,
    user_id integer NOT NULL,
    original_credit_count numeric(7,2) DEFAULT NULL::numeric,
    credit_count numeric(7,2) DEFAULT NULL::numeric,
    credit_note character varying(1000) DEFAULT NULL::character varying,
    date_created timestamp with time zone NOT NULL
);


ALTER TABLE bookedscheduler.credit_log OWNER TO pgbs_user;

--
-- Name: credit_log_credit_log_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.credit_log_credit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.credit_log_credit_log_id_seq OWNER TO pgbs_user;

--
-- Name: credit_log_credit_log_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.credit_log_credit_log_id_seq OWNED BY bookedscheduler.credit_log.credit_log_id;


--
-- Name: custom_attribute_entities; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.custom_attribute_entities (
    custom_attribute_id integer NOT NULL,
    entity_id integer NOT NULL
);


ALTER TABLE bookedscheduler.custom_attribute_entities OWNER TO pgbs_user;

--
-- Name: custom_attribute_values; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.custom_attribute_values (
    custom_attribute_value_id integer NOT NULL,
    custom_attribute_id integer NOT NULL,
    attribute_value text NOT NULL,
    entity_id integer NOT NULL,
    attribute_category smallint NOT NULL
);


ALTER TABLE bookedscheduler.custom_attribute_values OWNER TO pgbs_user;

--
-- Name: custom_attribute_values_custom_attribute_value_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.custom_attribute_values_custom_attribute_value_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.custom_attribute_values_custom_attribute_value_id_seq OWNER TO pgbs_user;

--
-- Name: custom_attribute_values_custom_attribute_value_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.custom_attribute_values_custom_attribute_value_id_seq OWNED BY bookedscheduler.custom_attribute_values.custom_attribute_value_id;


--
-- Name: custom_attributes; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.custom_attributes (
    custom_attribute_id integer NOT NULL,
    display_label character varying(50) NOT NULL,
    display_type smallint NOT NULL,
    attribute_category smallint NOT NULL,
    validation_regex character varying(50) DEFAULT NULL::character varying,
    is_required boolean NOT NULL,
    possible_values text,
    sort_order smallint,
    admin_only boolean DEFAULT false NOT NULL,
    secondary_category smallint,
    secondary_entity_ids character varying(2000) DEFAULT NULL::character varying,
    is_private boolean DEFAULT (NOT NULL::boolean)
);


ALTER TABLE bookedscheduler.custom_attributes OWNER TO pgbs_user;

--
-- Name: custom_attributes_custom_attribute_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.custom_attributes_custom_attribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.custom_attributes_custom_attribute_id_seq OWNER TO pgbs_user;

--
-- Name: custom_attributes_custom_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.custom_attributes_custom_attribute_id_seq OWNED BY bookedscheduler.custom_attributes.custom_attribute_id;


--
-- Name: custom_time_blocks; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.custom_time_blocks (
    custom_time_block_id integer NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    layout_id integer NOT NULL
);


ALTER TABLE bookedscheduler.custom_time_blocks OWNER TO pgbs_user;

--
-- Name: custom_time_blocks_custom_time_block_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.custom_time_blocks_custom_time_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.custom_time_blocks_custom_time_block_id_seq OWNER TO pgbs_user;

--
-- Name: custom_time_blocks_custom_time_block_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.custom_time_blocks_custom_time_block_id_seq OWNED BY bookedscheduler.custom_time_blocks.custom_time_block_id;


--
-- Name: dbversion; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.dbversion (
    version_number double precision DEFAULT '0'::double precision NOT NULL,
    version_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE bookedscheduler.dbversion OWNER TO pgbs_user;

--
-- Name: group_resource_permissions; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.group_resource_permissions (
    group_id integer NOT NULL,
    resource_id integer NOT NULL,
    permission_type smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE bookedscheduler.group_resource_permissions OWNER TO pgbs_user;

--
-- Name: group_roles; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.group_roles (
    group_id integer NOT NULL,
    role_id smallint NOT NULL
);


ALTER TABLE bookedscheduler.group_roles OWNER TO pgbs_user;

--
-- Name: groups; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.groups (
    group_id integer NOT NULL,
    name character varying(85) NOT NULL,
    admin_group_id integer,
    legacyid character(16) DEFAULT NULL::bpchar,
    isdefault boolean DEFAULT false NOT NULL
);


ALTER TABLE bookedscheduler.groups OWNER TO pgbs_user;

--
-- Name: groups_group_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.groups_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.groups_group_id_seq OWNER TO pgbs_user;

--
-- Name: groups_group_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.groups_group_id_seq OWNED BY bookedscheduler.groups.group_id;


--
-- Name: layouts; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.layouts (
    layout_id integer NOT NULL,
    timezone character varying(50) NOT NULL,
    layout_type smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE bookedscheduler.layouts OWNER TO pgbs_user;

--
-- Name: layouts_layout_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.layouts_layout_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.layouts_layout_id_seq OWNER TO pgbs_user;

--
-- Name: layouts_layout_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.layouts_layout_id_seq OWNED BY bookedscheduler.layouts.layout_id;


--
-- Name: payment_configuration; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.payment_configuration (
    payment_configuration_id integer NOT NULL,
    credit_cost numeric(7,2) NOT NULL,
    credit_currency character varying(10) NOT NULL
);


ALTER TABLE bookedscheduler.payment_configuration OWNER TO pgbs_user;

--
-- Name: payment_configuration_payment_configuration_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.payment_configuration_payment_configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.payment_configuration_payment_configuration_id_seq OWNER TO pgbs_user;

--
-- Name: payment_configuration_payment_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.payment_configuration_payment_configuration_id_seq OWNED BY bookedscheduler.payment_configuration.payment_configuration_id;


--
-- Name: payment_gateway_settings; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.payment_gateway_settings (
    gateway_type character varying(255) NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value character varying(1000) NOT NULL
);


ALTER TABLE bookedscheduler.payment_gateway_settings OWNER TO pgbs_user;

--
-- Name: payment_transaction_log; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.payment_transaction_log (
    payment_transaction_log_id bigint NOT NULL,
    user_id integer NOT NULL,
    status character varying(255) NOT NULL,
    invoice_number character varying(50) DEFAULT NULL::character varying,
    transaction_id character varying(50) NOT NULL,
    subtotal_amount numeric(7,2) NOT NULL,
    tax_amount numeric(7,2) NOT NULL,
    total_amount numeric(7,2) NOT NULL,
    transaction_fee numeric(7,2) DEFAULT NULL::numeric,
    currency character varying(3) NOT NULL,
    transaction_href character varying(500) DEFAULT NULL::character varying,
    refund_href character varying(500) DEFAULT NULL::character varying,
    date_created timestamp with time zone NOT NULL,
    gateway_name character varying(100) NOT NULL,
    gateway_date_created character varying(25) NOT NULL,
    payment_response text
);


ALTER TABLE bookedscheduler.payment_transaction_log OWNER TO pgbs_user;

--
-- Name: payment_transaction_log_payment_transaction_log_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.payment_transaction_log_payment_transaction_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.payment_transaction_log_payment_transaction_log_id_seq OWNER TO pgbs_user;

--
-- Name: payment_transaction_log_payment_transaction_log_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.payment_transaction_log_payment_transaction_log_id_seq OWNED BY bookedscheduler.payment_transaction_log.payment_transaction_log_id;


--
-- Name: peak_times; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.peak_times (
    peak_times_id integer NOT NULL,
    schedule_id integer NOT NULL,
    all_day boolean NOT NULL,
    start_time character varying(10) DEFAULT NULL::character varying,
    end_time character varying(10) DEFAULT NULL::character varying,
    every_day boolean NOT NULL,
    peak_days character varying(13) DEFAULT NULL::character varying,
    all_year boolean NOT NULL,
    begin_month smallint NOT NULL,
    begin_day smallint NOT NULL,
    end_month smallint NOT NULL,
    end_day smallint NOT NULL
);


ALTER TABLE bookedscheduler.peak_times OWNER TO pgbs_user;

--
-- Name: peak_times_peak_times_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.peak_times_peak_times_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.peak_times_peak_times_id_seq OWNER TO pgbs_user;

--
-- Name: peak_times_peak_times_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.peak_times_peak_times_id_seq OWNED BY bookedscheduler.peak_times.peak_times_id;


--
-- Name: quotas; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.quotas (
    quota_id integer NOT NULL,
    quota_limit numeric(7,2) NOT NULL,
    unit character varying(25) NOT NULL,
    duration character varying(25) NOT NULL,
    resource_id integer,
    group_id integer,
    schedule_id integer,
    enforced_days character varying(15) DEFAULT NULL::character varying,
    enforced_time_start time without time zone,
    enforced_time_end time without time zone,
    scope character varying(25) DEFAULT NULL::character varying
);


ALTER TABLE bookedscheduler.quotas OWNER TO pgbs_user;

--
-- Name: quotas_quota_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.quotas_quota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.quotas_quota_id_seq OWNER TO pgbs_user;

--
-- Name: quotas_quota_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.quotas_quota_id_seq OWNED BY bookedscheduler.quotas.quota_id;


--
-- Name: refund_transaction_log; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.refund_transaction_log (
    refund_transaction_log_id bigint NOT NULL,
    payment_transaction_log_id bigint NOT NULL,
    status character varying(255) NOT NULL,
    transaction_id character varying(50) DEFAULT NULL::character varying,
    total_refund_amount numeric(7,2) NOT NULL,
    payment_refund_amount numeric(7,2) DEFAULT NULL::numeric,
    fee_refund_amount numeric(7,2) DEFAULT NULL::numeric,
    transaction_href character varying(500) DEFAULT NULL::character varying,
    date_created timestamp with time zone NOT NULL,
    gateway_date_created character varying(25) NOT NULL,
    refund_response text
);


ALTER TABLE bookedscheduler.refund_transaction_log OWNER TO pgbs_user;

--
-- Name: refund_transaction_log_refund_transaction_log_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.refund_transaction_log_refund_transaction_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.refund_transaction_log_refund_transaction_log_id_seq OWNER TO pgbs_user;

--
-- Name: refund_transaction_log_refund_transaction_log_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.refund_transaction_log_refund_transaction_log_id_seq OWNED BY bookedscheduler.refund_transaction_log.refund_transaction_log_id;


--
-- Name: reminders; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reminders (
    reminder_id bigint NOT NULL,
    user_id integer NOT NULL,
    address text NOT NULL,
    message text NOT NULL,
    sendtime timestamp with time zone NOT NULL,
    refnumber text NOT NULL
);


ALTER TABLE bookedscheduler.reminders OWNER TO pgbs_user;

--
-- Name: reminders_reminder_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.reminders_reminder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.reminders_reminder_id_seq OWNER TO pgbs_user;

--
-- Name: reminders_reminder_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.reminders_reminder_id_seq OWNED BY bookedscheduler.reminders.reminder_id;


--
-- Name: reservation_accessories; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_accessories (
    series_id bigint NOT NULL,
    accessory_id integer NOT NULL,
    quantity integer
);


ALTER TABLE bookedscheduler.reservation_accessories OWNER TO pgbs_user;

--
-- Name: reservation_color_rules; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_color_rules (
    reservation_color_rule_id integer NOT NULL,
    custom_attribute_id integer NOT NULL,
    attribute_type integer,
    required_value text,
    comparison_type integer,
    color character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE bookedscheduler.reservation_color_rules OWNER TO pgbs_user;

--
-- Name: reservation_color_rules_reservation_color_rule_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.reservation_color_rules_reservation_color_rule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.reservation_color_rules_reservation_color_rule_id_seq OWNER TO pgbs_user;

--
-- Name: reservation_color_rules_reservation_color_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.reservation_color_rules_reservation_color_rule_id_seq OWNED BY bookedscheduler.reservation_color_rules.reservation_color_rule_id;


--
-- Name: reservation_files; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_files (
    file_id bigint NOT NULL,
    series_id bigint NOT NULL,
    file_name character varying(250) NOT NULL,
    file_type character varying(75) DEFAULT NULL::character varying,
    file_size character varying(45) NOT NULL,
    file_extension character varying(10) NOT NULL
);


ALTER TABLE bookedscheduler.reservation_files OWNER TO pgbs_user;

--
-- Name: reservation_files_file_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.reservation_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.reservation_files_file_id_seq OWNER TO pgbs_user;

--
-- Name: reservation_files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.reservation_files_file_id_seq OWNED BY bookedscheduler.reservation_files.file_id;


--
-- Name: reservation_guests; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_guests (
    reservation_instance_id bigint NOT NULL,
    email character varying(255) NOT NULL,
    reservation_user_level smallint NOT NULL
);


ALTER TABLE bookedscheduler.reservation_guests OWNER TO pgbs_user;

--
-- Name: reservation_instances; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_instances (
    reservation_instance_id bigint NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    reference_number character varying(50) NOT NULL,
    series_id bigint NOT NULL,
    checkin_date timestamp with time zone,
    checkout_date timestamp with time zone,
    previous_end_date timestamp with time zone,
    credit_count numeric(7,2) DEFAULT NULL::numeric
);


ALTER TABLE bookedscheduler.reservation_instances OWNER TO pgbs_user;

--
-- Name: reservation_instances_reservation_instance_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.reservation_instances_reservation_instance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.reservation_instances_reservation_instance_id_seq OWNER TO pgbs_user;

--
-- Name: reservation_instances_reservation_instance_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.reservation_instances_reservation_instance_id_seq OWNED BY bookedscheduler.reservation_instances.reservation_instance_id;


--
-- Name: reservation_reminders; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_reminders (
    reminder_id bigint NOT NULL,
    series_id bigint NOT NULL,
    minutes_prior bigint NOT NULL,
    reminder_type smallint NOT NULL
);


ALTER TABLE bookedscheduler.reservation_reminders OWNER TO pgbs_user;

--
-- Name: reservation_reminders_reminder_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.reservation_reminders_reminder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.reservation_reminders_reminder_id_seq OWNER TO pgbs_user;

--
-- Name: reservation_reminders_reminder_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.reservation_reminders_reminder_id_seq OWNED BY bookedscheduler.reservation_reminders.reminder_id;


--
-- Name: reservation_resources; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_resources (
    series_id bigint NOT NULL,
    resource_id integer NOT NULL,
    resource_level_id smallint NOT NULL
);


ALTER TABLE bookedscheduler.reservation_resources OWNER TO pgbs_user;

--
-- Name: reservation_series; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_series (
    series_id bigint NOT NULL,
    date_created timestamp with time zone NOT NULL,
    last_modified timestamp with time zone,
    title character varying(300) DEFAULT NULL::character varying,
    description text,
    allow_participation boolean NOT NULL,
    allow_anon_participation boolean NOT NULL,
    type_id smallint NOT NULL,
    status_id smallint NOT NULL,
    repeat_type character varying(10) DEFAULT NULL::character varying,
    repeat_options character varying(255) DEFAULT NULL::character varying,
    owner_id integer NOT NULL,
    legacyid character(16) DEFAULT NULL::bpchar,
    last_action_by integer,
    terms_date_accepted timestamp with time zone
);


ALTER TABLE bookedscheduler.reservation_series OWNER TO pgbs_user;

--
-- Name: reservation_series_series_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.reservation_series_series_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.reservation_series_series_id_seq OWNER TO pgbs_user;

--
-- Name: reservation_series_series_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.reservation_series_series_id_seq OWNED BY bookedscheduler.reservation_series.series_id;


--
-- Name: reservation_statuses; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_statuses (
    status_id smallint NOT NULL,
    label character varying(85) NOT NULL
);


ALTER TABLE bookedscheduler.reservation_statuses OWNER TO pgbs_user;

--
-- Name: reservation_types; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_types (
    type_id smallint NOT NULL,
    label character varying(85) NOT NULL
);


ALTER TABLE bookedscheduler.reservation_types OWNER TO pgbs_user;

--
-- Name: reservation_users; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_users (
    reservation_instance_id bigint NOT NULL,
    user_id integer NOT NULL,
    reservation_user_level smallint NOT NULL
);


ALTER TABLE bookedscheduler.reservation_users OWNER TO pgbs_user;

--
-- Name: reservation_waitlist_requests; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.reservation_waitlist_requests (
    reservation_waitlist_request_id integer NOT NULL,
    user_id integer NOT NULL,
    resource_id integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone
);


ALTER TABLE bookedscheduler.reservation_waitlist_requests OWNER TO pgbs_user;

--
-- Name: reservation_waitlist_requests_reservation_waitlist_request__seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.reservation_waitlist_requests_reservation_waitlist_request__seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.reservation_waitlist_requests_reservation_waitlist_request__seq OWNER TO pgbs_user;

--
-- Name: reservation_waitlist_requests_reservation_waitlist_request__seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.reservation_waitlist_requests_reservation_waitlist_request__seq OWNED BY bookedscheduler.reservation_waitlist_requests.reservation_waitlist_request_id;


--
-- Name: resource_accessories; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.resource_accessories (
    resource_accessory_id integer NOT NULL,
    resource_id integer NOT NULL,
    accessory_id integer NOT NULL,
    minimum_quantity smallint,
    maximum_quantity smallint
);


ALTER TABLE bookedscheduler.resource_accessories OWNER TO pgbs_user;

--
-- Name: resource_accessories_resource_accessory_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.resource_accessories_resource_accessory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.resource_accessories_resource_accessory_id_seq OWNER TO pgbs_user;

--
-- Name: resource_accessories_resource_accessory_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.resource_accessories_resource_accessory_id_seq OWNED BY bookedscheduler.resource_accessories.resource_accessory_id;


--
-- Name: resource_group_assignment; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.resource_group_assignment (
    resource_group_id integer NOT NULL,
    resource_id integer NOT NULL
);


ALTER TABLE bookedscheduler.resource_group_assignment OWNER TO pgbs_user;

--
-- Name: resource_groups; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.resource_groups (
    resource_group_id integer NOT NULL,
    resource_group_name character varying(75) DEFAULT NULL::character varying,
    parent_id integer,
    public_id character varying(20) DEFAULT NULL::character varying
);


ALTER TABLE bookedscheduler.resource_groups OWNER TO pgbs_user;

--
-- Name: resource_groups_resource_group_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.resource_groups_resource_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.resource_groups_resource_group_id_seq OWNER TO pgbs_user;

--
-- Name: resource_groups_resource_group_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.resource_groups_resource_group_id_seq OWNED BY bookedscheduler.resource_groups.resource_group_id;


--
-- Name: resource_images; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.resource_images (
    resource_image_id integer NOT NULL,
    resource_id integer NOT NULL,
    image_name character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE bookedscheduler.resource_images OWNER TO pgbs_user;

--
-- Name: resource_images_resource_image_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.resource_images_resource_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.resource_images_resource_image_id_seq OWNER TO pgbs_user;

--
-- Name: resource_images_resource_image_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.resource_images_resource_image_id_seq OWNED BY bookedscheduler.resource_images.resource_image_id;


--
-- Name: resource_status_reasons; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.resource_status_reasons (
    resource_status_reason_id integer NOT NULL,
    status_id smallint NOT NULL,
    description character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE bookedscheduler.resource_status_reasons OWNER TO pgbs_user;

--
-- Name: resource_status_reasons_resource_status_reason_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.resource_status_reasons_resource_status_reason_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.resource_status_reasons_resource_status_reason_id_seq OWNER TO pgbs_user;

--
-- Name: resource_status_reasons_resource_status_reason_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.resource_status_reasons_resource_status_reason_id_seq OWNED BY bookedscheduler.resource_status_reasons.resource_status_reason_id;


--
-- Name: resource_type_assignment; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.resource_type_assignment (
    resource_id integer NOT NULL,
    resource_type_id integer NOT NULL
);


ALTER TABLE bookedscheduler.resource_type_assignment OWNER TO pgbs_user;

--
-- Name: resource_types; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.resource_types (
    resource_type_id integer NOT NULL,
    resource_type_name character varying(75) DEFAULT NULL::character varying,
    resource_type_description text
);


ALTER TABLE bookedscheduler.resource_types OWNER TO pgbs_user;

--
-- Name: resource_types_resource_type_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.resource_types_resource_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.resource_types_resource_type_id_seq OWNER TO pgbs_user;

--
-- Name: resource_types_resource_type_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.resource_types_resource_type_id_seq OWNED BY bookedscheduler.resource_types.resource_type_id;


--
-- Name: resources; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.resources (
    resource_id integer NOT NULL,
    name character varying(85) NOT NULL,
    location character varying(255) DEFAULT NULL::character varying,
    contact_info character varying(255) DEFAULT NULL::character varying,
    description text,
    notes text,
    min_duration bigint,
    min_increment bigint,
    max_duration bigint,
    unit_cost numeric(7,2) DEFAULT NULL::numeric,
    autoassign boolean DEFAULT true NOT NULL,
    requires_approval boolean NOT NULL,
    allow_multiday_reservations boolean DEFAULT true NOT NULL,
    max_participants integer,
    min_notice_time_add bigint,
    max_notice_time bigint,
    image_name character varying(50) DEFAULT NULL::character varying,
    schedule_id integer NOT NULL,
    legacyid character(16) DEFAULT NULL::bpchar,
    admin_group_id integer,
    public_id character varying(20) DEFAULT NULL::character varying,
    allow_calendar_subscription boolean DEFAULT false NOT NULL,
    sort_order integer,
    resource_type_id integer,
    status_id smallint DEFAULT '1'::smallint NOT NULL,
    resource_status_reason_id integer,
    buffer_time bigint,
    enable_check_in boolean DEFAULT false NOT NULL,
    auto_release_minutes integer,
    color character varying(10) DEFAULT NULL::character varying,
    allow_display boolean DEFAULT false NOT NULL,
    credit_count numeric(7,2) DEFAULT NULL::numeric,
    peak_credit_count numeric(7,2) DEFAULT NULL::numeric,
    min_notice_time_update bigint,
    min_notice_time_delete bigint,
    date_created timestamp with time zone,
    last_modified timestamp with time zone,
    additional_properties text
);


ALTER TABLE bookedscheduler.resources OWNER TO pgbs_user;

--
-- Name: resources_resource_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.resources_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.resources_resource_id_seq OWNER TO pgbs_user;

--
-- Name: resources_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.resources_resource_id_seq OWNED BY bookedscheduler.resources.resource_id;


--
-- Name: roles; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.roles (
    role_id smallint NOT NULL,
    name character varying(85) DEFAULT NULL::character varying,
    role_level smallint
);


ALTER TABLE bookedscheduler.roles OWNER TO pgbs_user;

--
-- Name: saved_reports; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.saved_reports (
    saved_report_id integer NOT NULL,
    report_name character varying(50) DEFAULT NULL::character varying,
    user_id integer NOT NULL,
    date_created timestamp with time zone NOT NULL,
    report_details character varying(500) NOT NULL
);


ALTER TABLE bookedscheduler.saved_reports OWNER TO pgbs_user;

--
-- Name: saved_reports_saved_report_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.saved_reports_saved_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.saved_reports_saved_report_id_seq OWNER TO pgbs_user;

--
-- Name: saved_reports_saved_report_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.saved_reports_saved_report_id_seq OWNED BY bookedscheduler.saved_reports.saved_report_id;


--
-- Name: schedules; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.schedules (
    schedule_id integer NOT NULL,
    name character varying(85) NOT NULL,
    isdefault boolean NOT NULL,
    weekdaystart smallint NOT NULL,
    daysvisible smallint DEFAULT '7'::smallint NOT NULL,
    layout_id integer NOT NULL,
    legacyid character(16) DEFAULT NULL::bpchar,
    public_id character varying(20) DEFAULT NULL::character varying,
    allow_calendar_subscription boolean DEFAULT false NOT NULL,
    admin_group_id integer,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    allow_concurrent_bookings boolean DEFAULT false NOT NULL,
    default_layout smallint DEFAULT '0'::smallint NOT NULL,
    total_concurrent_reservations integer DEFAULT 0 NOT NULL,
    max_resources_per_reservation integer DEFAULT 0 NOT NULL,
    additional_properties text
);


ALTER TABLE bookedscheduler.schedules OWNER TO pgbs_user;

--
-- Name: schedules_schedule_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.schedules_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.schedules_schedule_id_seq OWNER TO pgbs_user;

--
-- Name: schedules_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.schedules_schedule_id_seq OWNED BY bookedscheduler.schedules.schedule_id;


--
-- Name: terms_of_service; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.terms_of_service (
    terms_of_service_id bigint NOT NULL,
    terms_text text,
    terms_url character varying(255) DEFAULT NULL::character varying,
    terms_file character varying(50) DEFAULT NULL::character varying,
    applicability character varying(50) DEFAULT NULL::character varying,
    date_created timestamp with time zone NOT NULL
);


ALTER TABLE bookedscheduler.terms_of_service OWNER TO pgbs_user;

--
-- Name: terms_of_service_terms_of_service_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.terms_of_service_terms_of_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.terms_of_service_terms_of_service_id_seq OWNER TO pgbs_user;

--
-- Name: terms_of_service_terms_of_service_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.terms_of_service_terms_of_service_id_seq OWNED BY bookedscheduler.terms_of_service.terms_of_service_id;


--
-- Name: time_blocks; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.time_blocks (
    block_id integer NOT NULL,
    label character varying(85) DEFAULT NULL::character varying,
    end_label character varying(85) DEFAULT NULL::character varying,
    availability_code smallint NOT NULL,
    layout_id integer NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    day_of_week integer
);


ALTER TABLE bookedscheduler.time_blocks OWNER TO pgbs_user;

--
-- Name: time_blocks_block_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.time_blocks_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.time_blocks_block_id_seq OWNER TO pgbs_user;

--
-- Name: time_blocks_block_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.time_blocks_block_id_seq OWNED BY bookedscheduler.time_blocks.block_id;


--
-- Name: user_email_preferences; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.user_email_preferences (
    user_id integer NOT NULL,
    event_category character varying(45) NOT NULL,
    event_type character varying(45) NOT NULL
);


ALTER TABLE bookedscheduler.user_email_preferences OWNER TO pgbs_user;

--
-- Name: user_groups; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.user_groups (
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE bookedscheduler.user_groups OWNER TO pgbs_user;

--
-- Name: user_preferences; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.user_preferences (
    user_preferences_id bigint NOT NULL,
    user_id integer NOT NULL,
    name character varying(100) NOT NULL,
    value text
);


ALTER TABLE bookedscheduler.user_preferences OWNER TO pgbs_user;

--
-- Name: user_preferences_user_preferences_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.user_preferences_user_preferences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.user_preferences_user_preferences_id_seq OWNER TO pgbs_user;

--
-- Name: user_preferences_user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.user_preferences_user_preferences_id_seq OWNED BY bookedscheduler.user_preferences.user_preferences_id;


--
-- Name: user_resource_permissions; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.user_resource_permissions (
    user_id integer NOT NULL,
    resource_id integer NOT NULL,
    permission_id smallint DEFAULT '1'::smallint NOT NULL,
    permission_type smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE bookedscheduler.user_resource_permissions OWNER TO pgbs_user;

--
-- Name: user_session; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.user_session (
    user_session_id integer NOT NULL,
    user_id integer NOT NULL,
    last_modified timestamp with time zone NOT NULL,
    session_token character varying(50) NOT NULL,
    user_session_value text NOT NULL
);


ALTER TABLE bookedscheduler.user_session OWNER TO pgbs_user;

--
-- Name: user_session_user_session_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.user_session_user_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.user_session_user_session_id_seq OWNER TO pgbs_user;

--
-- Name: user_session_user_session_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.user_session_user_session_id_seq OWNED BY bookedscheduler.user_session.user_session_id;


--
-- Name: user_statuses; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.user_statuses (
    status_id smallint NOT NULL,
    description character varying(85) DEFAULT NULL::character varying
);


ALTER TABLE bookedscheduler.user_statuses OWNER TO pgbs_user;

--
-- Name: users; Type: TABLE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TABLE bookedscheduler.users (
    user_id integer NOT NULL,
    fname character varying(85) DEFAULT NULL::character varying,
    lname character varying(85) DEFAULT NULL::character varying,
    username character varying(85) DEFAULT NULL::character varying,
    email character varying(85) NOT NULL,
    password character varying(85) NOT NULL,
    salt character varying(85) NOT NULL,
    organization character varying(85) DEFAULT NULL::character varying,
    "position" character varying(85) DEFAULT NULL::character varying,
    phone character varying(85) DEFAULT NULL::character varying,
    timezone character varying(85) NOT NULL,
    language character varying(10) NOT NULL,
    homepageid smallint DEFAULT '1'::smallint NOT NULL,
    date_created timestamp with time zone NOT NULL,
    last_modified timestamp with time zone,
    lastlogin timestamp with time zone,
    status_id smallint NOT NULL,
    legacyid character(16) DEFAULT NULL::bpchar,
    legacypassword character varying(32) DEFAULT NULL::character varying,
    public_id character varying(20) DEFAULT NULL::character varying,
    allow_calendar_subscription boolean DEFAULT false NOT NULL,
    default_schedule_id integer,
    credit_count numeric(7,2) DEFAULT 0.00,
    terms_date_accepted timestamp with time zone
);


ALTER TABLE bookedscheduler.users OWNER TO pgbs_user;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE SEQUENCE bookedscheduler.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookedscheduler.users_user_id_seq OWNER TO pgbs_user;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER SEQUENCE bookedscheduler.users_user_id_seq OWNED BY bookedscheduler.users.user_id;


--
-- Name: accessories accessory_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.accessories ALTER COLUMN accessory_id SET DEFAULT nextval('bookedscheduler.accessories_accessory_id_seq'::regclass);


--
-- Name: account_activation account_activation_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.account_activation ALTER COLUMN account_activation_id SET DEFAULT nextval('bookedscheduler.account_activation_account_activation_id_seq'::regclass);


--
-- Name: announcements announcementid; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.announcements ALTER COLUMN announcementid SET DEFAULT nextval('bookedscheduler.announcements_announcementid_seq'::regclass);


--
-- Name: blackout_instances blackout_instance_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.blackout_instances ALTER COLUMN blackout_instance_id SET DEFAULT nextval('bookedscheduler.blackout_instances_blackout_instance_id_seq'::regclass);


--
-- Name: blackout_series series_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.blackout_series ALTER COLUMN series_id SET DEFAULT nextval('bookedscheduler.blackout_series_blackout_series_id_seq'::regclass);


--
-- Name: credit_log credit_log_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.credit_log ALTER COLUMN credit_log_id SET DEFAULT nextval('bookedscheduler.credit_log_credit_log_id_seq'::regclass);


--
-- Name: custom_attribute_values custom_attribute_value_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_attribute_values ALTER COLUMN custom_attribute_value_id SET DEFAULT nextval('bookedscheduler.custom_attribute_values_custom_attribute_value_id_seq'::regclass);


--
-- Name: custom_attributes custom_attribute_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_attributes ALTER COLUMN custom_attribute_id SET DEFAULT nextval('bookedscheduler.custom_attributes_custom_attribute_id_seq'::regclass);


--
-- Name: custom_time_blocks custom_time_block_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_time_blocks ALTER COLUMN custom_time_block_id SET DEFAULT nextval('bookedscheduler.custom_time_blocks_custom_time_block_id_seq'::regclass);


--
-- Name: groups group_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.groups ALTER COLUMN group_id SET DEFAULT nextval('bookedscheduler.groups_group_id_seq'::regclass);


--
-- Name: layouts layout_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.layouts ALTER COLUMN layout_id SET DEFAULT nextval('bookedscheduler.layouts_layout_id_seq'::regclass);


--
-- Name: payment_configuration payment_configuration_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.payment_configuration ALTER COLUMN payment_configuration_id SET DEFAULT nextval('bookedscheduler.payment_configuration_payment_configuration_id_seq'::regclass);


--
-- Name: payment_transaction_log payment_transaction_log_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.payment_transaction_log ALTER COLUMN payment_transaction_log_id SET DEFAULT nextval('bookedscheduler.payment_transaction_log_payment_transaction_log_id_seq'::regclass);


--
-- Name: peak_times peak_times_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.peak_times ALTER COLUMN peak_times_id SET DEFAULT nextval('bookedscheduler.peak_times_peak_times_id_seq'::regclass);


--
-- Name: quotas quota_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.quotas ALTER COLUMN quota_id SET DEFAULT nextval('bookedscheduler.quotas_quota_id_seq'::regclass);


--
-- Name: refund_transaction_log refund_transaction_log_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.refund_transaction_log ALTER COLUMN refund_transaction_log_id SET DEFAULT nextval('bookedscheduler.refund_transaction_log_refund_transaction_log_id_seq'::regclass);


--
-- Name: reminders reminder_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reminders ALTER COLUMN reminder_id SET DEFAULT nextval('bookedscheduler.reminders_reminder_id_seq'::regclass);


--
-- Name: reservation_color_rules reservation_color_rule_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_color_rules ALTER COLUMN reservation_color_rule_id SET DEFAULT nextval('bookedscheduler.reservation_color_rules_reservation_color_rule_id_seq'::regclass);


--
-- Name: reservation_files file_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_files ALTER COLUMN file_id SET DEFAULT nextval('bookedscheduler.reservation_files_file_id_seq'::regclass);


--
-- Name: reservation_instances reservation_instance_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_instances ALTER COLUMN reservation_instance_id SET DEFAULT nextval('bookedscheduler.reservation_instances_reservation_instance_id_seq'::regclass);


--
-- Name: reservation_reminders reminder_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_reminders ALTER COLUMN reminder_id SET DEFAULT nextval('bookedscheduler.reservation_reminders_reminder_id_seq'::regclass);


--
-- Name: reservation_series series_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_series ALTER COLUMN series_id SET DEFAULT nextval('bookedscheduler.reservation_series_series_id_seq'::regclass);


--
-- Name: reservation_waitlist_requests reservation_waitlist_request_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_waitlist_requests ALTER COLUMN reservation_waitlist_request_id SET DEFAULT nextval('bookedscheduler.reservation_waitlist_requests_reservation_waitlist_request__seq'::regclass);


--
-- Name: resource_accessories resource_accessory_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_accessories ALTER COLUMN resource_accessory_id SET DEFAULT nextval('bookedscheduler.resource_accessories_resource_accessory_id_seq'::regclass);


--
-- Name: resource_groups resource_group_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_groups ALTER COLUMN resource_group_id SET DEFAULT nextval('bookedscheduler.resource_groups_resource_group_id_seq'::regclass);


--
-- Name: resource_images resource_image_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_images ALTER COLUMN resource_image_id SET DEFAULT nextval('bookedscheduler.resource_images_resource_image_id_seq'::regclass);


--
-- Name: resource_status_reasons resource_status_reason_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_status_reasons ALTER COLUMN resource_status_reason_id SET DEFAULT nextval('bookedscheduler.resource_status_reasons_resource_status_reason_id_seq'::regclass);


--
-- Name: resource_types resource_type_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_types ALTER COLUMN resource_type_id SET DEFAULT nextval('bookedscheduler.resource_types_resource_type_id_seq'::regclass);


--
-- Name: resources resource_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resources ALTER COLUMN resource_id SET DEFAULT nextval('bookedscheduler.resources_resource_id_seq'::regclass);


--
-- Name: saved_reports saved_report_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.saved_reports ALTER COLUMN saved_report_id SET DEFAULT nextval('bookedscheduler.saved_reports_saved_report_id_seq'::regclass);


--
-- Name: schedules schedule_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.schedules ALTER COLUMN schedule_id SET DEFAULT nextval('bookedscheduler.schedules_schedule_id_seq'::regclass);


--
-- Name: terms_of_service terms_of_service_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.terms_of_service ALTER COLUMN terms_of_service_id SET DEFAULT nextval('bookedscheduler.terms_of_service_terms_of_service_id_seq'::regclass);


--
-- Name: time_blocks block_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.time_blocks ALTER COLUMN block_id SET DEFAULT nextval('bookedscheduler.time_blocks_block_id_seq'::regclass);


--
-- Name: user_preferences user_preferences_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_preferences ALTER COLUMN user_preferences_id SET DEFAULT nextval('bookedscheduler.user_preferences_user_preferences_id_seq'::regclass);


--
-- Name: user_session user_session_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_session ALTER COLUMN user_session_id SET DEFAULT nextval('bookedscheduler.user_session_user_session_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.users ALTER COLUMN user_id SET DEFAULT nextval('bookedscheduler.users_user_id_seq'::regclass);


--
-- Data for Name: accessories; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.accessories (accessory_id, accessory_name, accessory_quantity, legacyid) FROM stdin;
1	accessory limited to 10	10	\N
2	accessory limited to 2	2	\N
3	unlimited accessory	\N	\N
\.


--
-- Data for Name: account_activation; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.account_activation (account_activation_id, user_id, activation_code, date_created) FROM stdin;
\.


--
-- Data for Name: announcement_groups; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.announcement_groups (announcementid, group_id) FROM stdin;
\.


--
-- Data for Name: announcement_resources; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.announcement_resources (announcementid, resource_id) FROM stdin;
\.


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.announcements (announcementid, announcement_text, priority, start_date, end_date, display_page) FROM stdin;
\.


--
-- Data for Name: blackout_instances; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.blackout_instances (blackout_instance_id, start_date, end_date, series_id) FROM stdin;
\.


--
-- Data for Name: blackout_series; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.blackout_series (series_id, date_created, last_modified, title, description, owner_id, legacyid, repeat_type, repeat_options) FROM stdin;
\.


--
-- Data for Name: blackout_series_resources; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.blackout_series_resources (series_id, resource_id) FROM stdin;
\.


--
-- Data for Name: credit_log; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.credit_log (credit_log_id, user_id, original_credit_count, credit_count, credit_note, date_created) FROM stdin;
\.


--
-- Data for Name: custom_attribute_entities; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.custom_attribute_entities (custom_attribute_id, entity_id) FROM stdin;
\.


--
-- Data for Name: custom_attribute_values; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.custom_attribute_values (custom_attribute_value_id, custom_attribute_id, attribute_value, entity_id, attribute_category) FROM stdin;
\.


--
-- Data for Name: custom_attributes; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.custom_attributes (custom_attribute_id, display_label, display_type, attribute_category, validation_regex, is_required, possible_values, sort_order, admin_only, secondary_category, secondary_entity_ids, is_private) FROM stdin;
1	Test Number	1	1	\N	f	\N	\N	f	\N	\N	f
2	Test String	1	1	\N	f	\N	\N	f	\N	\N	f
3	Test Number	1	4	\N	f	\N	\N	f	\N	\N	f
4	Test String	1	4	\N	f	\N	\N	f	\N	\N	f
\.


--
-- Data for Name: custom_time_blocks; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.custom_time_blocks (custom_time_block_id, start_time, end_time, layout_id) FROM stdin;
\.


--
-- Data for Name: dbversion; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.dbversion (version_number, version_date) FROM stdin;
2.10000000000000009	2021-01-09 21:06:22-05
2.20000000000000018	2021-01-09 21:08:53-05
2.29999999999999982	2021-01-09 21:09:35-05
2.39999999999999991	2021-01-09 21:10:21-05
2.5	2021-01-09 21:12:32-05
2.60000000000000009	2021-01-09 21:15:35-05
2.70000000000000018	2021-01-09 21:18:27-05
2.79999999999999982	2021-01-09 21:18:31-05
\.


--
-- Data for Name: group_resource_permissions; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.group_resource_permissions (group_id, resource_id, permission_type) FROM stdin;
\.


--
-- Data for Name: group_roles; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.group_roles (group_id, role_id) FROM stdin;
1	1
2	2
4	4
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.groups (group_id, name, admin_group_id, legacyid, isdefault) FROM stdin;
1	Group Administrators	\N	\N	f
2	Application Administrators	\N	\N	f
3	Resource Administrators	\N	\N	f
4	Schedule Administrators	\N	\N	f
\.


--
-- Data for Name: layouts; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.layouts (layout_id, timezone, layout_type) FROM stdin;
8	America/Bogota	0
\.


--
-- Data for Name: payment_configuration; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.payment_configuration (payment_configuration_id, credit_cost, credit_currency) FROM stdin;
1	0.00	USD
\.


--
-- Data for Name: payment_gateway_settings; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.payment_gateway_settings (gateway_type, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: payment_transaction_log; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.payment_transaction_log (payment_transaction_log_id, user_id, status, invoice_number, transaction_id, subtotal_amount, tax_amount, total_amount, transaction_fee, currency, transaction_href, refund_href, date_created, gateway_name, gateway_date_created, payment_response) FROM stdin;
\.


--
-- Data for Name: peak_times; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.peak_times (peak_times_id, schedule_id, all_day, start_time, end_time, every_day, peak_days, all_year, begin_month, begin_day, end_month, end_day) FROM stdin;
3	1	t			t		t	0	0	0	0
\.


--
-- Data for Name: quotas; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.quotas (quota_id, quota_limit, unit, duration, resource_id, group_id, schedule_id, enforced_days, enforced_time_start, enforced_time_end, scope) FROM stdin;
\.


--
-- Data for Name: refund_transaction_log; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.refund_transaction_log (refund_transaction_log_id, payment_transaction_log_id, status, transaction_id, total_refund_amount, payment_refund_amount, fee_refund_amount, transaction_href, date_created, gateway_date_created, refund_response) FROM stdin;
\.


--
-- Data for Name: reminders; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reminders (reminder_id, user_id, address, message, sendtime, refnumber) FROM stdin;
\.


--
-- Data for Name: reservation_accessories; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_accessories (series_id, accessory_id, quantity) FROM stdin;
\.


--
-- Data for Name: reservation_color_rules; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_color_rules (reservation_color_rule_id, custom_attribute_id, attribute_type, required_value, comparison_type, color) FROM stdin;
\.


--
-- Data for Name: reservation_files; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_files (file_id, series_id, file_name, file_type, file_size, file_extension) FROM stdin;
\.


--
-- Data for Name: reservation_guests; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_guests (reservation_instance_id, email, reservation_user_level) FROM stdin;
\.


--
-- Data for Name: reservation_instances; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_instances (reservation_instance_id, start_date, end_date, reference_number, series_id, checkin_date, checkout_date, previous_end_date, credit_count) FROM stdin;
\.


--
-- Data for Name: reservation_reminders; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_reminders (reminder_id, series_id, minutes_prior, reminder_type) FROM stdin;
\.


--
-- Data for Name: reservation_resources; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_resources (series_id, resource_id, resource_level_id) FROM stdin;
\.


--
-- Data for Name: reservation_series; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_series (series_id, date_created, last_modified, title, description, allow_participation, allow_anon_participation, type_id, status_id, repeat_type, repeat_options, owner_id, legacyid, last_action_by, terms_date_accepted) FROM stdin;
\.


--
-- Data for Name: reservation_statuses; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_statuses (status_id, label) FROM stdin;
1	Created
2	Deleted
3	Pending
\.


--
-- Data for Name: reservation_types; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_types (type_id, label) FROM stdin;
1	Reservation
2	Blackout
\.


--
-- Data for Name: reservation_users; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_users (reservation_instance_id, user_id, reservation_user_level) FROM stdin;
\.


--
-- Data for Name: reservation_waitlist_requests; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.reservation_waitlist_requests (reservation_waitlist_request_id, user_id, resource_id, start_date, end_date) FROM stdin;
\.


--
-- Data for Name: resource_accessories; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.resource_accessories (resource_accessory_id, resource_id, accessory_id, minimum_quantity, maximum_quantity) FROM stdin;
\.


--
-- Data for Name: resource_group_assignment; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.resource_group_assignment (resource_group_id, resource_id) FROM stdin;
\.


--
-- Data for Name: resource_groups; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.resource_groups (resource_group_id, resource_group_name, parent_id, public_id) FROM stdin;
\.


--
-- Data for Name: resource_images; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.resource_images (resource_image_id, resource_id, image_name) FROM stdin;
\.


--
-- Data for Name: resource_status_reasons; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.resource_status_reasons (resource_status_reason_id, status_id, description) FROM stdin;
\.


--
-- Data for Name: resource_type_assignment; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.resource_type_assignment (resource_id, resource_type_id) FROM stdin;
\.


--
-- Data for Name: resource_types; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.resource_types (resource_type_id, resource_type_name, resource_type_description) FROM stdin;
\.


--
-- Data for Name: resources; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.resources (resource_id, name, location, contact_info, description, notes, min_duration, min_increment, max_duration, unit_cost, autoassign, requires_approval, allow_multiday_reservations, max_participants, min_notice_time_add, max_notice_time, image_name, schedule_id, legacyid, admin_group_id, public_id, allow_calendar_subscription, sort_order, resource_type_id, status_id, resource_status_reason_id, buffer_time, enable_check_in, auto_release_minutes, color, allow_display, credit_count, peak_credit_count, min_notice_time_update, min_notice_time_delete, date_created, last_modified, additional_properties) FROM stdin;
1	Conference Room 1	\N	\N	\N	\N	\N	\N	\N	\N	t	f	t	\N	\N	\N	\N	1	\N	\N	\N	f	0	\N	1	\N	\N	f	\N		f	0.00	0.00	\N	\N	\N	2021-01-25 05:30:14-05	{"MaxConcurrentReservations":1}
2	Conference Room 2	\N	\N	\N	\N	\N	\N	\N	\N	t	f	t	\N	\N	\N	\N	1	\N	\N	\N	f	1	\N	1	\N	\N	f	\N		f	0.00	0.00	\N	\N	\N	2021-01-25 05:29:01-05	{"MaxConcurrentReservations":1}
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.roles (role_id, name, role_level) FROM stdin;
1	Group Admin	1
2	Application Admin	2
3	Resource Admin	3
4	Schedule Admin	4
\.


--
-- Data for Name: saved_reports; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.saved_reports (saved_report_id, report_name, user_id, date_created, report_details) FROM stdin;
\.


--
-- Data for Name: schedules; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.schedules (schedule_id, name, isdefault, weekdaystart, daysvisible, layout_id, legacyid, public_id, allow_calendar_subscription, admin_group_id, start_date, end_date, allow_concurrent_bookings, default_layout, total_concurrent_reservations, max_resources_per_reservation, additional_properties) FROM stdin;
1	Default	t	0	7	8	\N	d467d15c4ad35ec87141	f	\N	\N	\N	f	0	0	0	\N
\.


--
-- Data for Name: terms_of_service; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.terms_of_service (terms_of_service_id, terms_text, terms_url, terms_file, applicability, date_created) FROM stdin;
\.


--
-- Data for Name: time_blocks; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.time_blocks (block_id, label, end_label, availability_code, layout_id, start_time, end_time, day_of_week) FROM stdin;
56	\N	\N	1	8	00:00:00	00:00:00	\N
\.


--
-- Data for Name: user_email_preferences; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.user_email_preferences (user_id, event_category, event_type) FROM stdin;
\.


--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.user_groups (user_id, group_id) FROM stdin;
2	2
\.


--
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.user_preferences (user_preferences_id, user_id, name, value) FROM stdin;
121	2	CalendarFilter	||
122	2	ReportColumns	Resource!s!Duration
\.


--
-- Data for Name: user_resource_permissions; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.user_resource_permissions (user_id, resource_id, permission_id, permission_type) FROM stdin;
1	1	1	0
1	2	1	0
2	1	1	0
2	2	1	0
\.


--
-- Data for Name: user_session; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.user_session (user_session_id, user_id, last_modified, session_token, user_session_value) FROM stdin;
\.


--
-- Data for Name: user_statuses; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.user_statuses (status_id, description) FROM stdin;
1	Active
2	Awaiting
3	Inactive
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: bookedscheduler; Owner: pgbs_user
--

COPY bookedscheduler.users (user_id, fname, lname, username, email, password, salt, organization, "position", phone, timezone, language, homepageid, date_created, last_modified, lastlogin, status_id, legacyid, legacypassword, public_id, allow_calendar_subscription, default_schedule_id, credit_count, terms_date_accepted) FROM stdin;
1	User	User	user	user@example.com	7b6aec38ff9b7650d64d0374194307bdde711425	3b3dbb9b	XYZ Org Inc.	\N	\N	America/Bogota	en_us	1	2021-01-09 21:40:26-05	2021-01-09 21:40:26-05	2008-09-16 01:59:00-05	1	\N	\N	\N	f	\N	0.00	\N
2	Admin	Admin	admin	admin@example.com	b8df4d894200901d2d9f20d27c9616519b69e40e	60ba6411	ABC Org Inc.	\N	\N	America/Bogota	en_us	1	2021-01-09 21:40:26-05	2021-01-25 17:48:53.509826-05	2021-01-25 22:48:53-05	1	\N	\N	e66d40dc533e62758f98	t	\N	0.00	\N
\.


--
-- Name: accessories_accessory_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.accessories_accessory_id_seq', 3, true);


--
-- Name: account_activation_account_activation_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.account_activation_account_activation_id_seq', 1, true);


--
-- Name: announcements_announcementid_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.announcements_announcementid_seq', 1, true);


--
-- Name: blackout_instances_blackout_instance_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.blackout_instances_blackout_instance_id_seq', 1, true);


--
-- Name: blackout_series_blackout_series_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.blackout_series_blackout_series_id_seq', 1, true);


--
-- Name: credit_log_credit_log_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.credit_log_credit_log_id_seq', 2, true);


--
-- Name: custom_attribute_values_custom_attribute_value_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.custom_attribute_values_custom_attribute_value_id_seq', 10, true);


--
-- Name: custom_attributes_custom_attribute_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.custom_attributes_custom_attribute_id_seq', 5, true);


--
-- Name: custom_time_blocks_custom_time_block_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.custom_time_blocks_custom_time_block_id_seq', 1, true);


--
-- Name: groups_group_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.groups_group_id_seq', 4, true);


--
-- Name: layouts_layout_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.layouts_layout_id_seq', 8, true);


--
-- Name: payment_configuration_payment_configuration_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.payment_configuration_payment_configuration_id_seq', 1, true);


--
-- Name: payment_transaction_log_payment_transaction_log_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.payment_transaction_log_payment_transaction_log_id_seq', 1, true);


--
-- Name: peak_times_peak_times_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.peak_times_peak_times_id_seq', 3, true);


--
-- Name: quotas_quota_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.quotas_quota_id_seq', 1, true);


--
-- Name: refund_transaction_log_refund_transaction_log_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.refund_transaction_log_refund_transaction_log_id_seq', 1, true);


--
-- Name: reminders_reminder_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.reminders_reminder_id_seq', 1, true);


--
-- Name: reservation_color_rules_reservation_color_rule_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.reservation_color_rules_reservation_color_rule_id_seq', 1, true);


--
-- Name: reservation_files_file_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.reservation_files_file_id_seq', 1, true);


--
-- Name: reservation_instances_reservation_instance_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.reservation_instances_reservation_instance_id_seq', 5, true);


--
-- Name: reservation_reminders_reminder_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.reservation_reminders_reminder_id_seq', 2, true);


--
-- Name: reservation_series_series_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.reservation_series_series_id_seq', 5, true);


--
-- Name: reservation_waitlist_requests_reservation_waitlist_request__seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.reservation_waitlist_requests_reservation_waitlist_request__seq', 1, true);


--
-- Name: resource_accessories_resource_accessory_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.resource_accessories_resource_accessory_id_seq', 1, true);


--
-- Name: resource_groups_resource_group_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.resource_groups_resource_group_id_seq', 1, true);


--
-- Name: resource_images_resource_image_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.resource_images_resource_image_id_seq', 1, true);


--
-- Name: resource_status_reasons_resource_status_reason_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.resource_status_reasons_resource_status_reason_id_seq', 1, true);


--
-- Name: resource_types_resource_type_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.resource_types_resource_type_id_seq', 1, true);


--
-- Name: resources_resource_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.resources_resource_id_seq', 2, true);


--
-- Name: saved_reports_saved_report_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.saved_reports_saved_report_id_seq', 1, true);


--
-- Name: schedules_schedule_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.schedules_schedule_id_seq', 1, true);


--
-- Name: terms_of_service_terms_of_service_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.terms_of_service_terms_of_service_id_seq', 1, true);


--
-- Name: time_blocks_block_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.time_blocks_block_id_seq', 56, true);


--
-- Name: user_preferences_user_preferences_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.user_preferences_user_preferences_id_seq', 122, true);


--
-- Name: user_session_user_session_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.user_session_user_session_id_seq', 1, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: bookedscheduler; Owner: pgbs_user
--

SELECT pg_catalog.setval('bookedscheduler.users_user_id_seq', 4, true);


--
-- Name: accessories idx_39912_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.accessories
    ADD CONSTRAINT idx_39912_primary PRIMARY KEY (accessory_id);


--
-- Name: account_activation idx_39919_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.account_activation
    ADD CONSTRAINT idx_39919_primary PRIMARY KEY (account_activation_id);


--
-- Name: announcements idx_39925_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.announcements
    ADD CONSTRAINT idx_39925_primary PRIMARY KEY (announcementid);


--
-- Name: announcement_groups idx_39933_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.announcement_groups
    ADD CONSTRAINT idx_39933_primary PRIMARY KEY (announcementid, group_id);


--
-- Name: announcement_resources idx_39936_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.announcement_resources
    ADD CONSTRAINT idx_39936_primary PRIMARY KEY (announcementid, resource_id);


--
-- Name: blackout_instances idx_39941_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.blackout_instances
    ADD CONSTRAINT idx_39941_primary PRIMARY KEY (blackout_instance_id);


--
-- Name: blackout_series idx_39947_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.blackout_series
    ADD CONSTRAINT idx_39947_primary PRIMARY KEY (series_id);


--
-- Name: blackout_series_resources idx_39957_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.blackout_series_resources
    ADD CONSTRAINT idx_39957_primary PRIMARY KEY (series_id, resource_id);


--
-- Name: credit_log idx_39962_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.credit_log
    ADD CONSTRAINT idx_39962_primary PRIMARY KEY (credit_log_id);


--
-- Name: custom_attributes idx_39974_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_attributes
    ADD CONSTRAINT idx_39974_primary PRIMARY KEY (custom_attribute_id);


--
-- Name: custom_attribute_entities idx_39983_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_attribute_entities
    ADD CONSTRAINT idx_39983_primary PRIMARY KEY (custom_attribute_id, entity_id);


--
-- Name: custom_attribute_values idx_39988_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_attribute_values
    ADD CONSTRAINT idx_39988_primary PRIMARY KEY (custom_attribute_value_id);


--
-- Name: custom_time_blocks idx_39997_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_time_blocks
    ADD CONSTRAINT idx_39997_primary PRIMARY KEY (custom_time_block_id);


--
-- Name: groups idx_40008_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.groups
    ADD CONSTRAINT idx_40008_primary PRIMARY KEY (group_id);


--
-- Name: group_resource_permissions idx_40014_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.group_resource_permissions
    ADD CONSTRAINT idx_40014_primary PRIMARY KEY (group_id, resource_id);


--
-- Name: group_roles idx_40018_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.group_roles
    ADD CONSTRAINT idx_40018_primary PRIMARY KEY (group_id, role_id);


--
-- Name: layouts idx_40023_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.layouts
    ADD CONSTRAINT idx_40023_primary PRIMARY KEY (layout_id);


--
-- Name: payment_configuration idx_40030_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.payment_configuration
    ADD CONSTRAINT idx_40030_primary PRIMARY KEY (payment_configuration_id);


--
-- Name: payment_gateway_settings idx_40034_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.payment_gateway_settings
    ADD CONSTRAINT idx_40034_primary PRIMARY KEY (gateway_type, setting_name);


--
-- Name: payment_transaction_log idx_40042_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.payment_transaction_log
    ADD CONSTRAINT idx_40042_primary PRIMARY KEY (payment_transaction_log_id);


--
-- Name: peak_times idx_40055_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.peak_times
    ADD CONSTRAINT idx_40055_primary PRIMARY KEY (peak_times_id);


--
-- Name: quotas idx_40064_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.quotas
    ADD CONSTRAINT idx_40064_primary PRIMARY KEY (quota_id);


--
-- Name: refund_transaction_log idx_40072_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.refund_transaction_log
    ADD CONSTRAINT idx_40072_primary PRIMARY KEY (refund_transaction_log_id);


--
-- Name: reminders idx_40085_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reminders
    ADD CONSTRAINT idx_40085_primary PRIMARY KEY (reminder_id);


--
-- Name: reservation_accessories idx_40092_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_accessories
    ADD CONSTRAINT idx_40092_primary PRIMARY KEY (series_id, accessory_id);


--
-- Name: reservation_color_rules idx_40097_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_color_rules
    ADD CONSTRAINT idx_40097_primary PRIMARY KEY (reservation_color_rule_id);


--
-- Name: reservation_files idx_40107_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_files
    ADD CONSTRAINT idx_40107_primary PRIMARY KEY (file_id);


--
-- Name: reservation_guests idx_40112_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_guests
    ADD CONSTRAINT idx_40112_primary PRIMARY KEY (reservation_instance_id, email);


--
-- Name: reservation_instances idx_40117_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_instances
    ADD CONSTRAINT idx_40117_primary PRIMARY KEY (reservation_instance_id);


--
-- Name: reservation_reminders idx_40124_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_reminders
    ADD CONSTRAINT idx_40124_primary PRIMARY KEY (reminder_id);


--
-- Name: reservation_resources idx_40128_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_resources
    ADD CONSTRAINT idx_40128_primary PRIMARY KEY (series_id, resource_id);


--
-- Name: reservation_series idx_40133_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_series
    ADD CONSTRAINT idx_40133_primary PRIMARY KEY (series_id);


--
-- Name: reservation_statuses idx_40144_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_statuses
    ADD CONSTRAINT idx_40144_primary PRIMARY KEY (status_id);


--
-- Name: reservation_types idx_40147_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_types
    ADD CONSTRAINT idx_40147_primary PRIMARY KEY (type_id);


--
-- Name: reservation_users idx_40150_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_users
    ADD CONSTRAINT idx_40150_primary PRIMARY KEY (reservation_instance_id, user_id);


--
-- Name: reservation_waitlist_requests idx_40155_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_waitlist_requests
    ADD CONSTRAINT idx_40155_primary PRIMARY KEY (reservation_waitlist_request_id);


--
-- Name: resources idx_40161_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resources
    ADD CONSTRAINT idx_40161_primary PRIMARY KEY (resource_id);


--
-- Name: resource_accessories idx_40185_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_accessories
    ADD CONSTRAINT idx_40185_primary PRIMARY KEY (resource_accessory_id);


--
-- Name: resource_groups idx_40191_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_groups
    ADD CONSTRAINT idx_40191_primary PRIMARY KEY (resource_group_id);


--
-- Name: resource_group_assignment idx_40197_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_group_assignment
    ADD CONSTRAINT idx_40197_primary PRIMARY KEY (resource_group_id, resource_id);


--
-- Name: resource_images idx_40202_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_images
    ADD CONSTRAINT idx_40202_primary PRIMARY KEY (resource_image_id);


--
-- Name: resource_status_reasons idx_40209_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_status_reasons
    ADD CONSTRAINT idx_40209_primary PRIMARY KEY (resource_status_reason_id);


--
-- Name: resource_types idx_40216_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_types
    ADD CONSTRAINT idx_40216_primary PRIMARY KEY (resource_type_id);


--
-- Name: resource_type_assignment idx_40224_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_type_assignment
    ADD CONSTRAINT idx_40224_primary PRIMARY KEY (resource_id, resource_type_id);


--
-- Name: roles idx_40227_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.roles
    ADD CONSTRAINT idx_40227_primary PRIMARY KEY (role_id);


--
-- Name: saved_reports idx_40233_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.saved_reports
    ADD CONSTRAINT idx_40233_primary PRIMARY KEY (saved_report_id);


--
-- Name: schedules idx_40243_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.schedules
    ADD CONSTRAINT idx_40243_primary PRIMARY KEY (schedule_id);


--
-- Name: terms_of_service idx_40260_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.terms_of_service
    ADD CONSTRAINT idx_40260_primary PRIMARY KEY (terms_of_service_id);


--
-- Name: time_blocks idx_40272_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.time_blocks
    ADD CONSTRAINT idx_40272_primary PRIMARY KEY (block_id);


--
-- Name: users idx_40280_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.users
    ADD CONSTRAINT idx_40280_primary PRIMARY KEY (user_id);


--
-- Name: user_email_preferences idx_40299_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_email_preferences
    ADD CONSTRAINT idx_40299_primary PRIMARY KEY (user_id, event_category, event_type);


--
-- Name: user_groups idx_40302_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_groups
    ADD CONSTRAINT idx_40302_primary PRIMARY KEY (group_id, user_id);


--
-- Name: user_preferences idx_40307_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_preferences
    ADD CONSTRAINT idx_40307_primary PRIMARY KEY (user_preferences_id);


--
-- Name: user_resource_permissions idx_40314_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_resource_permissions
    ADD CONSTRAINT idx_40314_primary PRIMARY KEY (user_id, resource_id);


--
-- Name: user_session idx_40321_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_session
    ADD CONSTRAINT idx_40321_primary PRIMARY KEY (user_session_id);


--
-- Name: user_statuses idx_40328_primary; Type: CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_statuses
    ADD CONSTRAINT idx_40328_primary PRIMARY KEY (status_id);


--
-- Name: idx_39919_activation_code; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39919_activation_code ON bookedscheduler.account_activation USING btree (activation_code);


--
-- Name: idx_39919_activation_code_2; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE UNIQUE INDEX idx_39919_activation_code_2 ON bookedscheduler.account_activation USING btree (activation_code);


--
-- Name: idx_39919_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39919_user_id ON bookedscheduler.account_activation USING btree (user_id);


--
-- Name: idx_39925_display_page; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39925_display_page ON bookedscheduler.announcements USING btree (display_page);


--
-- Name: idx_39925_end_date; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39925_end_date ON bookedscheduler.announcements USING btree (end_date);


--
-- Name: idx_39925_start_date; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39925_start_date ON bookedscheduler.announcements USING btree (start_date);


--
-- Name: idx_39933_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39933_group_id ON bookedscheduler.announcement_groups USING btree (group_id);


--
-- Name: idx_39936_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39936_resource_id ON bookedscheduler.announcement_resources USING btree (resource_id);


--
-- Name: idx_39941_blackout_series_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39941_blackout_series_id ON bookedscheduler.blackout_instances USING btree (series_id);


--
-- Name: idx_39941_end_date; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39941_end_date ON bookedscheduler.blackout_instances USING btree (end_date);


--
-- Name: idx_39941_start_date; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39941_start_date ON bookedscheduler.blackout_instances USING btree (start_date);


--
-- Name: idx_39957_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39957_resource_id ON bookedscheduler.blackout_series_resources USING btree (resource_id);


--
-- Name: idx_39974_attribute_category; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39974_attribute_category ON bookedscheduler.custom_attributes USING btree (attribute_category);


--
-- Name: idx_39974_display_label; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39974_display_label ON bookedscheduler.custom_attributes USING btree (display_label);


--
-- Name: idx_39988_attribute_category; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39988_attribute_category ON bookedscheduler.custom_attribute_values USING btree (attribute_category);


--
-- Name: idx_39988_custom_attribute_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39988_custom_attribute_id ON bookedscheduler.custom_attribute_values USING btree (custom_attribute_id);


--
-- Name: idx_39988_entity_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39988_entity_id ON bookedscheduler.custom_attribute_values USING btree (entity_id);


--
-- Name: idx_39997_layout_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_39997_layout_id ON bookedscheduler.custom_time_blocks USING btree (layout_id);


--
-- Name: idx_40008_admin_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40008_admin_group_id ON bookedscheduler.groups USING btree (admin_group_id);


--
-- Name: idx_40008_isdefault; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40008_isdefault ON bookedscheduler.groups USING btree (isdefault);


--
-- Name: idx_40014_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40014_group_id ON bookedscheduler.group_resource_permissions USING btree (group_id);


--
-- Name: idx_40014_group_id_2; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40014_group_id_2 ON bookedscheduler.group_resource_permissions USING btree (group_id);


--
-- Name: idx_40014_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40014_resource_id ON bookedscheduler.group_resource_permissions USING btree (resource_id);


--
-- Name: idx_40014_resource_id_2; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40014_resource_id_2 ON bookedscheduler.group_resource_permissions USING btree (resource_id);


--
-- Name: idx_40018_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40018_group_id ON bookedscheduler.group_roles USING btree (group_id);


--
-- Name: idx_40018_role_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40018_role_id ON bookedscheduler.group_roles USING btree (role_id);


--
-- Name: idx_40042_invoice_number; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40042_invoice_number ON bookedscheduler.payment_transaction_log USING btree (invoice_number);


--
-- Name: idx_40042_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40042_user_id ON bookedscheduler.payment_transaction_log USING btree (user_id);


--
-- Name: idx_40055_schedule_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40055_schedule_id ON bookedscheduler.peak_times USING btree (schedule_id);


--
-- Name: idx_40064_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40064_group_id ON bookedscheduler.quotas USING btree (group_id);


--
-- Name: idx_40064_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40064_resource_id ON bookedscheduler.quotas USING btree (resource_id);


--
-- Name: idx_40064_schedule_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40064_schedule_id ON bookedscheduler.quotas USING btree (schedule_id);


--
-- Name: idx_40072_payment_transaction_log_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40072_payment_transaction_log_id ON bookedscheduler.refund_transaction_log USING btree (payment_transaction_log_id);


--
-- Name: idx_40085_reminders_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40085_reminders_user_id ON bookedscheduler.reminders USING btree (user_id);


--
-- Name: idx_40092_accessory_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40092_accessory_id ON bookedscheduler.reservation_accessories USING btree (accessory_id);


--
-- Name: idx_40092_series_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40092_series_id ON bookedscheduler.reservation_accessories USING btree (series_id);


--
-- Name: idx_40097_custom_attribute_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40097_custom_attribute_id ON bookedscheduler.reservation_color_rules USING btree (custom_attribute_id);


--
-- Name: idx_40107_series_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40107_series_id ON bookedscheduler.reservation_files USING btree (series_id);


--
-- Name: idx_40112_reservation_guests_email_address; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40112_reservation_guests_email_address ON bookedscheduler.reservation_guests USING btree (email);


--
-- Name: idx_40112_reservation_guests_reservation_instance_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40112_reservation_guests_reservation_instance_id ON bookedscheduler.reservation_guests USING btree (reservation_instance_id);


--
-- Name: idx_40112_reservation_guests_reservation_user_level; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40112_reservation_guests_reservation_user_level ON bookedscheduler.reservation_guests USING btree (reservation_user_level);


--
-- Name: idx_40117_checkin_date; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40117_checkin_date ON bookedscheduler.reservation_instances USING btree (checkin_date);


--
-- Name: idx_40117_end_date; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40117_end_date ON bookedscheduler.reservation_instances USING btree (end_date);


--
-- Name: idx_40117_reference_number; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40117_reference_number ON bookedscheduler.reservation_instances USING btree (reference_number);


--
-- Name: idx_40117_series_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40117_series_id ON bookedscheduler.reservation_instances USING btree (series_id);


--
-- Name: idx_40117_start_date; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40117_start_date ON bookedscheduler.reservation_instances USING btree (start_date);


--
-- Name: idx_40124_reminder_type; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40124_reminder_type ON bookedscheduler.reservation_reminders USING btree (reminder_type);


--
-- Name: idx_40124_series_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40124_series_id ON bookedscheduler.reservation_reminders USING btree (series_id);


--
-- Name: idx_40128_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40128_resource_id ON bookedscheduler.reservation_resources USING btree (resource_id);


--
-- Name: idx_40128_series_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40128_series_id ON bookedscheduler.reservation_resources USING btree (series_id);


--
-- Name: idx_40133_reservations_owner; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40133_reservations_owner ON bookedscheduler.reservation_series USING btree (owner_id);


--
-- Name: idx_40133_status_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40133_status_id ON bookedscheduler.reservation_series USING btree (status_id);


--
-- Name: idx_40133_type_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40133_type_id ON bookedscheduler.reservation_series USING btree (type_id);


--
-- Name: idx_40150_reservation_instance_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40150_reservation_instance_id ON bookedscheduler.reservation_users USING btree (reservation_instance_id);


--
-- Name: idx_40150_reservation_user_level; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40150_reservation_user_level ON bookedscheduler.reservation_users USING btree (reservation_user_level);


--
-- Name: idx_40150_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40150_user_id ON bookedscheduler.reservation_users USING btree (user_id);


--
-- Name: idx_40155_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40155_resource_id ON bookedscheduler.reservation_waitlist_requests USING btree (resource_id);


--
-- Name: idx_40155_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40155_user_id ON bookedscheduler.reservation_waitlist_requests USING btree (user_id);


--
-- Name: idx_40161_admin_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40161_admin_group_id ON bookedscheduler.resources USING btree (admin_group_id);


--
-- Name: idx_40161_auto_release_minutes; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40161_auto_release_minutes ON bookedscheduler.resources USING btree (auto_release_minutes);


--
-- Name: idx_40161_public_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE UNIQUE INDEX idx_40161_public_id ON bookedscheduler.resources USING btree (public_id);


--
-- Name: idx_40161_resource_status_reason_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40161_resource_status_reason_id ON bookedscheduler.resources USING btree (resource_status_reason_id);


--
-- Name: idx_40161_resource_type_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40161_resource_type_id ON bookedscheduler.resources USING btree (resource_type_id);


--
-- Name: idx_40161_schedule_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40161_schedule_id ON bookedscheduler.resources USING btree (schedule_id);


--
-- Name: idx_40185_accessory_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40185_accessory_id ON bookedscheduler.resource_accessories USING btree (accessory_id);


--
-- Name: idx_40185_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40185_resource_id ON bookedscheduler.resource_accessories USING btree (resource_id);


--
-- Name: idx_40191_resource_groups_parent_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40191_resource_groups_parent_id ON bookedscheduler.resource_groups USING btree (parent_id);


--
-- Name: idx_40197_resource_group_assignment_resource_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40197_resource_group_assignment_resource_group_id ON bookedscheduler.resource_group_assignment USING btree (resource_group_id);


--
-- Name: idx_40197_resource_group_assignment_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40197_resource_group_assignment_resource_id ON bookedscheduler.resource_group_assignment USING btree (resource_id);


--
-- Name: idx_40202_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40202_resource_id ON bookedscheduler.resource_images USING btree (resource_id);


--
-- Name: idx_40209_status_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40209_status_id ON bookedscheduler.resource_status_reasons USING btree (status_id);


--
-- Name: idx_40224_resource_type_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40224_resource_type_id ON bookedscheduler.resource_type_assignment USING btree (resource_type_id);


--
-- Name: idx_40233_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40233_user_id ON bookedscheduler.saved_reports USING btree (user_id);


--
-- Name: idx_40243_layout_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40243_layout_id ON bookedscheduler.schedules USING btree (layout_id);


--
-- Name: idx_40243_public_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE UNIQUE INDEX idx_40243_public_id ON bookedscheduler.schedules USING btree (public_id);


--
-- Name: idx_40243_schedules_groups_admin_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40243_schedules_groups_admin_group_id ON bookedscheduler.schedules USING btree (admin_group_id);


--
-- Name: idx_40272_layout_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40272_layout_id ON bookedscheduler.time_blocks USING btree (layout_id);


--
-- Name: idx_40280_public_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE UNIQUE INDEX idx_40280_public_id ON bookedscheduler.users USING btree (public_id);


--
-- Name: idx_40280_status_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40280_status_id ON bookedscheduler.users USING btree (status_id);


--
-- Name: idx_40302_group_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40302_group_id ON bookedscheduler.user_groups USING btree (group_id);


--
-- Name: idx_40302_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40302_user_id ON bookedscheduler.user_groups USING btree (user_id);


--
-- Name: idx_40307_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40307_user_id ON bookedscheduler.user_preferences USING btree (user_id);


--
-- Name: idx_40314_resource_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40314_resource_id ON bookedscheduler.user_resource_permissions USING btree (resource_id);


--
-- Name: idx_40314_resource_id_2; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40314_resource_id_2 ON bookedscheduler.user_resource_permissions USING btree (resource_id);


--
-- Name: idx_40314_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40314_user_id ON bookedscheduler.user_resource_permissions USING btree (user_id);


--
-- Name: idx_40314_user_id_2; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40314_user_id_2 ON bookedscheduler.user_resource_permissions USING btree (user_id);


--
-- Name: idx_40321_user_session_session_token; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40321_user_session_session_token ON bookedscheduler.user_session USING btree (session_token);


--
-- Name: idx_40321_user_session_user_id; Type: INDEX; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE INDEX idx_40321_user_session_user_id ON bookedscheduler.user_session USING btree (user_id);


--
-- Name: users on_update_current_timestamp; Type: TRIGGER; Schema: bookedscheduler; Owner: pgbs_user
--

CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON bookedscheduler.users FOR EACH ROW EXECUTE PROCEDURE bookedscheduler.on_update_current_timestamp_users();


--
-- Name: account_activation account_activation_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.account_activation
    ADD CONSTRAINT account_activation_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: resources admin_group_id; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resources
    ADD CONSTRAINT admin_group_id FOREIGN KEY (admin_group_id) REFERENCES bookedscheduler.groups(group_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: announcement_groups announcement_groups_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.announcement_groups
    ADD CONSTRAINT announcement_groups_ibfk_1 FOREIGN KEY (announcementid) REFERENCES bookedscheduler.announcements(announcementid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: announcement_groups announcement_groups_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.announcement_groups
    ADD CONSTRAINT announcement_groups_ibfk_2 FOREIGN KEY (group_id) REFERENCES bookedscheduler.groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: announcement_resources announcement_resources_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.announcement_resources
    ADD CONSTRAINT announcement_resources_ibfk_1 FOREIGN KEY (announcementid) REFERENCES bookedscheduler.announcements(announcementid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: announcement_resources announcement_resources_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.announcement_resources
    ADD CONSTRAINT announcement_resources_ibfk_2 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: blackout_instances blackout_instances_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.blackout_instances
    ADD CONSTRAINT blackout_instances_ibfk_1 FOREIGN KEY (series_id) REFERENCES bookedscheduler.blackout_series(series_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: blackout_series_resources blackout_series_resources_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.blackout_series_resources
    ADD CONSTRAINT blackout_series_resources_ibfk_1 FOREIGN KEY (series_id) REFERENCES bookedscheduler.blackout_series(series_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: blackout_series_resources blackout_series_resources_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.blackout_series_resources
    ADD CONSTRAINT blackout_series_resources_ibfk_2 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: custom_attribute_entities custom_attribute_entities_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_attribute_entities
    ADD CONSTRAINT custom_attribute_entities_ibfk_1 FOREIGN KEY (custom_attribute_id) REFERENCES bookedscheduler.custom_attributes(custom_attribute_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: custom_time_blocks custom_time_blocks_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.custom_time_blocks
    ADD CONSTRAINT custom_time_blocks_ibfk_1 FOREIGN KEY (layout_id) REFERENCES bookedscheduler.layouts(layout_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: group_resource_permissions group_resource_permissions_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.group_resource_permissions
    ADD CONSTRAINT group_resource_permissions_ibfk_1 FOREIGN KEY (group_id) REFERENCES bookedscheduler.groups(group_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: group_resource_permissions group_resource_permissions_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.group_resource_permissions
    ADD CONSTRAINT group_resource_permissions_ibfk_2 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: group_roles group_roles_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.group_roles
    ADD CONSTRAINT group_roles_ibfk_1 FOREIGN KEY (group_id) REFERENCES bookedscheduler.groups(group_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: group_roles group_roles_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.group_roles
    ADD CONSTRAINT group_roles_ibfk_2 FOREIGN KEY (role_id) REFERENCES bookedscheduler.roles(role_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: groups groups_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.groups
    ADD CONSTRAINT groups_ibfk_1 FOREIGN KEY (admin_group_id) REFERENCES bookedscheduler.groups(group_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: peak_times peak_times_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.peak_times
    ADD CONSTRAINT peak_times_ibfk_1 FOREIGN KEY (schedule_id) REFERENCES bookedscheduler.schedules(schedule_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: quotas quotas_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.quotas
    ADD CONSTRAINT quotas_ibfk_1 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quotas quotas_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.quotas
    ADD CONSTRAINT quotas_ibfk_2 FOREIGN KEY (group_id) REFERENCES bookedscheduler.groups(group_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quotas quotas_ibfk_3; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.quotas
    ADD CONSTRAINT quotas_ibfk_3 FOREIGN KEY (schedule_id) REFERENCES bookedscheduler.schedules(schedule_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: refund_transaction_log refund_transaction_log_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.refund_transaction_log
    ADD CONSTRAINT refund_transaction_log_ibfk_1 FOREIGN KEY (payment_transaction_log_id) REFERENCES bookedscheduler.payment_transaction_log(payment_transaction_log_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reminders reminders_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reminders
    ADD CONSTRAINT reminders_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reservation_accessories reservation_accessories_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_accessories
    ADD CONSTRAINT reservation_accessories_ibfk_1 FOREIGN KEY (accessory_id) REFERENCES bookedscheduler.accessories(accessory_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reservation_accessories reservation_accessories_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_accessories
    ADD CONSTRAINT reservation_accessories_ibfk_2 FOREIGN KEY (series_id) REFERENCES bookedscheduler.reservation_series(series_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reservation_color_rules reservation_color_rules_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_color_rules
    ADD CONSTRAINT reservation_color_rules_ibfk_1 FOREIGN KEY (custom_attribute_id) REFERENCES bookedscheduler.custom_attributes(custom_attribute_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reservation_files reservation_files_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_files
    ADD CONSTRAINT reservation_files_ibfk_1 FOREIGN KEY (series_id) REFERENCES bookedscheduler.reservation_series(series_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reservation_guests reservation_guests_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_guests
    ADD CONSTRAINT reservation_guests_ibfk_1 FOREIGN KEY (reservation_instance_id) REFERENCES bookedscheduler.reservation_instances(reservation_instance_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reservation_reminders reservation_reminders_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_reminders
    ADD CONSTRAINT reservation_reminders_ibfk_1 FOREIGN KEY (series_id) REFERENCES bookedscheduler.reservation_series(series_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reservation_resources reservation_resources_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_resources
    ADD CONSTRAINT reservation_resources_ibfk_1 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reservation_resources reservation_resources_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_resources
    ADD CONSTRAINT reservation_resources_ibfk_2 FOREIGN KEY (series_id) REFERENCES bookedscheduler.reservation_series(series_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reservation_users reservation_users_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_users
    ADD CONSTRAINT reservation_users_ibfk_1 FOREIGN KEY (reservation_instance_id) REFERENCES bookedscheduler.reservation_instances(reservation_instance_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reservation_users reservation_users_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_users
    ADD CONSTRAINT reservation_users_ibfk_2 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reservation_waitlist_requests reservation_waitlist_requests_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_waitlist_requests
    ADD CONSTRAINT reservation_waitlist_requests_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reservation_waitlist_requests reservation_waitlist_requests_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_waitlist_requests
    ADD CONSTRAINT reservation_waitlist_requests_ibfk_2 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reservation_series reservations_owner; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_series
    ADD CONSTRAINT reservations_owner FOREIGN KEY (owner_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reservation_instances reservations_series; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_instances
    ADD CONSTRAINT reservations_series FOREIGN KEY (series_id) REFERENCES bookedscheduler.reservation_series(series_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: reservation_series reservations_status; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_series
    ADD CONSTRAINT reservations_status FOREIGN KEY (status_id) REFERENCES bookedscheduler.reservation_statuses(status_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: reservation_series reservations_type; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.reservation_series
    ADD CONSTRAINT reservations_type FOREIGN KEY (type_id) REFERENCES bookedscheduler.reservation_types(type_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: resource_accessories resource_accessories_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_accessories
    ADD CONSTRAINT resource_accessories_ibfk_1 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: resource_accessories resource_accessories_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_accessories
    ADD CONSTRAINT resource_accessories_ibfk_2 FOREIGN KEY (accessory_id) REFERENCES bookedscheduler.accessories(accessory_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: resource_group_assignment resource_group_assignment_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_group_assignment
    ADD CONSTRAINT resource_group_assignment_ibfk_1 FOREIGN KEY (resource_group_id) REFERENCES bookedscheduler.resource_groups(resource_group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: resource_group_assignment resource_group_assignment_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_group_assignment
    ADD CONSTRAINT resource_group_assignment_ibfk_2 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: resource_groups resource_groups_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_groups
    ADD CONSTRAINT resource_groups_ibfk_1 FOREIGN KEY (parent_id) REFERENCES bookedscheduler.resource_groups(resource_group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: resource_images resource_images_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_images
    ADD CONSTRAINT resource_images_ibfk_1 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: resource_type_assignment resource_type_assignment_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_type_assignment
    ADD CONSTRAINT resource_type_assignment_ibfk_1 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: resource_type_assignment resource_type_assignment_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resource_type_assignment
    ADD CONSTRAINT resource_type_assignment_ibfk_2 FOREIGN KEY (resource_type_id) REFERENCES bookedscheduler.resource_types(resource_type_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: resources resources_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resources
    ADD CONSTRAINT resources_ibfk_1 FOREIGN KEY (schedule_id) REFERENCES bookedscheduler.schedules(schedule_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: resources resources_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resources
    ADD CONSTRAINT resources_ibfk_2 FOREIGN KEY (resource_type_id) REFERENCES bookedscheduler.resource_types(resource_type_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: resources resources_ibfk_3; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.resources
    ADD CONSTRAINT resources_ibfk_3 FOREIGN KEY (resource_status_reason_id) REFERENCES bookedscheduler.resource_status_reasons(resource_status_reason_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: saved_reports saved_reports_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.saved_reports
    ADD CONSTRAINT saved_reports_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: schedules schedules_groups_admin_group_id; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.schedules
    ADD CONSTRAINT schedules_groups_admin_group_id FOREIGN KEY (admin_group_id) REFERENCES bookedscheduler.groups(group_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: schedules schedules_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.schedules
    ADD CONSTRAINT schedules_ibfk_1 FOREIGN KEY (layout_id) REFERENCES bookedscheduler.layouts(layout_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: time_blocks time_blocks_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.time_blocks
    ADD CONSTRAINT time_blocks_ibfk_1 FOREIGN KEY (layout_id) REFERENCES bookedscheduler.layouts(layout_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_email_preferences user_email_preferences_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_email_preferences
    ADD CONSTRAINT user_email_preferences_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_groups user_groups_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_groups
    ADD CONSTRAINT user_groups_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_groups user_groups_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_groups
    ADD CONSTRAINT user_groups_ibfk_2 FOREIGN KEY (group_id) REFERENCES bookedscheduler.groups(group_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_preferences user_preferences_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_preferences
    ADD CONSTRAINT user_preferences_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_resource_permissions user_resource_permissions_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_resource_permissions
    ADD CONSTRAINT user_resource_permissions_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_resource_permissions user_resource_permissions_ibfk_2; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_resource_permissions
    ADD CONSTRAINT user_resource_permissions_ibfk_2 FOREIGN KEY (resource_id) REFERENCES bookedscheduler.resources(resource_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_session user_session_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.user_session
    ADD CONSTRAINT user_session_ibfk_1 FOREIGN KEY (user_id) REFERENCES bookedscheduler.users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: users users_ibfk_1; Type: FK CONSTRAINT; Schema: bookedscheduler; Owner: pgbs_user
--

ALTER TABLE ONLY bookedscheduler.users
    ADD CONSTRAINT users_ibfk_1 FOREIGN KEY (status_id) REFERENCES bookedscheduler.user_statuses(status_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

