create database if not exists zipmex;
use zipmex;
create external table if not exists order_detail (
  order_created_timestamp Timestamp,
  status STRING,
  price INT,
  discount DECIMAL(18,2),
  id STRING,
  driver_id STRING,
  user_id STRING,
  restaurant_id STRING
)
--PARTITIONED BY (dt STRING)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as TEXTFILE 
location '/user/hive/warehouse/order_detail';