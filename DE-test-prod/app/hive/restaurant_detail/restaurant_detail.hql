use zipmex;

CREATE EXTERNAL TABLE zipmex.restaurant_detail (id STRING, restaurant_name STRING, category STRING, esimated_cooking_time DOUBLE, latitude DOUBLE, longitude DOUBLE)
PARTITIONED BY (dt STRING);

SET hive.exec.dynamic.partition.mode=nonstrict;

INSERT INTO TABLE restaurant_detail PARTITION (dt)
SELECT id, restaurant_name, category, esimated_cooking_time, latitude, longitude, dt FROM restaurant_detail_tmp;