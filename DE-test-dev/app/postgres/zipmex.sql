CREATE DATABASE zipmex;

/* Do not forget to use zipmex DB*/
CREATE TABLE IF NOT EXISTS public.order_detail (
	"order_created_timestamp" TIMESTAMP,
	"status" VARCHAR(256),
	"price" INT,
	"discount" DECIMAL(18,2),
	"id" VARCHAR(256),
	"driver_id" VARCHAR(256),
	"user_id" VARCHAR(256),
	"restaurant_id" VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS public.restaurant_detail (
	"id" VARCHAR(256),
	"restaurant_name" VARCHAR(256),
	"category" VARCHAR(256),
	"esimated_cooking_time"	DECIMAL(18,2),
	latitude DECIMAL(18,6),
	longitude DECIMAL(18,6)
);