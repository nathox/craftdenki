set names utf8;
set foreign_key_checks = 0;
drop database if exists craftdenki;

create database if not exists craftdenki;
use craftdenki;


drop table if exists user_info;

create table user_info(
id int not null primary key auto_increment,
user_id varchar(16) unique,
password varchar(16),
family_name varchar(32),
first_name varchar(32),
family_name_kana varchar(32),
first_name_kana varchar(32),
sex tinyint,
email varchar(32),
status tinyint,
logined tinyint,
regist_date datetime,
update_date datetime,
question varchar(100),
answer varchar(32)
);

drop table if exists product_info;

create table product_info(
id int not null primary key auto_increment,
product_id int unique,
product_name varchar(100) unique,
product_name_kana varchar(100) unique,
product_description varchar(255),
category_id int,
price int,
image_file_path varchar(100),
image_file_name varchar(50),
release_date datetime,
release_company varchar(50),
status tinyint,
regist_date datetime,
update_date datetime,
item_stock int
);

drop table if exists cart_info;

create table cart_info(
id int not null primary key auto_increment,
user_id varchar(16) unique,
product_id int,
product_count int,
price int,
regist_date datetime,
update_date datetime,
total_price int
);

drop table if exists favorite_info;

create table favorite_info(
id int not null primary key auto_increment,
user_id varchar(16) unique,
product_id int,
regist_date datetime
);

drop table if exists review_info;

create table review_info(
id int not null primary key auto_increment,
user_id varchar(16) unique,
product_id int,
buy_item_date datetime,
review_id varchar(255),
evaluation_count int
);

drop table if exists purchese_info;

create table purchese_info(
id int not null primary key auto_increment,
user_id varchar(16) unique,
product_id int,
product_count int,
price int,
regist_date datetime,
update_date datetime
);

drop table if exists destination_info;

create table destination_info(
id int not null primary key auto_increment,
user_id varchar(16) unique,
user_address varchar(50),
user_address2 varchar(50),
user_address3 varchar(50),
tel_number varchar(13),
tel_number2 varchar(13),
tel_number3 varchar(13)
);

drop table if exists m_caegory;

create table m_caegory(
id int not null primary key auto_increment,
category_id int unique,
category_name varchar(20) unique,
category_description varchar(100),
insert_date datetime,
update_date datetime
);

INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("aaa","aaa",100,1,1,"aaa","2017/10/10");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("bbb","bbb",200,2,2,"bbb","2017/11/11");