-- Create and use 
Drop database etl;
CREATE DATABASE etl;
USE etl;

-- Create Two Tables
-- Create table la_airbnb
CREATE TABLE `etl`.`la_airbnb` (
  `id` INT NOT NULL,
  `host_name` varchar(100) null,
  `city` VARCHAR(100) NULL,
  `state` VARCHAR(100) NULL,
  `property_type` VARCHAR(100) NULL,
  `room_type` VARCHAR(100) NULL,
  `accommodates` int NULL,
  `price` int NULL,
  `minimum_nights` int NULL,
  `zipcode` int NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
  
-- Create table la_hotels
CREATE TABLE `etl`.`la_hotels` (
  `businessname` varchar(200) NULL,
  `address` varchar(100) not NULL,
  `city` VARCHAR(100) NULL,
  `state` VARCHAR(45) NULL,
  `zip` int NULL,
  `business_type` VARCHAR(45) NULL,
  `owner_name` VARCHAR(100) NULL);