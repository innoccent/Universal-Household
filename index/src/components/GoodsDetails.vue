<template>
    <div>
        <headers :pageinfo="$route.query.name"></headers>
            <div class="box"></div>
            <div class="center">
                <div class="center1">
                    <div class="img">
                        <img :src="goodsinfo.s_pic" alt="">
                    </div>
                    <div class="title">
                        <div class="t_left">
                            <h2>{{goodsinfo.goods_name}}</h2>
                            <span style="text-transform: uppercase">{{goodsinfo.goods_ename}}</span>
                        </div>
                        <div class="t_right">
                            <span>￥</span>
                            <span class="price">{{goodsinfo.goods_price}}</span>
                        </div>
                    </div>
                    <!--<p>每一天都肆意的生活在自己塑造的空间里，欣赏艺术精品般的家具，将生活的感动化为细致的品味</p>-->
                    <p>{{goodsinfo.goods_desc}}</p>
                </div>
                <div class="center2"></div>
                <div class="center3"></div>
            </div>
            <div class="goods">
                <div class="title1">
                    <div class="title1_img"><img src="/static/img/lrb_16_2.png" alt=""></div>
                    <div class="title1_word">
                        <h2 class="word1">商品详情</h2>
                        <span class="word2">GOODS DETAILS</span>
                        <span class="word3">GOODS DETAILS</span>
                    </div>
                    <div class="title1_img"><img src="/static/img/lrb_16_1.png" alt=""></div>
                </div>
                <div class="content">
                    <div class="content1">
                        <ul>
                            <li>
                                <div class="list"><div></div></div>
                                <div class="list_word">品牌：{{goodsinfo.brand_name}}</div>
                            </li>
                            <li>
                                <div class="list"><div></div></div>
                                <div class="list_word">型号：{{goodsinfo.goods_pattern}}</div>
                            </li>
                            <li>
                                <div class="list"><div></div></div>
                                <div class="list_word">设计元素：{{goodsinfo.goods_elements}}</div>
                            </li>
                            <li>
                                <div class="list"><div></div></div>
                                <div class="list_word">形状：{{goodsinfo.s_shape}}</div>
                            </li>
                            <li>
                                <div class="list"><div></div></div>
                                <div class="list_word">产地：{{goodsinfo.brand_area}}</div>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <div class="list"><div></div></div>
                                <div class="list_word">规格参数</div>
                            </li>
                            <li>
                                <div class="list list1"><div></div></div>
                                <div class="list_word">材质：{{goodsinfo.s_material}}</div>
                            </li>
                            <li>
                                <div class="list list1"><div></div></div>
                                <div class="list_word">家具结构：{{goodsinfo.s_structure}}</div>
                            </li>
                            <li>
                                <div class="list list1"><div></div></div>
                                <div class="list_word">尺寸：{{goodsinfo.s_size}}</div>
                            </li>
                            <li>
                                <div class="list list1"><div></div></div>
                                <div class="list_word">风格：{{goodsinfo.s_style}}</div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="color">
                <div class="title1">
                    <div class="title1_img"><img src="/static/img/lrb_16_2.png" alt=""></div>
                    <div class="title1_word">
                        <h2 class="word1">颜色选择</h2>
                        <span class="word2">COLOR CHOICES</span>
                        <span class="word3">COLOR CHOICES</span>
                    </div>
                    <div class="title1_img"><img src="/static/img/lrb_16_1.png" alt=""></div>
                </div>
                <div class="content">
                    <ul>
                        <li @click="getColor('white')" >
                            <div></div>
                            <div><span>银白</span></div>
                        </li>
                        <li @click="getColor('blue')">
                            <div></div>
                            <div><span>宝蓝</span></div>
                        </li>
                        <li @click="getColor('#B0A4E3')">
                            <div></div>
                            <div><span>雪青</span></div>
                        </li>
                        <li @click="getColor('#EAFF56')">
                            <div></div>
                            <div><span>樱草色</span></div>
                        </li>
                        <li @click="getColor('#FF4777')">
                            <div></div>
                            <div><span>洋红</span></div>
                        </li>
                        <li @click="getColor('black')">
                            <div></div>
                            <div><span>黑色</span></div>
                        </li>
                        <li @click="getColor('#3D3B4F')">
                            <div></div>
                            <div><span>玄青</span></div>
                        </li>
                        <li @click="getColor('#4C221B')">
                            <div></div>
                            <div><span>紫颤</span></div>
                        </li>
                        <li @click="getColor('red')">
                            <div></div>
                            <div><span>红色</span></div>
                        </li>
                        <li @click="getColor('#00E09E')">
                            <div></div>
                            <div><span>青色</span></div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="size">
                <div class="title1">
                    <div class="title1_img"><img src="/static/img/lrb_16_2.png" alt=""></div>
                    <div class="title1_word">
                        <h2 class="word1">尺寸大小</h2>
                        <span class="word2">SIZE DIMENSION</span>
                        <span class="word3">SIZE DIMENSION</span>
                    </div>
                    <div class="title1_img"><img src="/static/img/lrb_16_1.png" alt=""></div>
                </div>
                <div class="content">
                    <div>
                        <img src="/static/img/lrb_14.png" alt="">
                    </div>
                </div>
            </div>
            <div class="product">
                <div class="title1">
                    <div class="title1_img"><img src="/static/img/lrb_16_2.png" alt=""></div>
                    <div class="title1_word">
                        <h2 class="word1">商品细节</h2>
                        <span class="word2">PRODUCT DETAILS</span>
                        <span class="word3">PRODUCT DETAILS</span>
                    </div>
                    <div class="title1_img"><img src="/static/img/lrb_16_1.png" alt=""></div>
                </div>
                <div class="content">
                    <div>
                        <img src="/static/img/lrb_18.png" alt="">
                    </div>
                </div>
                <div class="desc1">
                    <h2>利落设计</h2>
                    <div></div>
                    <span>拆边三角形的稳固平稳安全，增大受力面积保护地板</span>
                </div>
                <div class="content">
                    <div>
                        <img src="/static/img/lrb_21.png" alt="">
                    </div>
                </div>
                <div class="desc1">
                    <h2>美在面上</h2>
                    <div></div>
                    <span>桌面美观易清洁，边缘光滑细腻，降低磕碰伤害</span>
                </div>
            </div>
            <div class="client">
                <div class="title1">
                    <div class="title1_img"><img src="/static/img/lrb_16_2.png" alt=""></div>
                    <div class="title1_word">
                        <h2 class="word1">客户评价</h2>
                        <span class="word2">CLIENT EVALUATION</span>
                        <span class="word3">CLIENT EVALUATION</span>
                    </div>
                    <div class="title1_img"><img src="/static/img/lrb_16_1.png" alt=""></div>
                </div>
                <div class="content">
                    <ul>
                        <li>
                            <h2>很棒哦</h2><div></div>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                        </li>
                        <li>
                            <h2>还不错</h2><div></div>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                        </li>
                        <li>
                            <h2>一般般</h2><div></div>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                        </li>
                        <li>
                            <h2>太差了</h2><div></div>
                            <span class="icon-wujiaoxing"></span>
                            <span class="icon-wujiaoxing"></span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="number">
                <div class="title1">
                    <div class="title1_img"><img src="/static/img/lrb_16_2.png" alt=""></div>
                    <div class="title1_word">
                        <h2 class="word1">数量选择</h2>
                        <span class="word2">NUMBER OF CHOICES</span>
                        <span class="word3">NUMBER OF CHOICES</span>
                    </div>
                    <div class="title1_img"><img src="/static/img/lrb_16_1.png" alt=""></div>
                </div>
                <div class="content">
                    <div class="l_content">
                        <div @click="del"><img src="../../static/img/lrb_23.png" alt=""></div>
                        <input type="text" v-model="num">
                        <div @click="add"><img src="../../static/img/lrb_25.png" alt=""></div>
                    </div>
                    <div class="r_content">
                        总计：<span>￥{{total}}</span>
                    </div>
                </div>
            </div>
            <div class="kong"></div>
            <footer>
                <a href="javascript:;" @click="getGoods"></a>
                <a href="javascript:;" @click="getOrder"></a>
            </footer>
        <div class="alert" :class="{scale:active==true}">
            <div class="alertcon">
                <div class="alertimg" v-if="alertbut==true"><img src="/static/img/ybl3_02_03.png" alt=""></div>
                <div class="alertimg" v-if="alertbut2==true"><img src="/static/img/ybl3_03.png" alt=""></div>
                <div class="alerttext">
                    <span>{{message}}</span>
                    <span v-if="status">congratulation small Lord</span>
                    <span v-else>wrong info from Lord</span>
                </div>
                <div class="alertbut" @click="enter" v-if="alertbut==true">
                    <span>继续选购</span>
                    <span>CONTINUE SHOPING</span>
                </div>
                <div class="alertbut2" v-if="alertbut2==true">
                    <div class="pay">
                        <div class="trueimg">
                            <img src="/static/img/ybldan_03.png" alt="">
                        </div>
                        <div class="truetext" @click="reset">
                            <h4>再试一次</h4>
                            <span>MORE TIME</span>
                        </div>

                    </div>
                    <div @click="reset">
                        <h4>检查网络</h4>
                        <span>THE NETWORK</span>
                    </div>
                </div>

            </div>
        </div>
    </div>
</template>
<script>
    import Headers from './lib/Header.vue'
    export default{
        name:'goodsdetails',
        data(){
            return{
                uid:localStorage.uid,
                goodsinfo:{},
                color: 'white',
                num:0,
                active:false,
                alertbut:true,
                alertbut2:false,
                message:'恭喜小主成功选购',
                status:true,
            }
        },
        methods:{
          getOrder(){
              if(this.num==0){
                  this.alertbut=false;
                  this.alertbut2=true;
                  this.active=true;
                  this.message='小主尚未选择数量';
                  this.status=false;
              }else {
                  let {id, bid, cid} = this.goodsinfo;
                  let order = {id, bid, cid};
                  order.num = this.num;
                  order.uid = this.uid;
                  order.color=this.color;
                  localStorage.currOrder = JSON.stringify(order);
                  location.href = '#/onlinepay?name='+this.$route.name+'&id='+this.$route.query.gid+"&orgname="+this.$route.query.name;
              }
          },
          enter(){
              this.active=false;
              this.num=0;
          },
          reset(){
              this.active=false;
          },
          getGoods(){
              if(this.num==0){
                this.alertbut=false;
                this.alertbut2=true;
                this.active=true;
                this.message='小主尚未选择数量';
                this.status=false;
              }else{
                  let order = {};
                  let {id,bid,cid} = this.goodsinfo;
                  order = {id,bid,cid};
                  order.num = this.num;
                  order.uid = this.uid;
                  if(localStorage.orders){
                      let orders = JSON.parse(localStorage.orders);
                      let flag = true;
                      orders.forEach(v=>{
                          if(v.id==order.id){
                              v.num+=order.num;
                              flag = false;
                          }
                      })
                      if(flag){
                          orders.push(order);
                      }
                      localStorage.orders = JSON.stringify(orders);
                  }else{
                      localStorage.orders = JSON.stringify([order]);
                  }
                  this.alertbut=true;
                  this.alertbut2=false;
                  this.message='恭喜小主成功选购';
                  this.status=true;
                  this.active=true;
              }

          },
          getColor(color){
              this.color=color;
          },
          del(){
              if(this.num<1){
                 return;
              }else{
                  this.num-=1;
              }
          },
          add(){
              this.num+=1;
          }
        },
        components:{ Headers },
        computed:{
          total:function () {
              return this.goodsinfo.goods_price*this.num;
          }
        },
        mounted(){
            fetch('/api/goods/get_goods_details_by_id?id='+this.$route.query.gid)
                .then(res=>res.json())
                .then(data=>{
                    if(data.code==2){
                        this.goodsinfo=data.data;
                    }
                })
        }
    }
</script>
<style scoped>
    .box{
        width: 100%;
        height: 0.5rem;
        background: #FFCA13;
        position: relative;
        top:0.5rem;
    }
    .center{
        width: 78%;
        height: 3.08rem;
        position: relative;
        left: 11%;
        box-sizing: border-box;
    }
    .center1,.center2,.center3{
        width: 100%;
        height: 3.08rem;
        position: absolute;
        left: 0;
        top:0;
        background: #fff;
        border-radius: 0.05rem;
        box-shadow: 0 0.04rem 0.05rem rgba(0,0,0,0.2);
    }
    .center1{
        width: 100%;
        left: 0;
        top:0;
        z-index: 10;
        overflow: hidden;
    }
    .center2{
        width: 94%;
        left: 3%;
        top:0.06rem;
        z-index: 9;
    }
    .center3{
        width: 86%;
        left: 7%;
        top:0.12rem;
        z-index: 8;
    }
    .center1 .img{
        width: 100%;
        height: 2.2rem;
        overflow: hidden;
    }
    .img>img{
        width: 100%;
    }
    .center1 .title{
        width: 100%;
        padding:  0.06rem;
        box-sizing: border-box;
        display: flex;
    }
    .center1 .title .t_left{
        width:70%;
        font-size: 0.14rem;
    }
    .center1 .title .t_left h2{
        font-size: 0.12rem;
    }
    .center1 .title .t_left span{
        font-size: 0.12rem;
    }
    .center1 .title .t_right{
        width:30%;
        font-size: 0.12rem;
    }
    .center1 .title .t_right span:first-child{
        color: #EE1B1B;
        font-size: 0.14rem;
    }
    .center1 .title .t_right span:last-child{
        color: #EE1B1B;
        font-size: 0.2rem;
    }
    .center1 p{
        font-size: 0.12rem;
        color: #797979;
        padding:  0 0.06rem;
    }
    .goods{
        width: 100%;
        position: relative;
        top:0.2rem;
    }
    .title1{
        width: 50%;
        margin-left: 25%;
        height: 0.52rem;
        display: flex;
        align-items: center;
    }
    .title1 .title1_img{
        display: flex;
        width: 0.3rem;
    }
    .title1 .title1_img img{
        width: 100%;
    }
    .title1 .title1_word{
        font-size: 0.12rem;
        text-align: center;
        color: #555;
    }
    .title1 .title1_word .word2{
        font-size: 0.1rem;
    }
    .title1 .title1_word .word3{
        display: inline-block;
        width: 1rem;
        font-size: 0.12rem;
        color: #5CD8E4;
        position: relative;
        left: 0;
        top:-0.18rem;
        z-index: -1;
    }
    .goods .content, .color .content{
        width: 3.51rem;
        margin:  0 0.12rem;
        background: #fff;
        padding: 0.2rem;
    }
    .goods .content1{
        width: 100%;
        font-size: 0.12rem;
    }
    .goods .content1 ul{
        border-bottom: 1px dashed #9d9d9d;
        padding: 0.1rem ;
    }
    .goods .content1 ul>li{
        height: 0.2rem;
        display: flex;
        align-items: center;
    }
    .goods .content1 .list{
        position: relative;
        width: 0.1rem;
        height: 0.1rem;
        border-radius: 50%;
        background: #1ebce4;
        margin-right: 0.1rem;
    }
    .goods .content1 .list>div{
        position: absolute;
        width: 0.06rem;
        height: 0.06rem;
        border-radius: 50%;
        background: #ffca13;
        left: 0.02rem;
        top:0.02rem;
    }
    .goods .content1 .list1{
        background: #fff;
    }
    .goods .content1 .list1>div{
        background: #fff;
    }

    /*颜色选择*/
    .color{
        width: 100%;
        position: relative;
        top:0.35rem;
    }
    .color ul{
        display: flex;
        flex-wrap: wrap;
        align-content: space-around;
    }
    .color ul li{
        width: 20%;
        text-align: center;
        margin-bottom: 0.1rem;
        display: flex;
        align-items: center;
        flex-direction: column;
        justify-content: center;
        text-align: center;
    }
    .color ul li div:first-child{
        width: 0.3rem;
        height: 0.3rem;
        background: #E9E7EF;
        border-radius: 50%;
    }
    .color ul li:nth-child(2) div:first-child{
        background: #4B5CC4;
    }
    .color ul li:nth-child(3) div:first-child{
        background: #B0A4E3;
    }
    .color ul li:nth-child(4) div:first-child{
        background: #EAFF56;
    }
    .color ul li:nth-child(5) div:first-child{
        background: #FF4777;
    }
    .color ul li:nth-child(6) div:first-child{
        background: #000;
    }
    .color ul li:nth-child(7) div:first-child{
        background: #3D3B4F;
    }
    .color ul li:nth-child(8) div:first-child{
        background: #4C221B;
    }
    .color ul li:nth-child(9) div:first-child{
        background: #FF0000;
    }
    .color ul li:nth-child(10) div:first-child{
        background: #00E09E;
    }
    .color ul li:hover div:first-child{
        transform: scale(1.2);
        transform-origin:inherit;
        transition: transform  0.3s cubic-bezier(0, -0.19, 0.48, 1.29);
        /*margin-left: 20%;*/
    }
    .color ul li div:last-child{
        margin-top: 0.05rem;
        font-size: 0.1rem;
        text-align: center;
    }

    /*尺寸大小*/
    .size{
        position: relative;
        top:0.45rem;
    }
    .size .content,.product .content{
        width: 3.51rem;
        margin:  0 0.12rem;
        border: 1px solid #000;
        padding: 0.1rem 0.15rem;
        box-sizing: border-box;
        background: #ececec;
    }
    .size .content div,.product .content div{
        background: #fff;
    }
    .size .content img, .product .content img{
        width: 100%;
        height: 100%;
    }

    /*商品细节*/
    .product{
        position: relative;
        top:0.65rem;
    }
    .desc1{
        width: 100%;
        padding: 0.1rem 0.225rem;
        font-size: 0.12rem;
    }
    .desc1 div{
        width: 100%;
        height: 0.01rem;
        background: #6B6B6B;
        margin: 0.05rem 0;
    }

    /*客户评价*/
    .client{
        position: relative;
        top:0.7rem;
    }
    .client .content{
        width: 100%;
        padding: 0.1rem 0.225rem;
        font-size: 0.12rem;
    }
    .client .content ul li{
        display: flex;
        align-items: center;
    }
    .client .content ul li>div{
        width: 1.08rem;
        height: 0.1rem;
        background: #FFC732;
        margin: 0 0.12rem;
    }
    .client .content ul li:nth-child(2)>div{
        width: 0.77rem;
        height: 0.1rem;
        background: #FFC732;
        margin: 0 0.12rem;
    }
    .client .content ul li:nth-child(3)>div{
        width: 0.425rem;
        height: 0.1rem;
        background: #FF7D33;
        margin: 0 0.12rem;
    }
    .client .content ul li:nth-child(4)>div{
        width: 0.18rem;
        height: 0.1rem;
        background: #FF2A2B;
        margin: 0 0.12rem;
    }

    .client .content ul li>span{
        font-family: iconfont;
        color: #FFC732;
    }

    /*数量选择*/
    .number{
        position: relative;
        top:0.8rem;
    }
    .number .content{
        display: flex;
        padding: 0.1rem 0.225rem;
        font-size: 0.12rem;
    }
    .number .l_content{
        display: flex;
        width: 70%;
    }
    .number .l_content div{
        width: 0.25rem;
        height: 0.25rem;
        border-radius: 50%;
    }
    .number .l_content input{
        width: 0.665rem;
        height: 0.24rem;
        border-radius: 0.4rem;
        border: 1px solid #6B6B6B;
        text-align: center;
        font-size: 0.16rem;
        margin: 0 0.1rem;
    }
    .number .r_content{
        width: 30%;
        font-size: 0.14rem;
        color: #000;
    }
    .kong{
        width: 100%;
        height: 1.4rem;
    }
    
    /*底部*/
    footer{
        width: 100%;
        height: 0.5rem;
        background: url("../../static/img/lrb_30.png");
        position: fixed;
        bottom:0;
        display: flex;
    }
    footer>a{
        width: 50%;
        display: flex;
    }
    .alert{
        width:100%;
        height:100%;
        position: fixed;
        top:0;
        z-index:14;
        background: rgba(0,0,0,.7);
        transform: scale(0);
        transition: all .3s linear;
    }
    .alertcon{
        position: absolute;
        left:0;
        right:0;
        top:0;
        bottom:0;
        margin:auto;
        width:2.6rem;
        height:3.1rem;
    }
    .alertimg{
        position: absolute;
        left:50%;
        transform:translateX(-50%);
        top:0;
        z-index:8;
    }
    .alerttext{
        width:100%;
        height:1.7rem;
        position: absolute;
        top:.6rem;
        background: url("/static/img/ybl3_07.png") no-repeat;
        background-size:100%;
        text-align: center;
        display: flex;
        justify-content: center;
        flex-direction: column;
        font-size:.14rem;
    }
    .alertbut{
        top:2rem;
        position: absolute;
        left:50%;
        transform:translateX(-50%);
        width:90%;
        height:.5rem;
        background: url("/static/img/ybl2_20.png") no-repeat;
        background-size:100%;
        display: flex;
        justify-content: center;
        text-align: center;
        flex-direction: column;
        font-size:.14rem;
    }
    .alertbut span{
        color: #fff;
    }
    img{
        width:100%;
        height:100%;
    }
    .scale{
        transform: scale(1);
    }
    .alertbut2{
        top:2rem;
        position: absolute;
        left:50%;
        transform:translateX(-50%);
        width:90%;
        height:.5rem;
        background:#2c2c2c;
        border-radius: .25rem;
        background-size:100%;
        display: flex;
        align-items: center;
        font-size:.12rem;
    }
    .trueimg{
        width:.31rem;
        height:.31rem;
    }
    .alertbut2>div{
        border-radius: 0.4rem;
        height: 0.4rem;
        width: 50%;
        text-align: center;
        padding: 0.05rem 0;
        margin-left:.05rem;
    }
    .alertbut2>div.pay h4{
        color:#fff;
    }
    .alertbut2>div.pay span{
        color: #fff;
    }
    .alertbut2>div.pay{
        background: #FFCA13;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .alertbut2>div h4{
        color:#ABABAB;
    }
    .alertbut2>div span{
        color: #ABABAB;
    }
</style>