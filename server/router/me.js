//me(个人页路由设置)

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
    let sql = "select username,ename,pic,message from user where id = ?";
    con.query(sql,[req.query.id],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message});
        }else{
            res.json({code:2,data:result[0]})
        }
    })
})

module.exports=router;