'use strict'
var express = require('express');
var router = express.Router();
const mysql = require('mysql');
//链接数据库
const con = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'household'
});

//获取banner
router.get('/get_banner',(req,res)=>{
    let sql = "select * from goods where cid = ?";
    con.query(sql,[req.query.cid],(err,result)=>{
        if(err){
            res.json({code:4,message:err.message})
        }else{
            // result.forEach((v,i)=>{
            //     let sql = "select * from orders where gid = ?";
            //     con.query(sql,[v.id],(er,rs)=>{
            //         if(!err){
            //             v.orders = rs.length;
            //             var num = 0;
            //             rs.forEach((t,k)=>{
            //                 let sql = "select * from evaluate where oid = ?";
            //                 con.query(sql,[t.id],(r,s)=>{
            //                     if(!r){
            //                         num+=s.length;
            //                         if(k==rs.length-1&&i==result.length-1){
            //                             v.eva = num;
            //                             res.json({code:2,data:result})
            //                         }
            //                     }
            //                 })
            //             })
            //
            //         }
            //     })
            // })
            res.json({code:2,data:result})
        }
    })
});

//猜你喜欢
router.get('/get_like',(req,res)=>{
    let sql = "select * from goods where cid in (1,2,4,5) order by rand() limit 2";
    con.query(sql,(err,result)=>{
        if(err){
            res.json({code:4,message:err.message})
        }else{
            res.json({code:2,data:result})
        }
    })
});

//搜索栏查找
router.get('/get_search',(req,res)=>{
    let sql = "select * from goods where goods_name like '%"+req.query.keyword+"%';";
    con.query(sql,(err,result)=>{
        if(err){
            res.json({code:4,message:err.message})
        }else{
            res.json({code:2,data:result})
        }
    })
});

//搜索页推荐
router.get('/get_position',(req,res)=>{
    let sql = "select id,goods_pic from goods where id in "+req.query.id;
    con.query(sql,(err,result)=>{
        if(err){
            res.json({code:4,message:err.message})
        }else{
            res.json({code:2,data:result})
        }
    })
})


module.exports=router;