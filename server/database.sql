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
  cate_name VARCHAR (255),
  cate_ename VARCHAR (255),
  is_customize VARCHAR (255) DEFAULT '0'
)DEFAULT charset=utf8;

INSERT INTO categories
(cate_name, cate_ename, is_customize)
VALUES
('灯具','Lamps lanterns','0'),
('家饰','The role ofing','0'),
('收纳','the receive a','0'),
('灯具','lanterns','1'),
('家饰','domesti cofing','1'),
('沙发','the sofa','1'),
('床','tea bed','1'),
('茶几','tea table','1'),
('轮播','banner','2'),
('限时','limit','2'),
('免费','free','2'),
('设计','design','2');


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
('2','3','1','简约风茶几','centracten tea table','/static/img/nxl_chaji_1.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('1','4','1','欧美风灯饰','europe and united stateslamp','/static/img/nxl_deng1.png','999','柔和的灯光，闲逸的夜晚','元素，做旧'),
('4','4','1','欧美风吊灯','europe type drop light','/static/img/nxl_1_20.png','899','哪里黑哪里装','拼接，金属'),
('2','4','1','复古台灯','retro desk lamp','/static/img/nxl_1_22.png','799','现代简约灯!满足每个客户独特装饰的需要!','元素'),
('3','4','0','蒲公英灯','Dandelion lamp','/static/img/small_03.png','1999','打造干净舒适生活','金属，做旧'),
('3','4','0','梅花灯','Plum blossom','/static/img/small_04.png','2999','一份简约，一份闲逸，尽享舒适书海','拼接，元素，个性'),
('2','4','0','琉璃灯','Glass lamp','/static/img/samll_02.png','3999','简约大方，每一天都迎来魅力无限的自己，全新的你！','全，个性，元素'),
('2','5','1','玉兰花仿真花','magnolia simul ationflower','/static/img/nxl_jiashi_1.png','99','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','5','1','创意花瓶','creative vases place adorn','/static/img/nxl_1_36.png','399','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','5','1','创意仿真盆栽','creative simul ation bonsal','/static/img/nxl_1_32.png','999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','5','0','梅花盆栽','Plum blossom　bonsal','/static/img/small_011.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','5','0','吊兰盆栽','Chlorophyta adorn','/static/img/small_05.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','5','0','多肉盆栽','Succulents bonsal','/static/img/small_022.jpg','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','6','1','白色单人沙发','white modern sofas','/static/img/nxl_sofa_1.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','6','1','白色简约沙发','contracted white sofa','/static/img/nxl_1_42.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','6','1','室内高端沙发','indoor high-end sofa','/static/img/nxl_1_44.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','6','0','创意小木椅','centracten tea table','/static/img/small_07.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','6','0','懒人椅','centracten tea table','/static/img/small_08.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','6','0','家居沙发','centracten tea table','/static/img/small_09.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','7','1','北欧简约床','the nordic contr acted bed','/static/img/nxl_chuang_1.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','7','1','白色板式床','contracted wind tea table','/static/img/nxl_1_50.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','7','0','欧式天堂床','centracten tea table','/static/img/small_06.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','7','0','婚庆大红床','centracten tea table','/static/img/detail_13.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','8','1','简约风茶几','contracted wind tea table','/static/img/nxl_chaji_1.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','8','1','欧式古典茶几','contracted wind tea table','/static/img/nxl_1_56.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','8','0','中式古茶几','china agin tea table','/static/img/small_02.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','9','1','休闲时光茶几','china agin tea table','/static/img/banner-1_03.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','9','1','百纳储物柜','china agin tea table','/static/img/banner-3_03.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','9','1','收纳盒','china agin tea table','/static/img/bannner-2_03.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','10','1','欧普照明灯','cloth art sofa','/static/img/htbimg/t-1_07.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','10','1','北欧式木桌','european princess bed','/static/img/htbimg/xs-2_07.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','10','1','舒秒','china agin tea table','/static/img/xianshi-3_07.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','11','1','百搭花瓶','china agin tea table','/static/img/htbimg/mf-2_13.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','11','1','维纳斯','china agin tea table','/static/img/htbimg/mf-1_11.png','3999','喜欢一片简约，舒适一片生活！','简洁，清新'),
('2','12','1','波西米亚田园风格','china agin tea table','/static/img/htbimg/zj-1_18.png','3999','用家具表现悠闲、舒畅、自然的生活情趣，你想要的舒适尽在这里展现......','简洁，清新'),
('2','12','1','新古典主义风格','china agin tea table','/static/img/htbimg/zj-2_21.png','3999','一曲古典音乐，一杯香浓摩卡，一首古典诗歌，你想要的classify淋漓精致的在这里展现........','简洁，清新');

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
('7','红木','质感','中士复古','6000*3000cm','矩形','/static/img/nxl_chaji_1.png'),
('8','银','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_06.png'),
('9','建木','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_20.png'),
('10','果木','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_12.png'),
('11','康宁','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_01.png'),
('12','大猩猩玻璃','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_02.png'),
('13','席梦思','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_04.png'),
('14','鸭绒','纯色','中士复古','6000*3000cm','矩形','/static/img/detail_18.png'),
('15','羊绒','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_22.png'),
('16','纯色','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_31.png'),
('17','杂色','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_05.png'),
('18','碎花','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_07.png'),
('19','清和','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_1111.jpg'),
('20','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_19.png'),
('21','国色','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_03.png'),
('22','国风','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_29.png'),
('23','古典','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_061.jpg'),
('24','成熟','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_062.jpg'),
('25','现代','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_063.jpg'),
('26','家居','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_37.png'),
('27','城市','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_32.png'),
('28','果木','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_10.png'),
('29','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_08.png'),
('30','鸭绒','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_36.png'),
('31','梨树','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_09.png'),
('32','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/detail_11.png'),
('33','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/wxt_03.png'),
('34','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/wxt_07.png'),
('35','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/wxt_11.png'),
('36','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/nxl-100.png'),
('37','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/nxl-101.png'),
('38','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/nxl-105.png'),
('39','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/nxl-103.png'),
('40','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/nxl-102.png'),
('41','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/nxl-104.png'),
('42','红木','实木质感','中士复古','6000*3000cm','矩形','/static/img/nxl-105.png');


DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
  id INT (10) PRIMARY KEY auto_increment,
  gid VARCHAR (255),
  bid VARCHAR (255),
  cid VARCHAR (255),
  num VARCHAR (255),
  uid VARCHAR (255),
  color VARCHAR (255),
  status VARCHAR (255) DEFAULT '1',
  ad_id VARCHAR (255)
)DEFAULT charset=utf8;
ALTER TABLE orders
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;


DROP TABLE IF EXISTS address;
create table address (
  id INT (10) PRIMARY KEY auto_increment,
  uid VARCHAR (255),
  ad_name VARCHAR (255),
  ad_tel VARCHAR (255),
  ad_area VARCHAR (255),
  ad_address VARCHAR (255),
  ad_code VARCHAR (255),
  is_default VARCHAR (255) DEFAULT '0'
)DEFAULT charset=utf8;
 INSERT INTO address
(uid, ad_name, ad_tel, ad_area, ad_address, ad_code,is_default)
VALUES
('1','春花','18003210032','北京市,朝阳区','北京市朝阳区科荟路33号','100085','1'),
('1','香菜','13603065224','北京市,海淀区','北京市海淀区xx路33号','100085','0');


DROP TABLE IF EXISTS evaluate;
create table evaluate (
  id INT (10) PRIMARY KEY auto_increment,
  uid VARCHAR (255),
  content VARCHAR (1000),
  transport VARCHAR (255),
  services VARCHAR (255),
  pic VARCHAR (255)
)DEFAULT charset=utf8;




