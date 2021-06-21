create database if not exists zipmex;
use zipmex;
create external table if not exists restaurant_detail_tmp (id STRING, restaurant_name STRING, category STRING, esimated_cooking_time DOUBLE, latitude DOUBLE, longitude DOUBLE, dt STRING)
stored as PARQUET 
location '/user/hive/warehouse/restaurant_detail_tmp';