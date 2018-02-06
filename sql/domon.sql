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
release_date datetime,
release_company varchar(50),
status tinyint,
regist_date datetime,
update_date datetime,
item_stock int
);


INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("青い本","青色の本です。",100,2,1,"あおいほん","2017/10/10");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("赤いおもちゃ","赤色のおもちゃです。",200,4,2,"あかいおもちゃ","2017/11/11");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("黄いろい掃除機","黄色の掃除機です。",200,3,3,"きいろいそうじき","2017/11/12");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("黒い本","黒色の本です。",200,2,4,"くろいほん","2017/11/13");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("赤い掃除機","赤色の掃除機です。",200,3,5,"あかいそうじき","2017/11/14");