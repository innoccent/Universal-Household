//goods(商品页路由设置)
'use strict'
var express = require('express');
var router = express.Router();
var md5 = require('../class/function');
const mysql = require('mysql');
const multer = require('multer');
const upload = multer({dest: './public/tmp'});
const fs = require('fs');
const path = require('path');
//链接数据库
const con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'household'
});

//获取分类
router.get('/get_categories', (req, res) => {
    let sql = "select * from categories where is_customize = ?";
    con.query(sql, [req.query.is_customize],(err, result) => {
        if (err) {
            res.json({code: 4, message: err.message});
        } else {
            res.json({code: 2, data: result})
        }
    })
})

//获取所有家具
router.get('/get_goods', (req, res) => {
    let sql = "select * from goods where cid in "+req.query.id;
    con.query(sql, (err, result) => {
        if (err) {
            res.json({code: 4, message: err.message});
        } else {
            res.json({code: 2, data: result})
        }
    })
})

//获取指定家具详情
//此处由于单个家具详情较多，所以使用多表查询，视图、联表均可，可在后期改善查询方式改善查询效率
router.get('/get_goods_details_by_id', (req, res) => {
    let sql = "select g.*,b.brand_name,b.brand_area,s.s_material,s.s_structure,s.s_style,s.s_size,s.s_shape,s.s_pic from goods as g,brand as b,specification as s where s.gid = g.id and b.id = g.bid and g.id = ?"
    con.query(sql, [req.query.id], (err, result) => {
        if (err) {
            res.json({code: 4, message: er.message})
        } else {
            if (result.length > 0) {
                res.json({code: 2, data: result[0]})
            } else {
                res.json({code: 4, message: 'no'})
            }
        }
    })
})

//添加订单
router.post('/set_order', (req, res) => {
    let gid = req.body.id,
        bid = req.body.bid,
        cid = req.body.cid,
        num = req.body.num,
        uid = req.body.uid,
        color = req.body.color,
        status = req.body.status,
        password = req.body.password;
    if (password == 888888) {
        let sql = "select id from address where uid = ? and is_default=1";
        con.query(sql, [uid], (err, result) => {
            if (err) {
                res.json({code: 4, message: err.message});
            } else {
                if (result.length) {
                    let sql = "insert into orders (gid,bid,cid,num,uid,color,status,ad_id) values (?,?,?,?,?,?,?,?)";
                    con.query(sql, [gid, bid, cid, num, uid, color, status, result[0].id], (er, rs) => {
                        if (er) {
                            res.json({code: 4, message: err.message})
                        } else {
                            if (rs.insertId) {
                                res.json({code: 2, message: 'ok'})
                            } else {
                                res.json({code: 4, message: '服务器开小差了！'})
                            }
                        }
                    })
                } else {
                    res.json({code: 4, message: '尚未设置默认地址！'})
                }
            }
        })
    } else {
        res.json({code: 4, message: '密码不正确'});
    }
});

//根据uid获取指定用户所有订单
router.get('/get_orders_by_uid', (req, res) => {
    let sql = "select o.*,g.goods_name,g.goods_ename,g.goods_pic,g.goods_price,s.s_size,a.ad_address from orders as o,goods as g,specification as s,address as a where o.uid=? and o.gid=g.id and s.gid=g.id and a.id=o.ad_id";
    con.query(sql, [req.query.uid], (err, result) => {
        if (err) {
            res.json({code: 4, message: err.message})
        } else {
            res.json({code: 2, message: 'ok', orders: result})
        }
    })
});

//根据id批量更新订单状态
router.get('/update_orders_status_by_id', (req, res) => {
    let sql = "update orders set status = 4 where id = ? ";
    con.query(sql, [req.query.id], (err, result) => {
        if (err) {
            res.json({code: 4, message: '服务器开小差了！'})
        } else {
            if (result.affectedRows) {
                res.json({code: 2, message: '操作成功！'})
            } else {
                res.json({code: 4, message: '服务器开小差了！'})
            }
        }
    })
})

//从goods表中按照id获取指定商品信息
router.get('/get_goods_info_by_id', (req, res) => {
    let sql = "select g.goods_name,g.goods_ename,s.s_pic from goods as g,orders as o,specification as s where o.id = ? and o.gid=g.id and o.gid=s.gid";
    con.query(sql, [req.query.id], (err, result) => {
        if (err) {
            res.json({code: 4, message: err.messgae});
        } else {
            if (result.length) {
                res.json({code: 2, data: result[0]})
            } else {
                res.json({code: 4, message: 'no'});
            }
        }
    })
});


//获取评论图片
router.post('/orders_evaluate_currimg', upload.single('file'), (req, res) => {
    res.json(req.file);
})

//上传评论
router.post('/upload_evaluate_by_uid', (req, res) => {
    let file = req.body.file,
        content = req.body.content,
        uid = req.body.uid,
        service = req.body.fuwu,
        transport = req.body.wuliu,
        id = req.body.id;
    console.log(file)
    if (file) {
        fs.rename(
            file.path,
            path.join('./public/static/img', file.filename + '.' + file.mimetype.split('/')[1]),
            () => {
                var path = '/static/img/' + file.filename + '.' + file.mimetype.split('/')[1];
                let sql = "insert into evaluate (uid,content,transport,services,pic) values (?,?,?,?,?)";
                con.query(sql, [uid, content, transport, service, path], (err, result) => {
                    if (err) {
                        res.json({code: 4, message: err.message})
                    } else {
                        if (result.affectedRows > 0) {
                            let sql = "update orders set status = 0 where id = ?";
                            con.query(sql, [id], (er, rs) => {
                                if (er) {
                                    res.json({code: 4, message: er.message})
                                } else {
                                    res.json({code: 2, message: result.affectedRows})
                                }
                            })
                        } else {
                            res.json({code: 4, message: result.affectedRows})
                        }
                    }
                })
            }
        )
    } else {
        let sql = "insert into evaluate (uid,content,transport,services) values (?,?,?,?)";
        con.query(sql, [uid, content, transport, service], (err, result) => {
            if (err) {
                res.json({code: 4, message: err.message})
            } else {
                if (result.affectedRows > 0) {
                    let sql = "update orders set status = 0 where id = ?";
                    con.query(sql, [id], (er, rs) => {
                        if (er) {
                            res.json({code: 4, message: er.message})
                        } else {
                            res.json({code: 2, message: result.affectedRows})
                        }
                    })
                } else {
                    res.json({code: 4, message: result.affectedRows})
                }
            }
        })
    }

});


//单个更新订单状态，即订单页点击立即付款
router.post('/update_orders_status_by_oid', (req, res) => {
    let password = req.body.password,
        oid = req.body.id,
        status = req.body.status;
    if (password == 888888) {
        let sql = "update orders set status = ? where id = ?";
        con.query(sql, [status, oid], (err, result) => {
            if (err) {
                res.json({code: 4, message: err.message});
            } else {
                if (result.affectedRows) {
                    res.json({code: 2, message: 'ok'})
                } else {
                    res.json({code: 4, message: '服务器开小差了！'})
                }
            }
        })
    } else {
        res.json({code: 4, message: '密码不正确'});
    }
});




module.exports = router;