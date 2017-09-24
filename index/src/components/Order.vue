<template>
    <div  class="order">
        <meheader></meheader>
        <div class="box">
            <ul class="orderlist">
                <li>
                    <a href="javascript:;">
                        <span class="circle"></span>
                        <h2  :class="{active:state==1}" @click="setState('1')">待付款
                        </h2>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <h2 :class="{active:state==2}" @click="setState('2')">待发货</h2>
                    </a>

                </li>
                <li>
                    <a href="javascript:;">
                        <h2 :class="{active:state==3}" @click="setState('3')">待收货</h2>
                    </a>

                </li>
                <li>
                    <a href="javascript:;">

                        <h2 :class="{active:state==4}" @click="setState('4')">待评价</h2>

                    </a>

                </li>
            </ul>

            <ul class="orderlistmain" v-for="v in this.filter()" :key="v.id">
                <li>
                    <div class="ordername">
                        <h2>订单编号:    <span>NO.{{v.id}}</span>   </h2>
                    </div>
                    <ul class="orderpic">
                       <li class="pic">
                           <img :src="v.goods_pic" alt="">
                       </li>
                        <li class="order-content">
                            <h2 class="title">{{v.goods_name}}</h2>
                            <h3>{{v.goods_ename}}</h3>
                            <div class="color">
                                <div class="color-left">
                                    <div class="color-1"></div>
                                    颜色:单一色
                                </div>
                                <div class="color-left">
                                    <div class="color-2"></div>
                                    规格:{{v.s_size}}
                                </div>
                            </div>
                            <div class="price">
                                <div class="price-circle">
                                        ￥
                                </div>
                                <div class="pricenum">{{v.num*v.goods_price}}.00</div>
                            </div>
                        </li>
                    </ul>
                    <ul class="detail" :class="{display:v.status==3}">
                        <li>
                            <div class="logo">
                                <img src="/static/img/nxl_one.png" alt="">
                            </div>
                            <div class="detail_content">
                                <h2>订单号</h2>
                                <h3>order number</h3>
                                <h1>{{v.id}}</h1>
                            </div>
                        </li>
                        <li>
                            <div class="logo">
                                <img src="/static/img/nxl_one.png" alt="">
                            </div>
                            <div class="detail_content">
                                <h2>配送商家</h2>
                                <h3>THE merchants</h3>
                                <div class="store">
                                    <div class="img">
                                        <img src="/static/img/nxl_store.png" alt="">
                                    </div>
                                    <div class="store-right">
                                        <div class="right-top">
                                            <h2>鱼设计定制中心</h2>
                                            <el-rate v-model="value1"></el-rate>
                                        </div>
                                        <h3>The fish design</h3>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="logo">
                                <img src="/static/img/nxl_one.png" alt="">
                            </div>
                            <div class="detail_content">
                                <h2>送货地址</h2>
                                <h3>THE ADDRESS</h3>
                                <h1 class="address">{{v.ad_address}}</h1>
                            </div>
                        </li>
                        <li>
                            <div class="logo">
                                <img src="/static/img/nxl_one.png" alt="">
                            </div>
                            <div class="detail_content">
                                <h2>快递员</h2>
                                <h3>THE merchants</h3>
                                <div class="store">
                                    <div class="img">
                                        <img src="/static/img/nxL_kuai.png" alt="">
                                    </div>
                                    <div class="store-right">
                                        <div class="right-top">
                                            <h2>十四哥</h2>
                                            <el-rate v-model="value1"></el-rate>
                                        </div>
                                        <h3>The fish design</h3>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <div class="pay" :style="{justifyContent:v.status==4?'flex-end':'space-between'}">
                    <h2 v-if="v.status==1||v.status==2||v.status==3">合计 <span>{{v.num*v.goods_price}}.00</span> <span>RMB</span></h2>
                    <div class="gopay" v-if="v.status==1" @click="apply(v)">去付款</div>
                    <div class="gopay" v-else-if="v.status==2" @click="notices">提醒卖家发货</div>
                    <div class="gopay" v-else-if="v.status==3" @click="confirm_order(v)">确认收货</div>
                    <div class="gopay" v-else-if="v.status==4" @click="evaluate(v)">去评价</div>
                </div>
            </ul>
        </div>
        <div class="footer" :class="{display:this.state==1}">
            <div class="wawa">
                <img src="/static/img/nxl_wawa.png" alt="">
            </div>
            <div class="wawacontent">
                <h2>已经没有啦……</h2>
                <h3>Brush the bottom already</h3>
            </div>
        </div>
        <div :class="{alert:true,scale:active}">
            <div class="alertcon">
                <div class="alertimg">
                    <img src="/static/img/ybl3_02_03.png" alt="" v-show="choice==true">
                    <img src="/static/img/ybl3_03.png" alt="" v-show="choice==false">
                </div>
                <div class="alerttext">
                    <h4 v-if="status">感谢小主信任鱼设计！</h4>
                    <h4 v-else>{{message}}</h4>
                    <span>THANKS SMALL LORD!</span>
                </div>
                <div class="alertbut">
                    <div class='pays' @click="confirm">
                        <h4>确认收货</h4>
                        <span>THE PAY</span>
                    </div>
                    <div @click="cancal">
                        <h4>取消</h4>
                        <span>I WILL SEE</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    import meOrder  from './me/meHeader.vue'
    export default{
        data(){
            return {
                state:'1',
                goodsList:[],
                allorders:[],
                uid:localStorage.uid?localStorage.uid:'',
                state:1,
                value1: null,
                active:false,
                choice:true,
                status:true,
                message:'',
                currorder:{}
            }
        },
        methods:{
            notices(){
              this.$message({
                  message:'提醒卖家成功',
                  type: 'warning'
              });
            },
            apply(v){
                location.href='#/onlinepay?name='+this.$route.name+'&vid='+v.id;
            },
            evaluate(v){
                location.href='#/evaluate?id='+v.id;
            },
            setState:function (v) {
                this.state=v;
            },
            filter(){
                return this.allorders.filter(v=>v.status==this.state)
            },
            confirm_order(v){
                this.active=true;
                this.currorder=v;
            },
            confirm(){
                fetch('/api/goods/update_orders_status_by_id?id='+this.currorder.id)
                    .then(res=>res.json())
                    .then(data=>{
                        if(data.code==2){
                            this.active=false;
                            this.status=true;
                            this.choice=true;
                            this.currorder.status='4';
                        }else{
                            this.status=false;
                            this.choice=false;
                            this.message=data.message;
                        }
                    })
            },
            cancal(){
                this.active=false;


            }
        },
        components:{
            meheader:meOrder
        },
        computed:{
          total:function () {
              let sum = 0;
              this.filter().forEach(v=>sum+=v.num*v.goods_price);
              return sum;
          }
        },
        mounted(){
            if(this.$route.query.status){
                this.state=this.$route.query.status;
            }
            fetch('/api/goods/get_orders_by_uid?uid='+this.uid)
                .then(res=>res.json())
                .then(data=>{
                    if(data.code==2){
                        this.allorders=data.orders;
                    }
                })
        }
    }
</script>
<style scoped>
    .detail{
       background:#2C2C2C;
        width: 100%;
        display: flex;
        flex-direction: column;
        padding:0.25rem 0.2rem;
        display: none;
        margin-top: 0.1rem;
    }
    .detail li{
        display: flex;
        justify-content: flex-start;
        align-items: flex-start;
        margin-bottom: 0.15rem;
        padding-bottom: 0.1rem;
        border-bottom: 0.01rem solid #bdbdbd;
    }
    .logo{
        display: flex;
        width: 0.155rem;
        height: 0.155rem;
        margin-right: 0.09rem;
    }
    .logo img{
        width: 100%;
        height: 100%;
    }
    .detail_content{
        display: flex;
        flex-direction: column;

    }
    .detail_content h2{
        font-size: 0.12rem;
        color: #fff;
    }
    .detail_content h3{
        font-size: 0.10rem;
        color: #fff;
    }
    .detail_content h1{
        font-size: 0.14rem;
        color: #1ee497;
        padding-top:0.05rem;
        /*padding-bottom: 0.05rem;*/
    }
    .store{
        display: flex;
        align-items: center;
        justify-content: flex-start;
    }
    .store  .img{
        display: flex;
        justify-content: flex-start;
        align-items: flex-start;
    }
    .right-top{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .store-right{
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: flex-start;
        margin-left: 0.1rem;
    }
    .right-right h3{
        font-size: 0.14rem;
        color: #ababab;
    }
    .el-rate{
        display: flex;
        align-items: center;
    }
    .display{
        display: block;
    }
    .address{
        color:  #ababab!important;
    }
    .box{
        position: relative;
        top:0.5rem;
        left:0;
    }
    .orderlist{
        width:100%;
        height: 0.5rem;
        background: #f8f8f8;
        display: flex;
        box-shadow: 0 0.01rem 0.19rem rgba(0,0,0,.2);
    }
    .orderlist li{
        width: 25%;
        height: 100%;
        display: flex;
        justify-content:center;
        align-items: center;
    }
    .orderlist li h2{
        font-size: 0.12rem;
        color: #ababab;
        text-align: center;
    }
    .orderlist li h2.active{
        width: 0.84rem;
        height: 0.4rem;
        background: #1ee497;
        color: #fff;
        text-align: center;
        line-height: 0.4rem;
        border-radius: 0.04rem;
    }
    .circle{
        display:flex;
        width: 0.04rem;
        height: 0.04rem;
        border-radius: 50%;
        background: #fff;
    }
    .ordername{
        width: 100vw;
        height: 0.27rem;
        padding-left: 0.12rem;
        background-color: #ececec;
        margin: 0 -0.12rem ;
    }
    .ordername h2{
        font-size: 0.14rem;
        color: #ababab;
        font-weight: normal;
        line-height: 0.27rem;
    }
    .ordername h2 span{
        color: #000;
    }
    .orderlistmain{
        width:100%;
    }
    .orderlistmain >li{
        width: 100%;
        background: #fff;
        display: flex;
        padding:0rem 0.12rem 0.1rem;
        border-bottom: 0.01rem solid #bdbdbd;
        flex-wrap: wrap;
    }
    .orderlistmain li .orderpic{
        padding-top: 0.1rem;
        width: 100%;
        display: flex;
        justify-content: flex-start;
        align-items: center;
    }
    .orderpic  .pic{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .orderpic  .pic img{
        width: 0.91rem;
        height: 0.9rem;
    }
    .orderlistmain li .orderpic .order-content{
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: flex-start;
    }
     .orderpic li.order-content{
         padding-left: 0.23rem;
         text-align: left;
     }
    .orderpic .order-content .title{
        font-size: 0.12rem;
        font-weight: normal;
        color: #000;
    }
    .orderpic .order-content h3{
        font-size: 0.12rem;
        font-weight: normal;
        color: #ababab;
    }
    .color{
        margin-top: 0.15rem;
        display: flex;
        justify-content: space-between;
    }
    .color-left{
        font-size: 0.12rem;
        color: #ababab;
        display: flex;
        align-items: center;
        margin-right: 0.2rem;

    }
    .color-1{
        width: 0.06rem;
        height: 0.06rem;
        margin-right: 0.05rem;
        background: #1ebce4;
    }
    .color-2{
        width: 0.06rem;
        height: 0.06rem;
        margin-right: 0.05rem;
        background: #1ee497;
    }
    .price{
        display: flex;
        width: 100%;
        margin-top: 0.08rem;
        justify-content: flex-end;
    }
    .price-circle{

        width: 0.23rem;
        height: 0.23rem;
        background: #fff;
        box-shadow: 0 0.01rem  0.13rem rgba(0,0,0,.2);
        color: red;
        border-radius: 50%;
        font-size: 0.12rem;
        text-align: center;
        line-height: 0.23rem;
        margin-right: 0.05rem;
    }
    .pricenum{
        line-height: 0.23rem;
        font-size: 0.14rem;
        color: #ababab;
    }
    .pay{
        width: 100%;
        height: 0.5rem;
        padding:0 0.12rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: #fff;
    }
    .pay h2{
        font-size: 0.2rem;
        color: #6b6b6b;
        font-weight: normal;
    }
    .pay h2 span{
        font-size: 0.24rem;
        color: #000;
        font-weight: normal;
    }
    .pay h2 span:last-child{
        margin-top: 0.06rem;
        font-size: 0.12rem;
        color: #ababab;
        margin-left: 0.02rem;
    }
    .gopay{
        width: 0.93rem;
        height: 0.3rem;
        border-radius: 1rem;
        background: red;
        font-size: 0.12rem;
        color: #fff;
        text-align: center;
        line-height: 0.3rem;
    }
    .footer{
        position: fixed;
        left:0;
        bottom:0;
        width: 100%;
        height: 0.71rem;
        display: none;
    }
    .wawa{

    }
    .wawa img{
        width:0.4rem;
        height: 0.44rem;
        position: absolute;
        left:0.85rem;
        top:0.18rem;
    }
    .wawacontent{
       position: absolute;
        left:1.33rem;
        top: 0.3rem;
    }
    .wawacontent  h2{
        font-size: 0.12rem;
        color: #f92626;
    }
    .wawacontent  h3{
        font-size: 0.12rem;
        color: #f06518;
    }
    .alert{
        width:100%;
        height:100%;
        position: absolute;
        top:0;
        z-index:999999999999;
        background: rgba(0,0,0,.9);
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
        top:-0.1rem;
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
        /*background: url("/static/img/ybl2_20.png") no-repeat;*/
        background: #2C2C2C;
        border-radius: 0.3rem;
        padding: 0.05rem;
        box-sizing: border-box;
        display: flex;
        font-size:.12rem;
    }
    .alertbut>div{
        border-radius: 0.4rem;
        height: 0.4rem;
        width: 50%;
        text-align: center;
        padding: 0.05rem 0;
    }
    .alertbut>div.pays h4{
        color:#fff;
    }
    .alertbut>div.pays span{
        color: #fff;
    }
    .alertbut>div.pays{
        background: #FFCA13;
    }
    .alertbut>div h4{
        color:#ABABAB;
    }
    .alertbut>div span{
        color: #ABABAB;
    }
    .scale{
        transform: scale(1);
    }
    img{
        width:100%;
        height:100%;
    }
</style>
