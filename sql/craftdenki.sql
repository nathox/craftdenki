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
regist_date varchar(16),
update_date datetime,
question int,
answer varchar(32)
);

drop table if exists product_info;

create table product_info(
id int not null primary key auto_increment,
product_id int unique,
product_name varchar(100),
product_name_kana varchar(100),
product_description varchar(255),
category_id int,
price int,
image_file_path varchar(100),
image_file_name varchar(50),
release_date varchar(16),
release_company varchar(50),
status tinyint,
regist_date datetime,
update_date datetime,
item_stock int DEFAULT 0
);

drop table if exists cart_info;

create table cart_info(
id int not null primary key auto_increment,
user_id varchar(16),
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
user_id varchar(16),
product_id int,
regist_date datetime
);

drop table if exists review_info;

create table review_info(
id int not null primary key auto_increment,
user_id varchar(16),
product_id int,
buy_item_date datetime,
review_id varchar(255),
evaluation_count int
);

drop table if exists purchase_history_info;

create table purchase_history_info(
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

drop table if exists m_category;

create table m_category(
id int not null primary key auto_increment,
category_id int unique,
category_name varchar(20) unique,
category_description varchar(100),
insert_date datetime,
update_date datetime
);

INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("青い本","青色の本です。",100,2,1,"あおいほん","2017/10/10");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("赤いおもちゃ","赤色のおもちゃです。",200,4,2,"あかいおもちゃ","2017/11/11");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("黄いろい掃除機","黄色の掃除機です。",200,3,3,"きいろいそうじき","2017/11/12");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("黒い本","黒色の本です。",200,2,4,"くろいほん","2017/11/13");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("赤い掃除機","赤色の掃除機です。",200,3,5,"あかいそうじき","2017/11/14");
INSERT INTO product_info(product_id,product_name,product_name_kana,product_description,category_id,price,image_file_path,image_file_name,release_date,release_company,status,regist_date,update_date,item_stock) VALUES(6,"aaa","aaa","aaa",2,100,"aaa","aaa","2017/12/12","aaa",1,"2017/12/12","2017/12/12",500);
INSERT INTO product_info(product_id,product_name,product_name_kana,product_description,category_id,price,image_file_path,image_file_name,release_date,release_company,status,regist_date,update_date,item_stock) VALUES(7,"bbb","bbb","bbb",3,200,"bbb","bbb","2017/12/13","bbb",1,"2017/12/13","2017/12/13",500);


INSERT INTO user_info(user_id,password,family_name,first_name,family_name_kana,first_name_kana,sex,email,status,logined,regist_date,update_date,question,answer)VALUES
("test","123","塩治","大輝","えんな","だいき",0,"test@test",1,1,"2018/01/20","2018/01/20",1,"あいす"),
("test1","1234","高橋","yuuri","たかはし","ゆうり",0,"tes1t@test",1,1,"2018/01/20","2018/01/20",2,"かれー");



INSERT INTO product_info VALUES(28,10000028, "キーボード", "きーぼーど", "使いやすいキーボードです。", 2, 5000, "./img/keyboad1.jpg", "keyboad1", "2016/01/01", "fuji", 1, "2018/01/09", "2018/01/09",100);
INSERT INTO product_info VALUES(29,10000029, "こころ", "こころ", "夏目漱石の代表的な本です。", 4, 500, "./img/kokoro.jpg", "kokoro", "2016/01/01", "sagaone", 1, "2018/01/09", "2018/01/09",10);
INSERT INTO product_info VALUES(30,10000030, "電話", "でんわ", "くろいでんわです。", 2, 10000, "./img/Kurodenwa.jpg", "Kurodenwa", "2016/01/01", "sagaone", 1, "2018/01/09", "2018/01/09",50);
INSERT INTO product_info VALUES(31,10000031, "舞姫", "まいひめ", "舞姫：森鴎外著", 3, 1000, "./img/maihime.jpg", "maihime", "2018/01/20", "sagawa", 1, "2018/01/20", "2018/01/20",70);
INSERT INTO product_info VALUES(32,10000032, "マッサージマシン", "まっさーじましん", "全身コリほぐし機能搭載高性能マッサージマシンです。", 2, 120000, "./img/massage-machine.jpg", "massage-machine", "2018/01/20", "sagawa", 1, "2018/01/20", "2018/01/20",10);



INSERT INTO cart_info(user_id,product_id,product_count,price,regist_date,update_date,total_price)VALUES
("test",28,2,10000,"2018/01/20","2018/01/20",10000);


INSERT INTO purchase_history_info VALUES(1,"test",10000028,1,5000,"2016/01/01","2016/01/01");
INSERT INTO purchase_history_info VALUES(2,"test1",29,2,1000,"2016/01/01","2016/01/01");




INSERT INTO destination_info(user_id,user_address,user_address2,tel_number,tel_number2)
VALUES("test","東京都八王子市","東京都町田市","090-0000-0000","046-000-0000"),
("test1","千葉県佐倉市","山梨県甲府中央","080-0000-0000","080-1111-1111");






INSERT INTO m_category VALUES(1,2,"本","本です","2016/01/01","2016/01/01");
INSERT INTO m_category VALUES(2,3,"家電・パソコン","家電・パソコンです","2016/01/01","2016/01/01");
INSERT INTO m_category VALUES(3,4,"おもちゃ・げーむ","おもちゃ・げーむです","2016/01/01","2016/01/01");




INSERT INTO favorite_info VALUES(1,"test",28,"2016/01/01");
INSERT INTO favorite_info VALUES(2,"test1",29,"2016/01/01");


INSERT INTO review_info VALUES(1,"test",28,"2016/01/01","いいキーボードです",3);
INSERT INTO review_info VALUES(2,"test",29,"2016/01/01","いい本です",1);
INSERT INTO review_info VALUES(3,"test1",28,"2016/01/01","いいキーボードだった",5);





