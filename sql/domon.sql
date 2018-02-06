drop database if exists craftdenki;

create database if not exists craftdenki;

use craftdenki;

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


INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_data) VALUES("aaa","aaa",100,100,5,"aaa","2017/10/10");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_data) VALUES("bbb","bbb",200,200,9,"aaa","2017/11/11");