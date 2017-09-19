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

//获取分类
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

//获取所有家具
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

//获取指定家具详情
//此处由于单个家具详情较多，所以使用多表查询，视图、联表均可，可在后期改善查询方式改善查询效率
router.get('/get_goods_details_by_id',(req,res)=>{
    let sql = "select g.*,b.brand_name,b.brand_area,s.s_material,s.s_structure,s.s_style,s.s_size,s.s_shape,s.s_pic from goods as g,brand as b,specification as s where s.gid = g.id and b.id = g.bid and g.id = ?"
    con.query(sql,[req.query.id],(err,result)=>{
        if(err){
            res.json({code:4,message:er.message})
        }else{
            if(result.length>0){
                res.json({code:2,data:result[0]})
            }else{
                res.json({code:4,message:'no'})
            }
        }
    })
})

//添加订单
router.post('/set_order',(req,res)=>{
    let gid=req.body.id,
        bid=req.body.bid,
        cid=req.body.cid,
        num=req.body.num,
        uid=req.body.uid,
        password = req.body.password;
    if(password==888888){
        let sql = "insert into orders (gid,bid,cid,num,uid) values (?,?,?,?,?)";
        con.query(sql,[gid,bid,cid,num,uid],(err,result)=>{
            if(err){
                res.json({code:4,message:err.message})
            }else{
                if(result.insertId){
                    res.json({code:2,message:'ok'})
                }else{
                    res.json({code:4,message:'服务器开小差了！'})
                }
            }
        })
    }else{
        res.json({code:4,message:'密码不正确'});
    }
})

module.exports=router;