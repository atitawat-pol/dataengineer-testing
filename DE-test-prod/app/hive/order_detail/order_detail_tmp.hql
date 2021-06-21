create database if not exists zipmex;
use zipmex;

create external table if not exists order_detail_tmp (order_created_timestamp STRING, status STRING, price DOUBLE, discount DOUBLE, id STRING, driver_id STRING, user_id STRING, restaurant_id STRING, dt STRING)
stored as PARQUET 
location '/user/hive/warehouse/order_detail_tmp';