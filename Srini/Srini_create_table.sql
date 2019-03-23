-- Create and use customer_db
CREATE DATABASE etl;
USE etl;

-- Create Two Tables
-- Create table dc_airbnb
CREATE TABLE `etl`.`dc_airbnb` (
  `id` INT NOT NULL,
  `airbnb_id` INT NULL,
  `name` VARCHAR(1000) NULL,
  `summary` VARCHAR(1000) NULL,
  `transit` VARCHAR(1000) NULL,
  `access` VARCHAR(1000) NULL,
  `host_name` VARCHAR(100) NULL,
  `host_location` VARCHAR(100) NULL,
  `host_neighbourhood` VARCHAR(100) NULL,
  `street` VARCHAR(100) NULL,
  `city` VARCHAR(100) NULL,
  `state` VARCHAR(45) NULL,
  `zipcode` VARCHAR(10) NULL,
  `market` VARCHAR(100) NULL,
  `smart_location` VARCHAR(100) NULL,
  `country_code` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `latitude` DOUBLE NULL,
  `longitude` DOUBLE NULL,
  `property_type` VARCHAR(45) NULL,
  `room_type` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
  
-- Create table dc_hotels
CREATE TABLE `etl`.`dc_hotels` (
  `id` INT NOT NULL,
  `hotel_id` INT NULL,
  `web_url` VARCHAR(100) NULL,
  `phone` VARCHAR(45) NULL,
  `zip` VARCHAR(10) NULL,
  `gis_id` VARCHAR(45) NULL,
  `address` VARCHAR(100) NULL,
  `numrooms` INT NULL,
  `name` VARCHAR(100) NULL,
  `latitude` DOUBLE NULL,
  `longiture` DOUBLE NULL,
  `addrid` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
-- Add aditional columns to dc_hotels
ALTER TABLE `etl`.`dc_hotels` 
ADD COLUMN `dc_hotelscol` VARCHAR(45) NULL AFTER `addrid`,
ADD COLUMN `city` VARCHAR(100) NULL AFTER `dc_hotelscol`,
ADD COLUMN `state` VARCHAR(45) NULL AFTER `city`,
ADD COLUMN `country_code` VARCHAR(45) NULL AFTER `state`,
ADD COLUMN `country` VARCHAR(45) NULL AFTER `country_code`;
ALTER TABLE `etl`.`dc_hotels` 
CHANGE COLUMN `hotel_id` `objectid` INT(11) NULL DEFAULT NULL ;
ALTER TABLE `etl`.`dc_hotels` 
CHANGE COLUMN `latitude` `x` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `longiture` `y` DOUBLE NULL DEFAULT NULL ;
ALTER TABLE `etl`.`dc_hotels` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ;
ALTER TABLE `etl`.`dc_hotels` 
CHANGE COLUMN `web_url` `web_url` VARCHAR(1000) NULL DEFAULT NULL ;

-- Add default value for the columns
ALTER TABLE `etl`.`dc_hotels` 
CHANGE COLUMN `city` `city` VARCHAR(100) NULL DEFAULT 'Washington' ,
CHANGE COLUMN `state` `state` VARCHAR(45) NULL DEFAULT 'DC' ,
CHANGE COLUMN `country_code` `country_code` VARCHAR(45) NULL DEFAULT 'US' ,
CHANGE COLUMN `country` `country` VARCHAR(45) NULL DEFAULT 'United States' ;