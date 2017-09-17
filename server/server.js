'use strict'
const express = require('express');
const server = express();
const port = 18080;

const mysql = require('mysql');
const bodyParser = require('body-parser');

const crypto = require('crypto');
const md5 = require('./class/function')


//加载登录路由
const user = require('./router/login');

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

server.listen(port);

