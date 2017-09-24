<template>
    <div class="me">
        <div class="meheader">
            <a href="javascript:;">
                <div class="header">
                    <h1 >个人中心</h1>
                    <h2>PERSONAL <span>CENTER</span></h2>
                </div>
                <div class="logo-left ">
                    <span class="iconfont icon-pingjia1 edit" ></span>
                </div>
                <div class="header-logo">
                </div>
                <div class="logo-right" @click="jump('information')">
                    <span class="iconfont icon-dingdan-copy copy" ></span>
                </div>
            </a>

        </div>
        <div class="name">
            <h2>{{info.ename}}</h2>
            <h3>{{info.username}}</h3>
            <h2 class="lizhi">{{info.message}}</h2>
            <!--<h2 class="level">57.vel</h2>-->
        </div>
        <div class="order">
            <div class="order-title">
                <div class="order-circle">
                    <span class="iconfont icon-dingdan-copy"></span>
                </div>
                <div class="title">
                    <h2>我的订单</h2>
                    <h3>Order Inquiry</h3>
                </div>
            </div>
            <div class="line"></div>
            <ul class="order-1">
                <li @click="getOrder(1)">
                    <div class="order-logo1">
                        <span class="iconfont icon-dingdan "></span>
                    </div>
                    <div class="order-title-1">
                        <h2>待付款</h2>
                        <h3>THE PAYMENT</h3>
                    </div>
                </li>
                <li @click="getOrder(2)">
                    <div class="order-logo1">
                        <span class="iconfont icon-baozhuang"></span>
                    </div>
                    <div class="order-title-1">
                        <h2>待发货</h2>
                        <h3>SEND THE GOODS</h3>
                    </div>
                </li>
                <li @click="getOrder(3)">
                    <div class="order-logo1">
                        <span class="iconfont icon-fahuo"></span>
                    </div>
                    <div class="order-title-1">
                        <h2>待收货</h2>
                        <h3>FOR THE GOODS</h3>
                    </div>
                </li>
                <li @click="getOrder(4)">
                    <div class="order-logo1">
                        <span class="iconfont icon-pingjia"></span>
                    </div>
                    <div class="order-title-1">
                        <h2>待评价</h2>
                        <h3>THE COMMENT TO</h3>
                    </div>
                </li>
            </ul>
            <ul class="order-2">
                <a href="javascript:;">
                    <li>
                        <div class="shoucang">
                            <div class="order-2-circle">
                                <span class="iconfont icon-xing"></span>
                            </div>
                            <h2>收藏产品</h2>
                            <h3>collection</h3>
                            <div class="shoucang-circle"></div>
                        </div>
                        <div class="order-right">
                            <span class="iconfont icon-iconfontxiangxia1copy19"></span>
                        </div>
                    </li>
                </a>
                <a href="javascript:;">
                    <li>
                        <div class="shoucang">
                            <div class="order-2-circle">
                                <span class="iconfont icon-biaoqian "></span>
                            </div>
                            <h2>我的礼券</h2>
                            <h3>collection</h3>
                            <div class="shoucang-circle"></div>
                        </div>
                        <div class="order-right">
                            <span class="iconfont icon-iconfontxiangxia1copy19"></span>
                        </div>
                    </li>
                </a>
                <a href="javascript:;">
                    <li>
                        <div class="shoucang">
                            <div class="order-2-circle">
                                <span class="iconfont icon-biaoqian "></span>
                            </div>
                            <h2>关于我们</h2>
                            <h3>collection</h3>
                            <div class="shoucang-circle"></div>
                        </div>
                        <div class="order-right">
                            <span class="iconfont icon-fenxiang"></span>
                        </div>
                    </li>
                </a>

            </ul>
        </div>
        <footer_ active="4"></footer_>
    </div>
</template>
<script>
    import footer_ from './lib/footer.vue'
    export default{
        data(){
            return {
                id:localStorage.uid,
                info:{}
            }
        },
        components:{footer_},
        mounted(){
            fetch('/api/user/get_info_by_id?id='+this.id)
                .then(res=>res.json())
                .then(data=>{
                    this.info = data.data;
                })
        },
        methods:{
            getOrder(status){
                location.href='#/order?status='+status
            },
            jump(locations){
                location.href=`#/${locations}`;
            }
        }
    }
</script>
<style scoped>
     .meheader{
         width: 100%;
         height: 1.5rem;
         position: relative;
         background:url('/static/img/2009071106473973.jpg') no-repeat;
     }
    .header{
        width: 100%;
        height: 0.5rem;
        background: rgba(255,255,255,.1);
        position: absolute;
        left:0;
        top:0;
        text-align: center;
    }
     .header h1{
         padding-top: 0.09rem;
         color:#fff;
         font-size: 0.14rem;
     }
     .header h2{
         color:#fff;
         font-size: 0.12rem;
     }
     .header h2 span{
         color: #fff;
         font-weight: normal;
     }
     .header h1:before{
         content:'';
         display: inline-block;
         background: url('../../static/img/nxl_1_03.png') center center;
         width: 0.1rem;
         height: 0.04rem;
     }
     .header h1:after{
         content:'';
         display: inline-block;
         background: url('../../static/img/nxl_1_05.png') center center;
         width: 0.1rem;
         height: 0.04rem;
     }
    .header-logo{
        width: 0.7rem;
        height: 0.7rem;
        background: url('../../static/img/nxl_me_logo.png') no-repeat;
        background-size: 100%;
        position: absolute;
        left:50%;
        transform: translateX(-50%);
        bottom:-0.35rem;
    }
     .logo-left,.logo-right{
         width: 0.17rem;
         height: 0.17rem;
         background: #ffca13;
         border-radius: 50%;
         position: absolute;
         bottom: 0.1rem;
         left:1.23rem;
         display: flex;
         justify-content: center;
         align-items: center;
     }
     .logo-left .edit,.copy{
         color:#fff;
         font-size: 0.10rem;
     }
     .logo-right{
         position: absolute;
         bottom: 0.1rem;
         left:2.36rem;
     }
    .name{
       position: relative;
       top:0.41rem;
        text-align: center;
    }
    .name h2{
        font-size: 0.16rem;
        color: #6b6b6b;
    }
    .name h3{
        color: #000;
        font-size: 0.12rem;
    }
    .name .lizhi,.level{
        font-weight: normal;
        font-size: 0.12rem;
        color: #6b6b6b;
    }
     .order{
         position: relative;
         top:0.35rem;
         padding: 0 0.12rem;
         margin-top: 0.35rem;
     }
    .order .order-title{
       display: flex;
        justify-content: flex-start;
        align-items: center;
    }
    .order-circle{
        width: 0.25rem;
        height: 0.25rem;
        border-radius: 50%;
        background: #1ee497;
        display: flex;
        justify-content: center;
        align-items: center;

    }
    .order-circle span{
         color: #fff;
         font-size: 0.16rem;
     }
    .title{
        font-size: 0.12rem;
        color: #000;
        margin-left: 0.05rem;
    }
    .title h3{
        font-size: 0.12rem;
        color: #ababab;
    }
    .line{
        width: 100%;
        height:0.01rem;
        margin-top: 0.1rem;
        background:#ababab ;
    }
    .order-1{
        width: 100%;
        margin-top: 0.12rem;
        display: flex;
        align-items: flex-start;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .order-1 li{
        width: 1.73rem;
        height: 0.5rem;
        padding: 0.1rem;
        margin-bottom:0.06rem;
        background: #fff;
        border-radius: 0.04rem;
        display: flex;
        box-shadow: 0 0.02rem 0.14rem rgba(0,0,0,.2);
    }
    .order-logo1{
        width: 0.3rem;
        height: 0.3rem;
        background: #f2c013;
        border-radius: 50%;
        display: flex;
        justify-content:center ;
        align-items: center;
    }
     .order-logo1 span{
         font-size: 0.16rem;
         color: #fff;
     }
     .order-title-1{
         margin-left: 0.05rem;
     }
    .order-title-1 h2{
        font-size: 0.14rem;
        color: #6b6b6b;
    }
    .order-title-1   h3{
       font-size: 0.12rem;
        font-weight: normal;
        color: #6b6b6b;
    }
    .order-2{
        width: 100%;
        margin-top: 0.06rem;
    }
    .order-2 li{
        width: 100%;
        height:0.49rem;
        background: #fff;
        border-radius: 0.04rem;
        padding: 0.1rem 0.05rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 0.02rem 0.14rem rgba(0,0,0,.2);
        margin-bottom: 0.05rem;
    }
    .shoucang{
        display: flex;
        align-items: center;
    }
    .order-2-circle{
        width: 0.3rem;
        height: 0.3rem;
        border-radius: 50%;
        background: #1ee497;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .order-2-circle span{
        font-size: 0.16rem;
        color: #fff;
    }
    .order-2 li  h2{
        font-size: 0.14rem;
        color: #000;
        margin-left: .15rem;
    }
     .order-2 li  h3{
         font-size: 0.1rem;
         color: #6b6b6b;
         margin-left: .05rem;
     }
    .shoucang-circle{
        margin-left: 0.1rem;
        width: 0.05rem;
        height: 0.05rem;
        background: url('../../static/img/nxl_circle_1.png') no-repeat;
    }
    .order-right{
        display: flex;
    }
     .order-right span{
         color: #6b6b6b;
         font-size: 0.14rem;
     }

</style>
