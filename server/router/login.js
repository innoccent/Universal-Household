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
    let sql = "select password from user where username = ?";
    con.query(sql,[account],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message});
        }else{
            if(result.length>0){
                if(result[0].password ==md5.getMD5(pass)){
                    res.json({code:2,message:'ok'})
                }else{
                    res.json({code:4,message:'密码错误'});
                }
            }else{
                res.json({code:4,message:'账号不存在'});
            }
        }
    })
})

module.exports=router;