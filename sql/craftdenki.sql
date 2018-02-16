set names utf8;
set foreign_key_checks = 0;
drop database if exists craftdenki;

create database if not exists craftdenki;
use craftdenki;


-- -----------↓会員情報テーブル↓----------------------------
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
current_cost double -- ----------------- NEW -------------------
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
product_id int,
regist_date datetime,
unique(user_id,product_id)
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


-- -----------↓購入履歴テーブル↓----------------------------
drop table if exists purchase_history_info;
create table purchase_history_info(
id int not null primary key auto_increment,
user_id varchar(16), -- unique消しました
product_id int,
product_count int,
price int,
at_cost double, -- ----------------- NEW -------------------
regist_date datetime,
update_date datetime,
status int default 0,
image_file_path varchar(100),
image_file_name varchar(50)
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
			"バドミントンセット", -- 商品名
			"ばどみんとんせっと", -- 商品名かな
			"棒優実選手愛用の羽使用。バドミントンセットです。", -- 商品詳細
			3, -- カテゴリID
			6000, -- 販売価格
			"./images/badominton.png", -- 画像ファイルパス
			"blueook.jpg", -- 画像ファイル名
			"2010/02", -- 発売日
			"amezoooon", -- 発売会社
			now(), -- 登録日
			10, -- 在庫
			700 -- 現在の平均原価
		),

		(
			10000002, -- 商品ID
			"ddss", -- 商品名
			"でぃーでぃーえすえす", -- 商品名かな
			"携帯型ゲーム機です。おもしろいよ。", -- 商品詳細
			3, -- カテゴリID
			15000, -- 販売価格
			"./images/ds.png", -- 画像ファイルパス
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
			"./images/tiisaireizouko.png", -- 画像ファイルパス
			"reizouko.jpg", -- 画像ファイル名
			"2000/02", -- 発売日
			"お宝倉庫", -- 発売会社
			now(), -- 登録日
			20, -- 在庫
			1500 -- 現在の平均原価
		),

		(
			10000004, -- 商品ID
			"いい炊飯器", -- 商品名
			"いいすいはんき", -- 商品名かな
			"踊り炊き機能付き。銅釜。", -- 商品詳細
			2, -- カテゴリID
			60000, -- 販売価格
			"./images/suihanki.png", -- 画像ファイルパス
			"odoridaki.jpg", -- 画像ファイル名
			"2017/08", -- 発売日
			"sharq", -- 発売会社
			now(), -- 登録日
			15, -- 在庫
			40000 -- 現在の平均原価
		),

		(
			10000005, -- 商品ID
			"コンピューターファミリー", -- 商品名
			"こんぴゅーたーふぁみりー", -- 商品名かな
			"家族用据え置き型ゲーム機です。略してコンファミ。", -- 商品詳細
			3, -- カテゴリID
			29800, -- 販売価格
			"./images/famikon.png", -- 画像ファイルパス
			"zukaikinnniku.jpg", -- 画像ファイル名
			"2018/02", -- 発売日
			"満天堂", -- 発売会社
			now(), -- 登録日
			40, -- 在庫
			10000 -- 現在の平均原価
		),

		(
			10000020, -- 商品ID
			"花火セット", -- 商品名
			"はなびせっと", -- 商品名かな
			"お買い得花火セットです。線香花火もあるよ。", -- 商品詳細
			3, -- カテゴリID
			1400, -- 販売価格
			"./images/hanabi.png", -- 画像ファイルパス
			"ps4.jpg", -- 画像ファイル名
			"2015/12", -- 発売日
			"sany", -- 発売会社
			now(), -- 登録日
			15, -- 在庫
			600 -- 現在の平均原価
		),

		(
			10000050, -- 商品ID
			"うさぎのぬいぐるみ", -- 商品名
			"うさぎのぬいぐるみ", -- 商品名かな
			"うさぎのぬいぐるみ。ストレス発散にはしようしないでください。", -- 商品詳細
			3, -- カテゴリID
			4000, -- 販売価格
			"./images/illustrain01-nuigurumi05.png", -- 画像ファイルパス
			"javabook.jpg", -- 画像ファイル名
			"2010/10", -- 発売日
			"craftdenki", -- 発売会社
			now(), -- 登録日
			200, -- 在庫
			1000 -- 現在の平均原価
		),

		(
			10000101, -- 商品ID
			"怪しい本", -- 商品名
			"あやしいほん", -- 商品名かな
			"怪しい本です。", -- 商品詳細
			1, -- カテゴリID
			500, -- 販売価格
			"./images/ayasiihon.png", -- 画像ファイルパス
			"blueook.jpg", -- 画像ファイル名
			"2013/02", -- 発売日
			"bookstore", -- 発売会社
			now(), -- 登録日
			100, -- 在庫
			100 -- 現在の平均原価
		),

		(
			10000102, -- 商品ID
			"英語の本", -- 商品名
			"えいごのほん", -- 商品名かな
			"英語の本です。", -- 商品詳細
			1, -- カテゴリID
			500, -- 販売価格
			"./images/eigonohon.png", -- 画像ファイルパス
			"blueook.jpg", -- 画像ファイル名
			"2013/02", -- 発売日
			"bookstore", -- 発売会社
			now(), -- 登録日
			100, -- 在庫
			100 -- 現在の平均原価
		),

		(
			10000103, -- 商品ID
			"怖い本", -- 商品名
			"こわいほん", -- 商品名かな
			"怖い本です。", -- 商品詳細
			1, -- カテゴリID
			500, -- 販売価格
			"./images/kowaihon.png", -- 画像ファイルパス
			"blueook.jpg", -- 画像ファイル名
			"2013/04", -- 発売日
			"bookstore", -- 発売会社
			now(), -- 登録日
			100, -- 在庫
			100 -- 現在の平均原価
		),

		(
			10000104, -- 商品ID
			"昔話の本", -- 商品名
			"むかしばなしのほん", -- 商品名かな
			"昔話の本です。", -- 商品詳細
			1, -- カテゴリID
			500, -- 販売価格
			"./images/mukasibanasibon.png", -- 画像ファイルパス
			"blueook.jpg", -- 画像ファイル名
			"2013/04", -- 発売日
			"bookstore", -- 発売会社
			now(), -- 登録日
			100, -- 在庫
			100 -- 現在の平均原価
		),

		(
			10000105, -- 商品ID
			"猫の本", -- 商品名
			"ねこのほん", -- 商品名かな
			"猫の本です。", -- 商品詳細
			1, -- カテゴリID
			500, -- 販売価格
			"./images/nekonohon.png", -- 画像ファイルパス
			"blueook.jpg", -- 画像ファイル名
			"2013/04", -- 発売日
			"bookstore", -- 発売会社
			now(), -- 登録日
			100, -- 在庫
			100 -- 現在の平均原価
		),

		(
			10000106, -- 商品ID
			"料理の本", -- 商品名
			"りょうりのほん", -- 商品名かな
			"料理の本です。", -- 商品詳細
			1, -- カテゴリID
			500, -- 販売価格
			"./images/ryouribon.png", -- 画像ファイルパス
			"blueook.jpg", -- 画像ファイル名
			"2013/04", -- 発売日
			"bookstore", -- 発売会社
			now(), -- 登録日
			100, -- 在庫
			100 -- 現在の平均原価
		),

		(
			10000107, -- 商品ID
			"数学の本", -- 商品名
			"すうがくのほん", -- 商品名かな
			"数学の本です。", -- 商品詳細
			1, -- カテゴリID
			500, -- 販売価格
			"./images/suugakunohon.png", -- 画像ファイルパス
			"blueook.jpg", -- 画像ファイル名
			"2013/04", -- 発売日
			"bookstore", -- 発売会社
			now(), -- 登録日
			100, -- 在庫
			100 -- 現在の平均原価
		),

		(
			10000108, -- 商品ID
			"シンプルな炊飯器", -- 商品名
			"しんぷるなすいはんき", -- 商品名かな
			"踊り炊き機能なし。シンプルイズベストな炊飯器", -- 商品詳細
			2, -- カテゴリID
			10000, -- 販売価格
			"./images/sinpurunasuihannki.png", -- 画像ファイルパス
			"odoridaki.jpg", -- 画像ファイル名
			"2017/04", -- 発売日
			"sharq", -- 発売会社
			now(), -- 登録日
			50, -- 在庫
			5000 -- 現在の平均原価
		),

		(
			10000109, -- 商品ID
			"赤い電子レンジ", -- 商品名
			"あかいでんしれんじ", -- 商品名かな
			"タイマー機能つき。赤い電子レンジです。", -- 商品詳細
			2, -- カテゴリID
			8000, -- 販売価格
			"./images/dennsirennzi.png", -- 画像ファイルパス
			"odoridaki.jpg", -- 画像ファイル名
			"2014/04", -- 発売日
			"sharq", -- 発売会社
			now(), -- 登録日
			50, -- 在庫
			3000 -- 現在の平均原価
		),

		(
			10000110, -- 商品ID
			"ハイパードライヤー", -- 商品名
			"はいぱーどらいやー", -- 商品名かな
			"ハイパー風力のドライヤーです。", -- 商品詳細
			2, -- カテゴリID
			10000, -- 販売価格
			"./images/doraiya.png", -- 画像ファイルパス
			"odoridaki.jpg", -- 画像ファイル名
			"2007/04", -- 発売日
			"sharq", -- 発売会社
			now(), -- 登録日
			50, -- 在庫
			5000 -- 現在の平均原価
		),

		(
			10000111, -- 商品ID
			"バリスタ仕込のコーヒーメーカー", -- 商品名
			"ばりすたじこみのこーひーめーかー", -- 商品名かな
			"有名コーヒー店のバリスタ監修のコーヒーメーカーです。", -- 商品詳細
			2, -- カテゴリID
			34000, -- 販売価格
			"./images/ko-hi-me-ka-.png", -- 画像ファイルパス
			"odoridaki.jpg", -- 画像ファイル名
			"2007/04", -- 発売日
			"sharq", -- 発売会社
			now(), -- 登録日
			50, -- 在庫
			20000 -- 現在の平均原価
		),

		(
			10000112, -- 商品ID
			"薄型テレビ", -- 商品名
			"うすがたてれび", -- 商品名かな
			"薄型のテレビです。", -- 商品詳細
			2, -- カテゴリID
			59800, -- 販売価格
			"./images/terebi.png", -- 画像ファイルパス
			"odoridaki.jpg", -- 画像ファイル名
			"2013/09", -- 発売日
			"sharq", -- 発売会社
			now(), -- 登録日
			50, -- 在庫
			20000 -- 現在の平均原価
		),

		(
			10000113, -- 商品ID
			"おばけのぬいぐるみ", -- 商品名
			"おばけのぬいぐるみ", -- 商品名かな
			"おばけのぬいぐるみ。寝静まったころに動きます。", -- 商品詳細
			3, -- カテゴリID
			4000, -- 販売価格
			"./images/illustrain04-nuigurumi10.png", -- 画像ファイルパス
			"javabook.jpg", -- 画像ファイル名
			"2010/10", -- 発売日
			"craftdenki", -- 発売会社
			now(), -- 登録日
			200, -- 在庫
			1000 -- 現在の平均原価
		),

		(
			10000114, -- 商品ID
			"卓球セット", -- 商品名
			"たっきゅうせっと", -- 商品名かな
			"卓球セットです。玉は2個ついてます。", -- 商品詳細
			3, -- カテゴリID
			2000, -- 販売価格
			"./images/pingpong.png", -- 画像ファイルパス
			"javabook.jpg", -- 画像ファイル名
			"2010/10", -- 発売日
			"craftdenki", -- 発売会社
			now(), -- 登録日
			200, -- 在庫
			1000 -- 現在の平均原価
		),

		(
			10000115, -- 商品ID
			"キリンの輪投げ", -- 商品名
			"きりんのわなげ", -- 商品名かな
			"キリンの輪投げです。", -- 商品詳細
			3, -- カテゴリID
			2800, -- 販売価格
			"./images/illustrain04-wanage04.png", -- 画像ファイルパス
			"javabook.jpg", -- 画像ファイル名
			"2010/10", -- 発売日
			"craftdenki", -- 発売会社
			now(), -- 登録日
			200, -- 在庫
			1000 -- 現在の平均原価
		),

		(
			10000116, -- 商品ID
			"高性能ロボットのおもちゃ", -- 商品名
			"こうせいのうろぼっとのおもちゃ", -- 商品名かな
			"ハイスペックなロボットのおもちゃです。ペッパー君はライバルです。", -- 商品詳細
			3, -- カテゴリID
			998000, -- 販売価格
			"./images/robot.png", -- 画像ファイルパス
			"javabook.jpg", -- 画像ファイル名
			"2010/10", -- 発売日
			"craftdenki", -- 発売会社
			now(), -- 登録日
			5, -- 在庫
			500000 -- 現在の平均原価
		);




INSERT INTO user_info(user_id,password,family_name,first_name,family_name_kana,first_name_kana,sex,email,status,logined,regist_date,update_date,question,answer)VALUES
("test","123","塩治","大輝","えんな","だいき",0,"test@test",1,1,"2018/01/20","2018/01/20",1,"あいす"),
("test1","1234","高橋","yuuri","たかはし","ゆうり",0,"tes1t@test",1,1,"2018/01/20","2018/01/20",2,"かれー"),
("craft","denki","高橋","湧里","たかはし","ゆうり",0,"000@test",1,1,"2018/01/01","2018/01/02",2,"aaa"),
("oda","oda","織田","信長","おだ","のぶなが",0,"odanobunaga@gmail.com",1,1,"2018/02/16","2018/02/16",1,"あけち"),
("toyotomi","toyotomi","豊臣","秀吉","とよとみ","ひでよし",0,"toyotomihideyoshi@gmail.com",1,1,"2018/02/16","2018/02/16",2,"きのした"),
("tokugawa","tokugawa","徳川","家康","とくがわ","いえやす",0,"tokugawaieyasu@gmail.com",1,1,"2018/02/16","2018/02/16",3,"いぬ"),
("takeda","takeda","武田","信玄","たけだ","しんげん",0,"takedashingen@gmail.com",1,1,"2018/02/16","2018/02/16",1,"しんげんもち"),
("uesugi","uesugi","上杉","謙信","うえすぎ","けんしん",0,"uesugikenshin@gmail.com",1,1,"2018/02/16","2018/02/16",2,"とらちよ"),
("akechi","akechi","明智","光秀","あけち","みつひで",0,"akechimitsuhide@gmail.com",1,1,"2018/02/16","2018/02/16",1,"美濃"),
("ishida","ishida","石田","三成","いしだ","みつなり",0,"ishidamitsunari@gmail.com",1,1,"2018/02/16","2018/02/16",1,"近衛"),
("naoe","kanetsugu","直江","兼続","なおえ","かねつぐ",0,"naoekanetsugu@gmail.com",1,1,"2018/02/16","2018/02/16",1,"越後"),
("date","date","伊達","正宗","だて","まさむね",0,"datemasamune@gmail.com",1,1,"2018/02/16","2018/02/16",2,"出羽"),
("sanada","yukimura","真田","幸村","さなだ","ゆきむら",0,"sanadayukimura@gmail.com",1,1,"2018/02/16","2018/02/16",3,"信濃"),
("maeda","maeda","前田","慶次","まえだ","けいじ",0,"maedakeiji@gmail.com",1,1,"2018/02/16","2018/02/16",3,"尾張");







INSERT INTO purchase_history_info(-- ------購入履歴テーブルへ--------------
			user_id,  -- ユーザーID
			product_id,-- 商品ID
			product_count, -- 購入数
			price, -- 購入時販売価格
			at_cost, -- 購入時原価
			regist_date -- 購入日時
)VALUES(
			"test",  -- ユーザーID
			10000005,-- 商品ID
			1, -- 購入数
			1728, -- 購入時販売価格
			1000, -- 購入時原価
			"2016/01/01" -- 購入日時
		),

		(
			"test1",  -- ユーザーID
			10000003,-- 商品ID
			2, -- 購入数
			6000, -- 購入時販売価格
			1500, -- 購入時原価
			now() -- 購入日時
		),

		(
			"test",  -- ユーザーID
			10000005,-- 商品ID
			10, -- 購入数
			1728, -- 購入時販売価格
			1000, -- 購入時原価
			now() -- 購入日時
		),

		(
			"test1",  -- ユーザーID
			10000020,-- 商品ID
			2, -- 購入数
			40000, -- 購入時販売価格
			20000, -- 購入時原価
			"2017/02/01" -- 購入日時
		),

		(
			"test1",  -- ユーザーID
			10000050,-- 商品ID
			30, -- 購入数
			4000, -- 購入時販売価格
			100, -- 購入時原価
			"2017/01/01" -- 購入日時
		),

		(
			"test",  -- ユーザーID
			10000004,-- 商品ID
			1, -- 購入数
			60000, -- 購入時販売価格
			40000, -- 購入時原価
			"2017/01/01" -- 購入日時
		);

INSERT INTO destination_info (user_id,user_address,user_address2,tel_number,tel_number2)
VALUES("test","東京都八王子市","東京都町田市","090-0000-0000","046-000-0000"),
		("test1","千葉県佐倉市","山梨県甲府中央","080-0000-0000","080-1111-1111");






INSERT INTO m_category VALUES(1,1,"本","本です","2016/01/01","2016/01/01");
INSERT INTO m_category VALUES(2,2,"家電・パソコン","家電・パソコンです","2016/01/01","2016/01/01");
INSERT INTO m_category VALUES(3,3,"おもちゃ・げーむ","おもちゃ・げーむです","2016/01/01","2016/01/01");




INSERT INTO favorite_info VALUES(1,"test",1,"2016/01/01");
INSERT INTO favorite_info VALUES(2,"test1",2,"2016/01/01");


INSERT INTO review_info VALUES(1,"test",10000004,"2016/01/01","いいキーボードです",3);
INSERT INTO review_info VALUES(2,"test",10000004,"2016/01/01","いい本です",1);
INSERT INTO review_info VALUES(3,"test1",10000004,"2016/01/01","いいキーボードだった",5);



INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("domon",10000002,"2018/01/03","モンハン",5);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("d",10000002,"2018/01/02","さいこう",5);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("n",10000002,"2018/01/01","かよ！！！",5);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("do",10000001,"2018/01/03","くそ",1);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("d",10000003,"2018/01/02","ふつう",3);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("n",10000004,"2018/01/01","いい！！！",5);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("do",10000004,"2018/01/03","まあまあ",3);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("d",10000001,"2018/01/02","さいこう",5);
INSERT INTO review_info(user_id,product_id,buy_item_date,review_id,evaluation_count) VALUES("n",10000001,"2018/01/01","ｆｋんがｄふいがいうｓｐｈｖｆんｖ",2);

