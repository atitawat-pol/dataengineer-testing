create database if not exists zipmex;
use zipmex;
create external table if not exists restaurant_detail (
	id STRING,
	restaurant_name STRING,
	category STRING,
	esimated_cooking_time	DECIMAL(18,2),
	latitude DECIMAL(18,6),
	longitude DECIMAL(18,6)
)
--PARTITIONED BY (dt STRING)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as TEXTFIE 
location '/user/hive/warehouse/restaurant_detail';