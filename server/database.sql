DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
  id INT (10) PRIMARY KEY auto_increment,
  username VARCHAR (255) UNIQUE ,
  password VARCHAR (255)
)DEFAULT charset=utf8;

