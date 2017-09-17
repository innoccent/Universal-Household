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
  cid VARCHAR (255),
  is_pos VARCHAR (255) DEFAULT '0',
  goods_name VARCHAR (255),
  goods_ename VARCHAR (255),
  goods_pic VARCHAR (255),
  goods_price VARCHAR (255)
)DEFAULT charset=utf8;

INSERT INTO goods
(cid, goods_name, goods_ename, goods_pic, goods_price)
VALUES
('1','雷士照明灯','LEISHI LIGHTING','/static/img/yb2_08.png','1999'),
('1','火山小夜灯','VOLCANO SMAL','/static/img/yb2_03.png','1899'),
('1','现代简约灯','NOW CONTRACTED','/static/img/yb2_05.png','1799'),
('2','莱尔诗丹','LYLE POETRY DAN','/static/img/yb2_21.png','1999'),
('2','多维尚书架','MULTIDIMENSIONAL HISTORY','/static/img/yb2_23.png','2999'),
('3','梳妆收纳台','Receive dressing table','/static/img/yb2_37.png','3999');