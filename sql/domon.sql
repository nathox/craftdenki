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




INSERT INTO product_info(product_id,product_name,product_name_kana,product_description,category_id,price,image_file_path,image_file_name,release_date,release_company,status,regist_date,update_date,item_stock) VALUES(6,"aaa","aaa","aaa",2,100,"aaa","aaa","2017/12/12","aaa",1,"2017/12/12","2017/12/12",500);
INSERT INTO product_info(product_id,product_name,product_name_kana,product_description,category_id,price,image_file_path,image_file_name,release_date,release_company,status,regist_date,update_date,item_stock) VALUES(7,"bbb","bbb","bbb",3,200,"bbb","bbb","2017/12/13","bbb",1,"2017/12/13","2017/12/13",500);