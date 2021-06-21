use zipmex;

create external table zipmex.order_detail (order_created_timestamp STRING, status STRING, price DOUBLE, discount DOUBLE, id STRING, driver_id STRING, user_id STRING, restaurant_id STRING)
PARTITIONED BY (dt STRING);

SET hive.exec.dynamic.partition.mode=nonstrict;

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190101';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190102';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190103';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190104';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190105';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190106';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190107';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190108';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190109';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190110';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190111';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190112';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190113';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190114';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190115';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190116';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190117';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190118';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190119';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190120';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190121';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190122';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190123';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190124';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190125';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190126';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190127';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190128';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190129';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190130';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190131';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190201';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190202';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190203';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190204';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190205';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190206';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190207';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190208';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190209';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190210';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190211';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190212';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190213';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190214';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190215';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190216';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190217';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190218';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190219';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190220';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190221';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190222';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190223';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190224';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190225';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190226';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190227';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190228';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190301';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190302';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190303';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190304';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190305';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190306';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190307';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190308';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190309';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190310';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190311';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190312';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190313';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190314';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190315';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190316';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190317';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190318';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190319';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190320';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190321';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190322';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190323';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190324';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190325';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190326';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190327';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190328';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190329';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190330';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190331';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190401';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190402';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190403';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190404';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190405';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190406';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190407';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190408';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190409';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190410';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190411';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190412';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190413';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190414';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190415';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190416';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190417';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190418';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190419';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190420';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190421';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190422';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190423';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190424';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190425';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190426';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190427';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190428';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190429';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190430';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190501';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190502';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190503';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190504';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190505';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190506';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190507';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190508';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190509';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190510';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190511';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190512';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190513';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190514';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190515';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190516';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190517';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190518';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190519';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190520';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190521';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190522';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190523';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190524';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190525';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190526';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190527';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190528';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190529';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190530';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190531';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190601';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190602';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190603';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190604';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190605';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190606';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190607';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190608';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190609';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190610';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190611';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190612';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190613';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190614';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190615';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190616';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190617';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190618';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190619';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190620';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190621';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190622';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190623';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190624';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190625';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190626';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190627';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190628';

INSERT INTO TABLE zipmex.order_detail PARTITION (dt)
SELECT order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt 
FROM order_detail_tmp 
where dt='20190629';