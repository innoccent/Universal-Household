<template>
    <div>
        <div class="main">
            <div class="main-top">
                <div class="main-top-main">
                    <!--<a href="">-->
                        <!--<div class="make-mode">-->
                            <!--<h1>全部分类</h1>-->
                            <!--<h2>ALLITEM</h2>-->
                        <!--</div>-->
                    <!--</a>-->
                    <!--<div class="line"></div>-->
                    <a href="javascript:;" @click="active='1'">
                        <div :class="{'make-mode':true,active:this.active==1}">
                            <h1>家具</h1>
                            <h2>FURNITURE</h2>
                        </div>
                    </a>
                    <div class="line"></div>
                    <a href="javascript:;" @click="active='2'">
                        <div :class="{'make-mode':true,active:this.active==2}">
                            <h1>精选</h1>
                            <h2>SELECT</h2>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="content" v-if="active==1">
            <div class="content1">
                <div class="title">
                    <span>{{categories.length?categories[0].cate_name[0]:''}}</span>
                    <span class="shuline"></span>
                    <span>{{categories.length?categories[0].cate_name[1]:''}}</span>
                </div>
                <div class="engword">
                    <span>{{categories.length?categories[0].cate_ename[0]:'' }} </span>{{categories.length?categories[0].cate_ename[1]:''}}
                </div>
                <div class="lamp-main">
                    <ul>
                        <li v-for="v in cate_goods[0]" :key="v.id">
                            <div class="light1"></div>
                            <router-link :to="{name:'goodsdetails',query:{gid:v.id,name:'classify'}}">
                                <div class="light2"><img :src="v.goods_pic" alt=""></div>
                            </router-link>
                            <div class="light3">
                                <div class="title">{{v.goods_name}}</div>
                                <div class="mid">{{v.goods_ename}}</div>
                                <div class="hengline"></div>
                                <div class="bottom">
                                <span>
                                    <span class="money"></span>{{v.goods_price}}
                                    <span class="message"></span>3999
                                </span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="content2">
                <div class="title">
                    <span>{{categories.length?categories[1].cate_name[0]:''}}</span>
                    <span class="shuline"></span>
                    <span>{{categories.length?categories[1].cate_name[1]:''}}</span>
                </div>
                <div class="engword">
                    <span>{{categories.length?categories[1].cate_ename[0]:'' }} </span>{{categories.length?categories[1].cate_ename[1]:''}}
                </div>
                <div class="main2">
                    <ul class="jiashi-content">
                        <li v-for="v in cate_goods[1]" :key="v.id">
                            <router-link :to="{name:'goodsdetails',query:{gid:v.id,name:'classify'}}">
                                <div class="jiashi-1">
                                    <div class="jiashi-1-img">
                                        <img :src="v.goods_pic" alt="">
                                    </div>
                                    <div class="jiashi-1-bg"></div>
                                    <div class="deng-title">
                                        <h2>{{v.goods_name}}</h2>
                                        <h3>{{v.goods_ename}}</h3>
                                        <div class="deng-line"></div>
                                        <div class="late-con-det">
                                            <ul>
                                                <li class="late-more">
                                                    <div>
                                                        <span>3245</span>
                                                    </div>
                                                    <div>
                                                        <span>2568</span>
                                                    </div>
                                                    <div>
                                                        <span>5210</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="deng-2"></div>
                                <div class="deng-3"></div>
                            </router-link>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="content3">
                <div class="title">
                    <span>{{categories.length?categories[2].cate_name[0]:''}}</span>
                    <span class="shuline"></span>
                    <span>{{categories.length?categories[2].cate_name[1]:''}}</span>
                </div>
                <div class="engword">
                    <span>{{categories.length?categories[2].cate_ename[0] :'' }}&nbsp;</span>{{categories.length?categories[2].cate_ename[1]:''}}
                </div>
                <div class="main4">
                    <ul class="enter-content">
                        <router-link :to="{name:'goodsdetails',query:{gid:v.id,name:'classify'}}" v-for="v in cate_goods[2]" :key="v.id">
                            <li>
                                <div class="enter-pic1">
                                    <img :src="v.goods_pic" alt="">
                                    <div class="enter-main">
                                        <ul>
                                            <li class="late-con-title">
                                                <div>{{v.goods_name}}</div>
                                            </li>
                                            <li class="late-text">
                                                <p>{{v.goods_ename}}</p>
                                            </li>
                                            <li class="late-more">
                                                <div>
                                                    <span>3245</span>
                                                </div>
                                                <div>
                                                    <span>2568</span>
                                                </div>
                                                <div>
                                                    <span>5210</span>
                                                </div>
                                                <div class="late-people">
                                                    <ul>
                                                        <!--<li><img src="../../../static/img/htbimg/det-1_03.png" alt=""></li>-->
                                                        <!--<li><img src="../../../static/img/htbimg/det-1_03.png" alt=""></li>-->
                                                        <!--<li><img src="../../../static/img/htbimg/det-1_03.png" alt=""></li>-->
                                                        <!--<li>...</li>-->
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="enter-pic2"></div>
                                <div class="enter-pic3"></div>
                            </li>
                        </router-link>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tuijian" v-else>
            <div class="content3">
                <div class="title">
                    <span>精</span>
                    <span class="shuline"></span>
                    <span>选</span>
                </div>
                <div class="engword">
                    <span>TO </span>SELECT
                </div>
                <div class="main4">
                    <ul class="enter-content">
                        <router-link :to="{name:'goodsdetails',query:{gid:v.id,name:'classify'}}" v-for="v in position" :key="v.id">
                            <li>
                                <div class="enter-pic1">
                                    <img :src="v.goods_pic" alt="">
                                    <div class="enter-main">
                                        <ul>
                                            <li class="late-con-title">
                                                <div>{{v.goods_name}}</div>
                                            </li>
                                            <li class="late-text">
                                                <p>{{v.goods_ename}}</p>
                                            </li>
                                            <li class="late-more">
                                                <div>
                                                    <span>3245</span>
                                                </div>
                                                <div>
                                                    <span>2568</span>
                                                </div>
                                                <div>
                                                    <span>5210</span>
                                                </div>
                                                <div class="late-people">
                                                    <ul>
                                                        <!--<li><img src="../../../static/img/htbimg/det-1_03.png" alt=""></li>-->
                                                        <!--<li><img src="../../../static/img/htbimg/det-1_03.png" alt=""></li>-->
                                                        <!--<li><img src="../../../static/img/htbimg/det-1_03.png" alt=""></li>-->
                                                        <!--<li>...</li>-->
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="enter-pic2"></div>
                                <div class="enter-pic3"></div>
                            </li>
                        </router-link>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                active:'1',
                goods:[],
                categories:[],
            }
        },
        methods: {
            getCate_goods(id){
                return this.goods.filter(v=>v.cid==id);
            }
        },
        computed:{
          cate_goods:function () {
              var arr = [];
              this.categories.forEach(v=>{
                  var curr = this.getCate_goods(v.id);
                  arr.push(curr);
              })
              return arr;
          },
          position:function () {
              return this.goods.filter(v=>v.is_pos==1)
          }
        },
        mounted(){
            fetch('/api/goods/get_categories?is_customize=0')
                .then(res=>res.json())
                .then(data=>{
                    if(data.code==2){
                        var str = "(";
                        data.data.forEach((v,i)=>{
                            if(i==data.data.length-1){
                                str+=v.id+');';
                            }else{
                                str+=v.id+',';
                            }
                            v.cate_name=[...v.cate_name];
                            v.cate_ename=v.cate_ename.split(' ');
                            this.categories.push(v)
                        });
                        fetch('/api/goods/get_goods?id='+str)
                            .then(res=>res.json())
                            .then(data=>{
                                if(data.code==2){
                                    this.goods=data.data;
                                }
                            })
                    }
                })

        }
    }
</script>

<style scoped>
    .main,.tuijian{
        position: relative;
        padding:0.06rem  0.12rem 0;
        -webkit-tap-highlight-color: transparent;
    }
    .main-top{
        height: 0.5rem;
        background: #603811;
        border-radius: 0.4rem;
        margin: 0 auto;
        display: flex;
    }
    .main-top-main{
        width:100%;
        height:100%;
        padding:0.035rem 0.15rem;
        display: flex;
        justify-content:space-around;

    }
    .main-top-main > a{
        display: flex;
        width:50%;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        position: relative;
    }
    .main-top-main > a > div{
        position: relative;
    }
    .main-top-main > a > div.active:before{
        content:'';
        display: block;
        width:0.05rem;
        height:0.05rem;
        background: #ffca13;
        border-radius: 50%;
        position: absolute;
        left:-40%;
        top:50%;
        margin-top: -0.025rem;
    }
    .main-top-left .pic1,.main-top-left .pic2{
        width: 0.04rem;
        height: 0.04rem;
        margin-right: 0.025rem;
        border-radius: 50%;
        background: #1ebce4;
    }
    .main-top-left .pic2{
        background: #f2c013;
    }
    .make-mode{
        text-align: center;
    }
    .make-mode h1{
        color: #fff;
        font-size: 0.12rem;
    }
    .make-mode h2{
        color: #fff;
        font-size:.11rem;
    }
    .make-mode h1{
        font-weight: normal;
        /*padding-top: 0.09rem;*/
    }
    .line{
        width: 0.03rem;
        height: 100%;
        background: url("/static/img/yb_03.png") no-repeat;
        background-size: cover;
    }
    .content{
        padding:.12rem .12rem 0.63rem;
    }
    .title{
        font-size:.14rem;
        color: #333;
    }
    .shuline{
        display: inline-block;
        width:1px;
        height:.09rem;
        background: #b3b3b3;
    }
    .engword{
        font-size:.12rem;
        text-transform: uppercase;
    }
    .engword span{
        font-weight:bold;
        color: #ff9313;
        text-transform: uppercase;
    }
    .lamp-main{
        margin-top:.2rem;
        width: 100%;
        height:1.8rem;
    }
    .lamp-main ul{
        width:100%;
        height:100%;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }
    .lamp-main ul li{
        width: 1.13rem;
        height: 1.69rem;
        background: #fff;
        border-radius:0.05rem;
        box-shadow: 0 0.04rem 0.03rem rgba(0,0,0,0.1);
        position: relative;
    }
    .light{
        position: absolute;
        background: #fff;
        border-radius:0.05rem;
        box-shadow: 0 0.04rem 0.03rem rgba(0,0,0,0.1);
    }
    .light1{
        width: .93rem;
        height: 1.11rem;
        border-radius:0.05rem;
        position: absolute;
        top:0rem;
        left:50%;
        background: #2c2c2c;
        transform:translateX(-50%);
    }
    .light2{
        width:.93rem;
        height:1.13rem;
        background: #fff;
        position: absolute;
        top:-.07rem;
        border-radius:0.05rem;
        overflow: hidden;
        left:50%;
        transform:translateX(-54%);
    }
    .light2 img{
        width:100%;
        height:100%;
    }
    .hengline{
        margin: .02rem 0;
        width:100%;
        height:.01rem;
        position: relative;
        background: #bdbdbd;
    }
    .hengline:before{
        content:'';
        width:.02rem;
        height:.02rem;
        position: absolute;
        left:0;
        top:-0.007rem;
        border-radius: 50%;
        background: #bdbdbd;
    }
    .light3{
        position: absolute;
        width:.96rem;
        height:.48rem;
        bottom:.05rem;
        left:50%;
        transform: translateX(-50%);
    }
    .title{
        font-size:.11rem;
        color: #666;
    }
    .mid{
        font-size:.10rem;
        color: #999;
    }
    .bottom{
        font-size:.1rem;
        color: #999;
    }
    .bottom>span{
        display: flex;
        align-items: center;
    }
    .money,.message{
        display: inline-block;
        width:.12rem;
        height:.12rem;
    }
    .money {
        background: url("/static/img/yb2_14.png") no-repeat;
        background-size: cover;
    }
    .message{
        margin-left:.05rem;
        background: url("/static/img/yb2_16.png") no-repeat;
        background-size: cover;
    }

    .content2{
        margin-top:.05rem;
        margin-bottom: .2rem;
    }
    .jiashi-content{
        padding-top: 0.1rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .jiashi-content>li{
        width: 1.72rem;
        height: 1.7rem;
        position: relative;
    }
    .jiashi-1{
        width: 1.72rem;
        height: 1.7rem;
        position: absolute;
        left:0;
        top:0;
        z-index: 10;
        background: #fff;
        border-radius: 0.05rem;
        box-shadow: 0 0.02rem 0.05rem rgba(0,0,0,.2);
    }
    .jiashi-1-img{
        width: 1.72rem;
        height:1.14rem;
        border-radius: 0.05rem;
        position: absolute;
        z-index: 3;
        left:50%;
        transform:translateX(-50%);
    }
    .jiashi-1-bg{
        position: absolute;
        width: 1.72rem;
        height:1.17rem;
        border-radius: 0.05rem;
        background:#dedede;
    }
    .jiashi-1-img img{
        border-radius: 0.05rem;
        width:100%;
        height:100%;
    }
    .deng-line{
        width: 100%;
        height: 0;
        padding-top: 0.03rem;
        border-bottom: 0.01rem dashed #bdbdbd;
    }
    .deng-title{
        margin-top: 1.2rem;
        padding:0  0.05rem;
    }
    .deng-title h2, .deng-title h3{
        font-size: 0.09rem;
        color: #6b6b6b;
    }
    .deng-title h3{
        color: #ababab;
    }
    .deng-2,.deng-3{
        width: 1.6rem;
        height: 1.75rem;
        background: #fff;
        position: absolute;
        left:50%;
        transform: translateX(-50%);
        top:0;
        z-index: 1;
        border-radius: 0.04rem;
        box-shadow: 0 0.02rem 0.05rem rgba(0,0,0,.2);
    }
    .deng-3{
        width: 1.45rem;
        height: 1.79rem;
        position: absolute;
        z-index: 0;
    }


    .late-like img{
        display: block;
    }
    .late-text p{
        font-size: 0.09rem;
        color:#ababab;
    }
    .late-more{
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 0.11rem;
        line-height: 0.24rem;
        color: #999;
    }
    .late-more div{
        width: 25%;
        padding-left: 0.13rem;
    }
    .late-more div:nth-child(1){
        background:url("/static/img/yb2_28.png")left center no-repeat;
    }
    .late-more div:nth-child(2){
        background:url("/static/img/yb2_30.png")left center no-repeat;
    }
    .late-more div:nth-child(3){
        background:url("/static/img/yb2_32.png")left center no-repeat;
    }

    .content3{
        margin-top:.12rem;
    }
    .enter-content{
        padding-top: 0.1rem;
    }
    .enter-content>a>li{
        width:3.51rem;
        height:2rem;
        background: #fff;
        border-radius: .05rem;
        position: relative;
        color: #333;
        margin-bottom: 0.2rem;
    }
    .enter-main{
        margin-top:-.18rem;
        padding: 0 0.05rem;
    }
    .enter-pic1,.enter-pic2,.enter-pic3{
        position: absolute;
        top:0;
        left:50%;
        transform: translateX(-50%);
        border-radius: .05rem;
    }
    .enter-pic1{
        background: #fff;
        z-index:3;
        width:100%;
        height:100%;
    }
    .enter-pic1 img{
        width:100%;
        height:1.43rem;
        border-radius: .05rem;
    }
    .enter-pic2{
        width:96%;
        height:103%;
        background: #cdcdcd;
        z-index:2;
    }
    .enter-pic3{
        width:92%;
        height:106%;
        background: #dedede;
        z-index:1;
    }
    .late-con-title div{
        font-size: 0.12rem;
        font-weight:bold;
    }

</style>