DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
  id INT (10) PRIMARY KEY auto_increment,
  username VARCHAR (255) UNIQUE ,
  `password` VARCHAR (255),
  tel VARCHAR (255),
  pic VARCHAR (255),
  ename VARCHAR (255) DEFAULT 'Litte Lord',
  message VARCHAR (255) DEFAULT '暂未编辑'
)DEFAULT charset=utf8;

INSERT INTO `user`
(username, password, tel,ename,message)
VALUES
('奥黛丽·赫本','e10adc3949ba59abbe56e057f20f883e','13000000000','Mrs Li d Hepburn','生活其实本就该这样平平淡淡…'),
('初春饰利','e10adc3949ba59abbe56e057f20f883e','14000000000','Mrs chu c Kro','sakura is beautiful'),
('鲁迅','e10adc3949ba59abbe56e057f20f883e','15000000000','Lu xu','教书育人');

DROP TABLE IF EXISTS categories;
CREATE TABLE categories(
  id INT (10) PRIMARY KEY auto_increment,
  cate_name VARCHAR (255) UNIQUE ,
  cate_ename VARCHAR (255)
)DEFAULT charset=utf8;

INSERT INTO categories
(cate_name, cate_ename)
VALUES
('灯具','Lamps lanterns'),
('家饰','The role ofing'),
('收纳','the receive a');

DROP TABLE IF EXISTS goods;
CREATE TABLE goods(
  id INT (10) PRIMARY KEY auto_increment,
  bid VARCHAR (255),
  cid VARCHAR (255),
  is_pos VARCHAR (255) DEFAULT '0',
  goods_name VARCHAR (255),
  goods_ename VARCHAR (255),
  goods_pic VARCHAR (255),
  goods_price VARCHAR (255),
  goods_desc VARCHAR (255),
  goods_pattern VARCHAR (255) DEFAULT 'A-001'
)DEFAULT charset=utf8;

INSERT INTO goods
(bid,cid,is_pos,goods_name, goods_ename, goods_pic, goods_price,goods_desc)
VALUES
('1','1','0','雷士照明灯','LEISHI LIGHTING','/static/img/yb2_08.png','1999','柔和的灯光，闲逸的夜晚'),
('4','1','0','火山小夜灯','VOLCANO SMAL','/static/img/yb2_03.png','1899','哪里黑哪里装'),
('2','1','0','现代简约灯','NOW CONTRACT','/static/img/yb2_05.png','1799','现代简约灯!满足每个客户独特装饰的需要!'),
('3','2','0','莱尔诗丹','LYLE POETRY DAN','/static/img/yb2_21.png','1999','打造干净舒适生活'),
('3','2','0','多维尚书架','MULTIDIMENSIONAL HISTORY','/static/img/yb2_23.png','2999','一份简约，一份闲逸，尽享舒适书海'),
('2','3','1','梳妆收纳台','Receive dressing table','/static/img/yb2_37.png','3999','简约大方，每一天都迎来魅力无限的自己，全新的你！'),
('2','3','1','简约风茶几','centracten tea table','/static/img/nxl_chaji_1.png','3999','喜欢一片简约，舒适一片生活！');

DROP TABLE IF EXISTS brand;
create table brand (
  id INT (10) PRIMARY KEY auto_increment,
  brand_name VARCHAR (255)
)DEFAULT charset=utf8;

INSERT INTO brand
(brand_name)
VALUES
('雷士'),
('曼诗菲尔'),
('莱尔诗丹'),
('火山');