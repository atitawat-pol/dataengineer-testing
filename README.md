# Data Engineer Coding Test

Atitawat Pol-in coding solution for Zipmex interview.

## Table of contents

* [General info](#general-info)
* [Technologies](#technologies)
* [Prerequisite](#prerequisite)
* [Steps](#steps)

## General info

This project is my solution for Data Engineer coding test.

## Technologies
Technologies in this project:
* Postgres
* Hive
* Python
* Docker

## Prerequisite
* Install docker from https://docs.docker.com/get-docker/
* Install python 3.7+ or above
* clone this repo to your local machine

## Steps
```bash
$ cd DE-test-prod
```
1. install python packages with requirements.txt
```bash
$ pip install -r requirements.txt
```
2. start postgres database with docker
```bash
$ docker pull postgres:12
$ docker run -p 5432:5432 --name staging-pg -e POSTGRES_PASSWORD=password -e POSTGRES_DB=zipmex -d postgres:12
```
3. create tables name order_detail and restaurant_detail in postgres
```bash
$ python app/postgres/create_pg_table.py
```
4. import csv into order_detail and restaurant_detail in postgres
```bash
$ cd app/ETL/
$ python import_csv_to_pg.py
```
5. start hadoop, hive with docker-compose
```bash
$ cd ../hive/
$ docker-compose up
```
6. ETL tables from postgres to Hive. The file format is parquet
```bash
$ cd ../ETL/
$ python extract_data_pg_to_hdfs.py
```
7. Create two external tables order_detail and restaurant_detail in hive. Then, Send parquet file to hdfs where external tables point to. After that, partition two tables order_detail and restaurant_detail with column name dt dynamically.
```bash
# shell into hive-server container
$ docker exec -it hive-server /bin/bash
#inside hive-server container
$ cd ../order_detail
$ hive -f order_detail_tmp.hql
$ hadoop fs -put order_detail.parquet hdfs://namenode:8020/user/hive/warehouse/order_detail_tmp
# create order_detail partitioned by dt
$ hive -f order_detail.hql
$ cd ../restaurant_detail
$ hive -f restaurant_detail_tmp.hql
$ hadoop fs -put restaurant_detail.parquet hdfs://namenode:8020/user/hive/warehouse/restaurant_detail_tmp
# create restaurant_detail partitiioned by dt
$ hive -f restaurant_detail.hql
```
8. Create table order_detail_new
```bash
# inside hive-server container
$ cd ../order_detail_new
$ hive -f order_detail_new.hql
```
9. Create table restaurant_detail_new
```bash
# inside hive-server container
$ cd ../restaurant_detail_new
$ hive -f restaurant_detail_new.hql
```
10. SQL requirements
* Get the average __discount__ for each __category__
```bash
# inside hive-server container
$ cd ../sql_requirements
$ hive -f first_question.hql
$ sh first_question.sh
```
* Row count per each __cooking_bin__
```bash
# inside hive-server container
$ hive -f second_question.hql
$ sh second_question.sh
# exit hive-server container
$ exit
```
11. Save the above query output to CSV files name
```bash
# verify that you are at the ~/output
$ cd ../../../output
$ pwd
$ sh docker_cp.sh
```
12. Stop docker containers
```bash
$ cd DE-test-prod/app/hive/
$ docker-compose down
```