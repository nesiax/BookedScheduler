# Migrating a WAMP (Windows + Apache + MySQL + PHP ) to LNPP( Linux + Nginx + PostgreSQL + PHP)

### A case study for BookedScheduler.

These instructions have been tested under Debian GNU/Linux 10.

## PHP Functions

These are the php mysql funcions and the equivalent in pgsql.

| MySQL                     | PostgreSQL |
| --- | --- |
| ```mysqli_real_escape_string``` | ```pg_escape_string``` |
| ```mysqli_connect```            | ```pg_connect``` |
| ```mysqli_select_db```          | ```pg_dbname``` |
| ```mysqli_set_charset```        | ```pg_set_client_encoding``` |
| ```mysqli_error```              | ```pg_last_error``` |
| ```mysqli_close```              | ```pg_close``` |
| ```mysqli_query```              | ```pg_query``` |
| ```mysqli_multi_query```        | ```pg_send_query``` |
| ```mysqli_insert_id```          | ```pg_query("SELECT lastval();")``` |
| ```mysqli_fetch_assoc```        | ```pg_fetch_assoc``` |
| ```mysqli_num_rows```           | ```pg_num_rows``` |
| ```mysqli_free_result```        | ```pg_free_result``` |


There are many way to replace these ocurrences in .php files, I usually use:

- ```rpl```
- ```sed```
- ```find``` + ```set```

I use ```rpl``` for simple replacements over ```sed```, and ```find + sed ``` for processing in batch.

## Database creation

I use PostgreSQL 11, then as root user:

```
# su - postgres
$ psql --cluster 11/main
CREATE ROLE pgbs_user;
ALTER ROLE pgbs_user WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB LOGIN REPLICATION NOBYPASSRLS CONNECTION LIMIT 100;
CREATE DATABASE pgbs_db WITH TEMPLATE = template0 OWNER = pgbs_user;
ALTER USER pgbs_user WITH PASSWORD '<your_password>';
```

If you are creating a database from scratch you would be better running the script: ```pgbs_db_data-2021-01-25.sql``` (located under the ```database_schema/pgsql/``` directory) on the above database since that will create everything to get up and running.

## Database migration

In case you want to migrate a MySQL database, here are the steps:

Firt make sure that you can access mysql and postgresql database from command line, like so:

```
$ mysql -h <mysql_host> -u <mysql_user> <mysql_db> -p

$ psql -h <pgsql_host> -p <pgsql_port> -U <pgsql_user> <pgsql_db>
```


In order to migrate the data I use [pgloader](http://pgloader.io), you have to create a configuration file with your setup:

```
$ cat > pgbs.pgloader << 'EOF'
LOAD DATABASE
        FROM mysql://<mysql_user>:<myuser_pass>@<mysql_host>:<mysql_port>/<mysql_db>
        INTO postgresql://<pgsql_user:<pguser_pass>@<pgsql_port:<pgsql_port>/<pgsql_db>
;
EOF
```

Then run the pgloader and it will output something like this:

```
$ pgloader pgbs.pgloader
2021-01-25T21:08:55.027000Z LOG pgloader version "3.6.1"
2021-01-25T21:08:55.229000Z LOG Migrating from #<MYSQL-CONNECTION mysql://****@****:****/**** {****}>
2021-01-25T21:08:55.230000Z LOG Migrating into #<PGSQL-CONNECTION pgsql://****@****:****/**** {****}>
2021-01-25T21:09:04.881000Z LOG report summary reset
                                   table name     errors       rows      bytes      total time
---------------------------------------------  ---------  ---------  ---------  --------------
                              fetch meta data          0        262                     0.127s
                               Create Schemas          0          0                     0.004s
                             Create SQL Types          0          0                     0.009s
                                Create tables          0        114                     1.750s
                               Set Table OIDs          0         57                     0.014s
---------------------------------------------  ---------  ---------  ---------  --------------
                  bookedscheduler.accessories          0          3     0.1 kB          0.149s
           bookedscheduler.account_activation          0          0                     0.089s
                bookedscheduler.announcements          0          0                     0.170s
       bookedscheduler.announcement_resources          0          0                     0.258s
              bookedscheduler.blackout_series          0          0                     0.277s
                   bookedscheduler.credit_log          0          1     0.1 kB          0.385s
    bookedscheduler.custom_attribute_entities          0          0                     0.362s
           bookedscheduler.custom_time_blocks          0          0                     0.473s
                       bookedscheduler.groups          0          4     0.1 kB          0.586s
                  bookedscheduler.group_roles          0          3     0.0 kB          0.645s
        bookedscheduler.payment_configuration          0          1     0.0 kB          0.736s
      bookedscheduler.payment_transaction_log          0          0                     0.725s
                       bookedscheduler.quotas          0          1     0.1 kB          1.005s
                    bookedscheduler.reminders          0          0                     0.820s
      bookedscheduler.reservation_color_rules          0          0                     0.906s
           bookedscheduler.reservation_guests          0          0                     0.988s
        bookedscheduler.reservation_reminders          0          2     0.0 kB          1.092s
           bookedscheduler.reservation_series          0          5     0.3 kB          1.104s
            bookedscheduler.reservation_types          0          2     0.0 kB          1.283s
bookedscheduler.reservation_waitlist_requests          0          0                     1.185s
         bookedscheduler.resource_accessories          0          0                     1.305s
    bookedscheduler.resource_group_assignment          0          0                     1.363s
      bookedscheduler.resource_status_reasons          0          0                     1.410s
     bookedscheduler.resource_type_assignment          0          0                     1.448s
                bookedscheduler.saved_reports          0          0                     1.490s
             bookedscheduler.terms_of_service          0          0                     1.525s
                        bookedscheduler.users          0          4     0.9 kB          1.672s
                  bookedscheduler.user_groups          0          1     0.0 kB          1.697s
    bookedscheduler.user_resource_permissions          0          8     0.1 kB          1.783s
                bookedscheduler.user_statuses          0          3     0.0 kB          1.796s
          bookedscheduler.announcement_groups          0          0                     0.003s
           bookedscheduler.blackout_instances          0          0                     0.003s
    bookedscheduler.blackout_series_resources          0          0                     0.086s
            bookedscheduler.custom_attributes          0          5     0.2 kB          0.188s
      bookedscheduler.custom_attribute_values          0         10     0.1 kB          0.224s
                    bookedscheduler.dbversion          0          8     0.2 kB          0.289s
   bookedscheduler.group_resource_permissions          0          0                     0.321s
                      bookedscheduler.layouts          0          1     0.0 kB          0.504s
     bookedscheduler.payment_gateway_settings          0          0                     0.403s
                   bookedscheduler.peak_times          0          1     0.0 kB          0.514s
       bookedscheduler.refund_transaction_log          0          0                     0.584s
      bookedscheduler.reservation_accessories          0          2     0.0 kB          0.670s
            bookedscheduler.reservation_files          0          0                     0.672s
        bookedscheduler.reservation_instances          0          5     0.4 kB          0.856s
        bookedscheduler.reservation_resources          0          6     0.0 kB          0.853s
         bookedscheduler.reservation_statuses          0          3     0.0 kB          0.945s
            bookedscheduler.reservation_users          0          5     0.0 kB          0.956s
                    bookedscheduler.resources          0          2     0.3 kB          1.238s
              bookedscheduler.resource_groups          0          0                     1.034s
              bookedscheduler.resource_images          0          0                     1.158s
               bookedscheduler.resource_types          0          0                     1.260s
                        bookedscheduler.roles          0          4     0.1 kB          1.374s
                    bookedscheduler.schedules          0          1     0.1 kB          1.432s
                  bookedscheduler.time_blocks          0         18     0.6 kB          1.551s
       bookedscheduler.user_email_preferences          0          0                     1.506s
             bookedscheduler.user_preferences          0          3     0.1 kB          1.621s
                 bookedscheduler.user_session          0          0                     1.630s
---------------------------------------------  ---------  ---------  ---------  --------------
                      COPY Threads Completion          0          4                     1.848s
                               Create Indexes          0        144                    24.086s
                       Index Build Completion          0        144                     4.674s
                              Reset Sequences          0         36                     0.271s
                                 Primary Keys          0         56                     0.138s
                          Create Foreign Keys          0         61                     0.267s
                              Create Triggers          0          2                     0.008s
                              Set Search Path          0          1                     0.003s
                             Install Comments          0          0                     0.000s
---------------------------------------------  ---------  ---------  ---------  --------------
                            Total import time          ✓        112     3.9 kB         31.295s

```


## Compatibility

If you have loaded a MySQL database into PostgreSQL, you **have** to run the ```compatibility.sql``` script. That script will turn some ```tinyint(1)``` (booleans as managed by MySQL) into PostgreSQL true booleans, and since previous BookedScheduler uses some MySQL functions we must program and add them using PostgreSQL Procedural Language.

## ER Diagram

In case you are intererested, sooner after I loaded the MySQL database I had to do some revese engineering in order to understand the Entity-Relationship diagram, for that purpose I used [pgmodeler](http://pgmodeler.io).

In the folder ```pgmodeler``` you will find a file with the model and also a model picture.

## Nginx

Under Debian GNU/Linux install using: ```apt-get install nginx-full```

If you download all the sources under ```/var/www/PGBookedScheduler/``` then the following is all you need to enable the directory under nginx:

```
    location /PGBookedScheduler/Web {
        root /var/www;
        index index.php index.html;
        try_files $uri $uri/ =404;
    }

    location ~ "^/PGBookedScheduler/Web/.*\.php$" {
        root /var/www;
        include snippets/fastcgi-php.conf;

        # With php-fpm (or other unix sockets):
        fastcgi_pass unix:/run/php/pgbs-fpm.sock;
    }
```

Test the configuration with ```nginx -t``` and if everything is ok then ```service nginx reload```.

## php-fpm

Under Debian GNU/Linux install using: ```apt-get install php7.3-fpm php7.3 php7.3-*```

Then create the configurtion file for this program and adjust it to your environment.

```
$ cat > /etc/php/7.3/fpm/pool.d/pgbs.conf << 'EOF'
[pgbs]
user = www-data
group = www-data
listen = /run/php/pgbs-fpm.sock
listen.owner = www-data
listen.group = www-data
pm = dynamic
pm.max_children = 5
pm.start_servers = 2
pm.min_spare_servers = 1
pm.max_spare_servers = 3
pm.max_requests = 500
access.log = /var/log/fpm/$pool-access.log
slowlog = /var/log/fpm/$pool-slow.log
php_flag[display_errors] = off
php_value[error_log] = /var/log/fpm/$pool-php.log
php_flag[log_errors] = on
php_value[date.timezone] = "America/Bogota"
EOF
```

Then restart the php-fpm process: ```service php7.3-fpm restart```

## Debugging

If this is the first time installing PGBookedScheduler then I suggest you to enable ```log4php```  by copying ```log4php.config.dist.xml``` to ```log4php.config.xml``` under the ```config``` directory.


## Test & Run

Now create your ```config/config.php``` using a database type of ```pgsql``` and according to your script url then point your browser to something like [http://localhost/PGBookedScheduler/Web](http://localhost/PGBookedScheduler/Web)

Test it with ```admin:password``` or ```user:password```.

Have fun with [PostgreSQL](http://www.postgresql.org/) !!!

## Support

I offer tech support in case you need it. ( English and Spanish ).

You can contact me at nestor at tiendalinux dot com.
