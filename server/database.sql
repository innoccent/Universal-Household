DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
  id INT (10) PRIMARY KEY auto_increment,
  username VARCHAR (255) UNIQUE ,
  `password` VARCHAR (255),
  tel VARCHAR (255)
)DEFAULT charset=utf8;

INSERT INTO `user`
(username, password, tel)
VALUES
('奥黛丽·赫本','e10adc3949ba59abbe56e057f20f883e','13000000000'),
('初春饰利','e10adc3949ba59abbe56e057f20f883e','14000000000'),
('鲁迅','e10adc3949ba59abbe56e057f20f883e','15000000000');

