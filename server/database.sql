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
  goods_pattern VARCHAR (255) DEFAULT 'A-001',
  goods_elements VARCHAR (255)
)DEFAULT charset=utf8;

INSERT INTO goods
(bid,cid,is_pos,goods_name, goods_ename, goods_pic, goods_price,goods_desc,goods_elements)
VALUES
('1','1','0','雷士照明灯','LEISHI LIGHTING','/static/img/yb2_08.png','1999','柔和的灯光，闲逸的夜晚','元素，做旧'),
('4','1','0','火山小夜灯','VOLCANO SMAL','/static/img/yb2_03.png','1899','哪里黑哪里装','拼接，金属'),
('2','1','0','现代简约灯','NOW CONTRACT','/static/img/yb2_05.png','1799','现代简约灯!满足每个客户独特装饰的需要!','元素'),
('3','2','0','莱尔诗丹','LYLE POETRY DAN','/static/img/yb2_21.png','1999','打造干净舒适生活','金属，做旧'),
('3','2','0','多维尚书架','MULTIDIMENSIONAL HISTORY','/static/img/yb2_23.png','2999','一份简约，一份闲逸，尽享舒适书海','拼接，元素，个性'),
('2','3','1','梳妆收纳台','Receive dressing table','/static/img/yb2_37.png','3999','简约大方，每一天都迎来魅力无限的自己，全新的你！','全，个性，元素'),
('2','3','1','简约风茶几','centracten tea table','/static/img/nxl_chaji_1.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新');

DROP TABLE IF EXISTS brand;
create table brand (
  id INT (10) PRIMARY KEY auto_increment,
  brand_name VARCHAR (255),
  brand_area VARCHAR (255)
)DEFAULT charset=utf8;

INSERT INTO brand
(brand_name,brand_area)
VALUES
('雷士','北京'),
('曼诗菲尔','上海'),
('莱尔诗丹','大连'),
('火山','美国');

DROP TABLE IF EXISTS specification;
create table specification (
  id INT (10) PRIMARY KEY auto_increment,
  gid VARCHAR (255),
  s_material VARCHAR (255),
  s_structure VARCHAR (255),
  s_style VARCHAR (255),
  s_size VARCHAR (255),
  s_shape VARCHAR (255),
  s_pic VARCHAR (255)
)DEFAULT charset=utf8;

INSERT INTO specification
(gid, s_material, s_structure, s_style, s_size, s_shape,s_pic)
VALUES
('1','铂金','金属构架','现代金属','60*60cm','圆柱形','/static/img/ybl6_03.png'),
('2','钛金','金属构架','现代金属','45*45cm','圆柱形','/static/img/ybl6_06.png'),
('3','合成金属','金属构架','现代金属','60*60cm','圆柱形','/static/img/ybl6_07.png'),
('4','红木','实木质感','复古实木','700*80cm','长方形','/static/img/ybl6_01.png'),
('5','意大利乔木','复古实木','欧式复古','2000*1000cm','长方形','/static/img/ybl6_04.png'),
('6','西伯利亚枕木','实木质感','欧式简约','500*70cm','矩形','/static/img/ybl6_05.png'),
('7','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/ybl6_02.png');


DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
  id INT (10) PRIMARY KEY auto_increment,
  gid VARCHAR (255),
  bid VARCHAR (255),
  cid VARCHAR (255),
  num VARCHAR (255),
  uid VARCHAR (255),
  color VARCHAR (255),
  status VARCHAR (255) DEFAULT '1'
)DEFAULT charset=utf8;
ALTER TABLE orders
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;