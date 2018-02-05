drop database if exists domon;

create database if not exists domon;

use domon;

drop table if exists product_info;

create table product_info(
id int not null primary key auto_increment,
product_id int,
product_name varchar(100),
product_name_kana varchar(100),
product_description varchar(255),
category_id int,
price int,
image_file_path varchar(100),
image_file_name varchar(50),
release_data datetime,
release_company varchar(50),
status tinyint,
regist_date datetime,
update_date datetime,
item_stock int
);