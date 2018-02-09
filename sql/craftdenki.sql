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




-- -----------↓商品情報テーブル↓----------------------------
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
status tinyint DEFAULT 0,
regist_date datetime,
update_date datetime,
item_stock int DEFAULT 0,
current_cost int -- ----------------- NEW -------------------
);


drop table if exists cart_info;

create table cart_info(
id int not null primary key auto_increment,
user_id varchar(25),
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
product_id int unique,
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
at_cost int, -- ----------------- NEW -------------------
regist_date datetime,
update_date datetime,
status int default 0
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

-- ---------------↓INSERT文↓--------------------------------------

INSERT INTO product_info(-- ------商品情報テーブルへ--------------
			product_id, -- 商品ID
			product_name,-- 商品名
			product_name_kana, -- 商品名かな
			product_description, -- 商品詳細
			category_id, -- カテゴリID
			price, -- 販売価格
			image_file_path, -- 画像ファイルパス
			image_file_name, -- 画像ファイル名
			release_date, -- 発売日
			release_company, -- 発売会社
			regist_date, -- 登録日
			item_stock, -- 在庫
			current_cost -- 現在の平均原価
) VALUES(
			10000001, -- 商品ID
			"青い本", -- 商品名
			"あおいほん", -- 商品名かな
			"青い本です。", -- 商品詳細
			1, -- カテゴリID
			1000, -- 販売価格
			"./images/blueBook.jpg", -- 画像ファイルパス
			"blueBook.jpg", -- 画像ファイル名
			"2010/02", -- 発売日
			"amezoooon", -- 発売会社
			now(), -- 登録日
			10, -- 在庫
			700 -- 現在の平均原価
		),

		(
			10000002, -- 商品ID
			"モンスターハンター・:ワールド", -- 商品名
			"もんすたーはんたーわーるど", -- 商品名かな
			"PS4のゲームソフト。", -- 商品詳細
			3, -- カテゴリID
			8000, -- 販売価格
			"./images/monhan.jpg", -- 画像ファイルパス
			"monhan.jpg", -- 画像ファイル名
			"2018/01", -- 発売日
			"capcum", -- 発売会社
			now(), -- 登録日
			100, -- 在庫
			6500 -- 現在の平均原価
		),

		(
			10000003, -- 商品ID
			"小さい冷蔵庫", -- 商品名
			"ちいさいれいぞうこ", -- 商品名かな
			"一人暮らし用の冷蔵庫", -- 商品詳細
			2, -- カテゴリID
			6000, -- 販売価格
			"./images/reizouko.jpg", -- 画像ファイルパス
			"reizouko.jpg", -- 画像ファイル名
			"2000/02", -- 発売日
			"お宝倉庫", -- 発売会社
			now(), -- 登録日
			4, -- 在庫
			1500 -- 現在の平均原価
		),

		(
			10000004, -- 商品ID
			"いい炊飯器", -- 商品名
			"いいすいはんき", -- 商品名かな
			"踊り炊き機能付き。銅釜。", -- 商品詳細
			2, -- カテゴリID
			60000, -- 販売価格
			"./images/odoridaki.jpg", -- 画像ファイルパス
			"odoridaki.jpg", -- 画像ファイル名
			"2017/08", -- 発売日
			"sharq", -- 発売会社
			now(), -- 登録日
			15, -- 在庫
			40000 -- 現在の平均原価
		),

		(
			10000005, -- 商品ID
			"筋肉をつくる食事栄養パーフェクト事典", -- 商品名
			"きんにくをつくるしょくじえいようぱーふぇくとじてん", -- 商品名かな
			"筋肉をつけたい人のための食事と栄養摂取のバイブル
			 筋肉を増やすためにはトレーニングだけではなく、
			 同じくらい食事も重要であることが明らかとなっています。
			 本書では、「スポーツ科学」「栄養学」「ボディビル」の理論と
			 研究データから導き出した、筋トレの効果を最大限に高めるための
			 栄養摂取と食事法の最新メソッドを徹底解説。", -- 商品詳細
			1, -- カテゴリID
			1728, -- 販売価格
			"./images/zukaikinnniku.jpg", -- 画像ファイルパス
			"zukaikinnniku.jpg", -- 画像ファイル名
			"2018/02", -- 発売日
			"ナツメ社", -- 発売会社
			now(), -- 登録日
			1, -- 在庫
			1000 -- 現在の平均原価
		);
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("赤いおもちゃ","赤色のおもちゃです。",200,4,20000000,"あかいおもちゃ","2017/11");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("黄いろい掃除機","黄色の掃除機です。",200,3,30000000,"きいろいそうじき","2017/11");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("黒い本","黒色の本です。",200,2,40000000,"くろいほん","2017/11");
INSERT INTO product_info(product_name,product_description,price,category_id,product_id,product_name_kana,release_date) VALUES("赤い掃除機","赤色の掃除機です。",200,3,50000000,"あかいそうじき","2017/11");
INSERT INTO product_info(product_id,product_name,product_name_kana,product_description,category_id,price,image_file_path,image_file_name,release_date,release_company,status,regist_date,update_date,item_stock) VALUES(60000000,"aaa","あああ","aaa",2,100,"./images/aaa.jpg","aaa.jpg","2017/12","aaa",0,"2017/12/12","2017/12/12",500);
INSERT INTO product_info(product_id,product_name,product_name_kana,product_description,category_id,price,image_file_path,image_file_name,release_date,release_company,status,regist_date,update_date,item_stock) VALUES(70000000,"bbb","びびび","bbb",3,200,"./images/bbb.gif","bbb.gif","2017/12","bbb",0,"2017/12/13","2017/12/13",500);


INSERT INTO user_info(user_id,password,family_name,first_name,family_name_kana,first_name_kana,sex,email,status,logined,regist_date,update_date,question,answer)VALUES
("test","123","塩治","大輝","えんな","だいき",0,"test@test",1,1,"2018/01/20","2018/01/20",1,"あいす"),
("test1","1234","高橋","yuuri","たかはし","ゆうり",0,"tes1t@test",1,1,"2018/01/20","2018/01/20",2,"かれー"),
("craft","denki","高橋","湧里","たかはし","ゆうり",0,"000@test",1,1,"2018/01/01","2018/01/02",2,"aaa");



INSERT INTO product_info VALUES(28,10000028, "キーボード", "きーぼーど", "使いやすいキーボードです。", 2, 5000, "./img/keyboad1.jpg", "keyboad1.jpg", "2016/01", "fuji", 1, "2018/01/09", "2018/01/09",100,50);
INSERT INTO product_info VALUES(29,10000029, "こころ", "こころ", "夏目漱石の代表的な本です。", 3, 500, "./img/kokoro.jpg", "kokoro.jpg", "2016/01", "sagaone", 1, "2018/01/09", "2018/01/09",10,100);
INSERT INTO product_info VALUES(30,10000030, "電話", "でんわ", "くろいでんわです。", 2, 10000, "./img/Kurodenwa.jpg", "Kurodenwa.jpg", "2016/01", "sagaone", 1, "2018/01/09", "2018/01/09",50,90);
INSERT INTO product_info VALUES(32,10000032, "マッサージマシン", "まっさーじましん", "全身コリほぐし機能搭載高性能マッサージマシンです。", 2, 120000, "./img/massage-machine.jpg", "massage-machine.jpg", "2018/01", "sagawa", 1, "2018/01/20", "2018/01/20",10,50);



INSERT INTO cart_info(user_id,product_id,product_count,price,regist_date,update_date,total_price)VALUES
("test",10000028,2,10000,"2018/01/20","2018/01/20",10000);


INSERT INTO purchase_history_info VALUES(1,"test",10000005,1,1728,1000,"2016/01/01","2016/01/01",0);
INSERT INTO purchase_history_info VALUES(2,"test1",10000002,2,8000,6500,"2016/01/01","2016/01/01",0);


INSERT INTO destination_info(user_id,user_address,user_address2,tel_number,tel_number2)
VALUES("test","東京都八王子市","東京都町田市","090-0000-0000","046-000-0000"),
("test1","千葉県佐倉市","山梨県甲府中央","080-0000-0000","080-1111-1111");






INSERT INTO m_category VALUES(1,1,"本","本です","2016/01/01","2016/01/01");
INSERT INTO m_category VALUES(2,2,"家電・パソコン","家電・パソコンです","2016/01/01","2016/01/01");
INSERT INTO m_category VALUES(3,3,"おもちゃ・げーむ","おもちゃ・げーむです","2016/01/01","2016/01/01");




INSERT INTO favorite_info VALUES(1,"test",10000028,"2016/01/01");
INSERT INTO favorite_info VALUES(2,"test1",10000029,"2016/01/01");


INSERT INTO review_info VALUES(1,"test",10000028,"2016/01/01","いいキーボードです",3);
INSERT INTO review_info VALUES(2,"test",10000029,"2016/01/01","いい本です",1);
INSERT INTO review_info VALUES(3,"test1",10000028,"2016/01/01","いいキーボードだった",5);



INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("domon",10000002,"2018/01/03","モンハン",5);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("d",10000002,"2018/01/02","さいこう",5);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("n",10000002,"2018/01/01","かよ！！！",5);
