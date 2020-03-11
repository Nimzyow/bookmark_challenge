# First user story

```
So that I can see all of my bookmarks,
I'd like to see a list
```

How to use database

in the terminal run

```
psql postgres
```

create database using the psql command

```
CREATE DATABASE bookmark_manager;
```

create test database using the psql command

```
CREATE DATABASE bookmark_manager_test;
```

connect to the database using the pqsl command using

```
\c bookmark_manager;
```

run the query saved in

```
/db/migrations/01_create_bookmarks_table.sql
```
