# Programming for Data Science

The purpose of this repo is to capture the projects associated with the Udacity Nanodegree "Programming for Data Science with Python".

## Table of Contents

- [Programming for Data Science](#programming-for-data-science)
  - [Table of Contents](#table-of-contents)
  - [Lessons](#lessons)
    - [Introduction to SQL](#introduction-to-sql)
      - [Articles](#articles)
      - [SQL Queries](#sql-queries)
      - [Course Recap](#course-recap)
  - [SQL Table Data](#sql-table-data)
    - [Install PostgreSQL and pgAdmin](#install-postgresql-and-pgadmin)
      - [Install PostgreSQL](#install-postgresql)
      - [Install pgAdmin4](#install-pgadmin4)
    - [Configure pgAdmin4](#configure-pgadmin4)
      - [Desktop Version](#desktop-version)
      - [Web Version](#web-version)
    - [Register PostgreSQL Server in pgAdmin4](#register-postgresql-server-in-pgadmin4)
  - [Environment.yml](#environmentyml)
  - [Parch and Posey Entity Relationship Diagram](#parch-and-posey-entity-relationship-diagram)

## Lessons

### Introduction to SQL

#### Articles

#### SQL Queries

- This folder holds a collection of SQL queries used during the course. Due to the Server and Database not being accessible on this repo, they are for reference only. The server and data can be recreated utilizing the data stored in this repository. The data is located in *./sql_table_data/parch-and-posey.sql*. Input this SQL query into your application and run it to create the databse and tables.

#### Course Recap

## SQL Table Data

This data was used to create the Database and Tables used for this repository. For this repository, I utilized pgAdmin4 with Postgre SQL.

### Install PostgreSQL and pgAdmin

#### Install PostgreSQL

```bash
sudo apt update
sudo apt install postgresql postgresql-contrib -y
```

Enable and start PostgreSQL:

```bash
sudo systemctl enable postgresql
sudo systemctl start postgresql
```

Verify PostgreSQL is running:

```bash
sudo systemctl status postgresql
```

#### Install pgAdmin4

Option 1: Install via APT (Recommended)

```bash
curl -fsSLo /usr/share/keyrings/pgadmin-keyring.asc https://www.pgadmin.org/static/packages_pgadmin_org.pub
echo "deb [signed-by=/usr/share/keyrings/pgadmin-keyring.asc] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" | sudo tee /etc/apt/sources.list.d/pgadmin4.list
sudo apt update
sudo apt install pgadmin4 -y
```

Option 2: Install via Snap (if APT fails)

```bash
sudo snap install pgadmin4
```

### Configure pgAdmin4

#### Desktop Version

```bash
pgadmin4
```

#### Web Version

```bash
sudo /usr/pgadmin4/bin/setup-web.sh
```

Then, open http://localhost/pgadmin4 in your browser.

### Register PostgreSQL Server in pgAdmin4

1. Open pgAdmin4
2. Click "**Register Server**"
3. In the **General** tab:
    - **Name**: PostgreSQL (local)
4. In the **Connection** tab:
    - **Host:** localhost
    - **Port:** 5432
    - **Username:** your username
    - **Password:** your password
5. Click **Save**

## Environment.yml

## Parch and Posey Entity Relationship Diagram