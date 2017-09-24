'use strict'
const express = require('express');
const server = express();
const port = 18080;

const mysql = require('mysql');
const bodyParser = require('body-parser');
const multer = require('multer');
const upload = multer({dest:'./public/tmp'});

const crypto = require('crypto');
const md5 = require('./class/function');


//加载登录路由
const user = require('./router/login');

//加载个人页路由
const info = require('./router/me');

//加载商品页路由
const goods = require('./router/goods');

//加载首页路由
const index = require('./router/index')

//链接数据库
const con = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'household'
});

//中间件设置
server.use(express.static('./public'));
server.use(bodyParser.json());

server.use('/api/login',user);

server.use('/api/user',info);

server.use('/api/goods',goods);

server.use('/api/index',index)

server.listen(port);

