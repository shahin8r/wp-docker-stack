# wp-docker-stack

## Features

- nginx
- MariaDB
- WordPress
- WP-CLI
- MailCatcher
- Composer
- Memcached
- phpMyAdmin
- phpMemcachedAdmin
- PHPUnit

## Folder Structure

- `wordpress/` contains the WordPress files.
- `logs/` contains the logs.
- `data/` contains the database files.

## Requirements

* [Docker](https://www.docker.com/)
* [docker-compose](https://docs.docker.com/compose/)

## Setup

1. `git clone https://github.com/shahin8r/wp-docker-stack.git <project-name>`
1. `cd <project-name>`
1. `docker-compose up`
1. Open [http://localhost](http://localhost) in your browser.

Default MySQL connection information:

```
Database: wordpress
Username: wordpress
Password: password
Host: mysql
```

## Tools

[phpMyAdmin](https://www.phpmyadmin.net) runs on [port 8092](http://localhost:8092).

[phpMemcachedAdmin](https://github.com/elijaa/phpmemcachedadmin) runs on [port 8093](http://localhost:8093).

[MailCatcher](https://github.com/alexandresalome/mailcatcher) runs on [port 1080](http://localhost:1080)

## WP-CLI

Run the `wp.sh` shell script inside of `bin/`. Following command will execute as `wp plugin install advanced-custom-fields`.

```
./bin/wp.sh plugin install advanced-custom-fields
```

## Bash access

Run the `shell.sh` shell script inside of `bin/`.

```
./bin/shell.sh
```

## Import DB

Run the `wp_db_restore.sh` shell script inside of `bin/`. 
```
./bin/wp_db_restore.sh import.sql
```

You can also search-replace the site URL in the new database.
```
./bin/wp_db_restore.sh import.sql '//oldsite.com' '//localhost'
```
