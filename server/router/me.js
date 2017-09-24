//me(个人页路由设置)
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

router.get('/get_info_by_id',(req,res)=>{
    let sql = "select username,ename,pic,message,tel from user where id = ?";
    con.query(sql,[req.query.id],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message});
        }else{
            res.json({code:2,data:result[0]})
        }
    })
});

router.get('/get_address_by_uid',(req,res)=>{
    let sql = "select * from address where uid = ?";
    con.query(sql,[req.query.uid],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message})
        }else{
            res.json({code:2,data:result})
        }
    })
});

//添加用户地址
router.post('/add_address_by_id',(req,res)=>{
    let uid = req.body.uid,
        username = req.body.form.username,
        tel = req.body.form.tel,
        area_1 = req.body.form.area_1,
        area_2 = req.body.form.area_2,
        address = req.body.form.address;
    let sql = "insert into address (uid,ad_name,ad_tel,ad_area,ad_address) values (?,?,?,?,?)";
    con.query(sql,[uid,username,tel,area_1.concat('市,'+area_2),address],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message})
        }else{
            if(result.affectedRows){
                res.json({code:2,message:'ok'})
            }else{
                res.json({code:4,message:'no'})
            }
        }
    })
});

//通过id获取指定地址
router.get('/get_address_by_id',(req,res)=>{
    let sql = "select * from address where id = ?";
    con.query(sql,[req.query.id],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message})
        }else{
            if(result.length){
                res.json({code:2,data:result[0]})
            }else{
                res.json({code:4,message:'no'})
            }
        }
    })
});

//通过id修改指定地址
router.post('/update_address_by_id',(req,res)=>{
    let id = req.body.form.aid,
        username = req.body.form.username,
        tel = req.body.form.tel,
        area_1 = req.body.form.area_1,
        area_2 = req.body.form.area_2,
        address = req.body.form.address;
    let sql = "update address set ad_name = ?,ad_tel = ?,ad_area = ?,ad_address = ? where id = ?";
    con.query(sql,[username,tel,area_1+'市,'+area_2,address,id],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message})
        }else{
            if(result.affectedRows){
                res.json({code:2,message:'ok'})
            }else{
                res.json({code:4,message:'no'})
            }
        }
    })
})

module.exports=router;