'use strict'
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

router.post('/check_account',(req,res)=>{
    var account = req.body.account,
        pass = req.body.pass;
    let sql = "select * from user where username = ?";
    con.query(sql,[account],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message});
        }else{
            if(result.length>0){
                if(result[0].password ==md5.getMD5(pass)){
                    res.json({code:2,message:'ok',id:result[0].id})
                }else{
                    res.json({code:4,message:'密码错误'});
                }
            }else{
                res.json({code:4,message:'账号不存在'});
            }
        }
    })
});

router.post('/check_register',(req,res)=>{
    var account = req.body.account,
        pass = req.body.pass,
        phone = req.body.phone,
        check = req.body.check;
    if(check==8888){
        let sql = "select * from user where username = ? or tel = ?";
        con.query(sql,[account,phone],(err,result)=>{
            if(err){
                res.json({code:4,message:err.message});
            }else{
                if(result.length>0){
                    res.json({code:4,message:'账号已存在/该手机号已注册'})
                }else{
                   let sql =  "insert into user (username,password,tel) values (?,?,?)";
                   con.query(sql,[account,md5.getMD5(pass),phone],(er,rs)=>{
                       if(er){
                           res.json({code:4,message:'注册失败，请重试！'})
                       }else{
                           if(rs.insertId){
                               res.json({code:2,message:'ok'})
                           }else{
                               res.json({code:4,message:'注册失败，请重试！'})
                           }
                       }
                   })
                }
            }
        })
    }else{
        res.json({code:4,message:'验证码错误'})
    }
})

module.exports=router;