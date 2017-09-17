//goods(商品页路由设置)

var express = require('express');
var router = express.Router();
var md5 = require('../class/function');
const mysql = require('mysql');
//链接数据库
const con = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'household'
});

router.get('/get_categories',(req,res)=>{
    let sql = "select * from categories";
    con.query(sql,(err,result)=>{
        if(err){
            res.json({code:4,message:err.message});
        }else{
            res.json({code:2,data:result})
        }
    })
})

router.get('/get_goods',(req,res)=>{
    let sql = "select * from goods";
    con.query(sql,(err,result)=>{
        if(err){
            res.json({code:4,message:err.message});
        }else{
            res.json({code:2,data:result})
        }
    })
})

module.exports=router;