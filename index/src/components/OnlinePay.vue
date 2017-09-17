<template>
    <div class="pay">
        <header>
            <div class="header">
                <div class="left"><a href="">&lt;</a></div>
            </div>
        </header>
        <div class="content">
            <h4>CHOICE OF PAYMENT</h4>
            <h3>CHOICE OF PAYMENT</h3>
            <h2>选择支付方式</h2>
            <div></div>
        </div>
        <div class="payment">
            <div class="payment1">
                <div class="alipay"><a href="javascript:;"></a></div>
                <div class="alipay"><a href="javascript:;"></a></div>
            </div>
            <div class="paylist">
                <ul>
                    <li>
                        <div class="imgbox">
                            <img src="../../static/img/lrb_pay_04.png" alt="">
                        </div>
                        <div class="word">
                            <h2>货到付款</h2>
                            <span>CASH ON DELIVER</span>
                        </div>
                    </li>
                    <li>
                        <div class="imgbox">
                            <img src="../../static/img/lrb_pay_06.png" alt="">
                        </div>
                        <div class="word">
                            <h2>银行卡</h2>
                            <span>BANK CARD</span>
                        </div>
                    </li>
                    <li>
                        <div class="imgbox">
                            <img src="../../static/img/lrb_pay_08.png" alt="">
                        </div>
                        <div class="word">
                            <h2>本地钱包</h2>
                            <span>LOCAL WALLET</span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="next">
                <div>
                    <h2>下一步</h2>
                    <span>NEXT STEP</span>
                </div>
            </div>
        </div>

        <div class="alert" v-if="active==true">
            <div class="alertcon">
                <div class="alertimg"><img src="/static/img/ybl3_03.png" alt=""></div>
                <div class="alerttext">
                    <span>小主你马上就可以拥有我了哦！</span>
                    <span>SMALL LORD YOU CAN HAVE RIGHT AWAY!</span>
                </div>
                <div class="alertbut">
                    <div :class="{pay:choice}" @click="enter">
                        <h4>立即支付</h4>
                        <span>THE PAY</span>
                    </div>
                    <div :class="{pay:choice==false}" @click="enter">
                        <h4>我再看看</h4>
                        <span>I WILL SEE</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="alert" v-if="active1==true">
            <div class="alertcon">
                <div class="password">
                    <h2>请输入您的密码</h2>
                    <span>PLEASE ENTER YOUR PASSWORD</span>
                    <div class="input">
                        <input type="text">
                        <input type="text">
                        <input type="text">
                        <input type="text">
                        <input type="text">
                        <input type="text">
                    </div>
                    <button>确认</button>
                </div>

            </div>
        </div>

    </div>
</template>
<script>
    export default{
        name:'onlinepay',
        data(){
            return{
                active:false,
                active1:true,
                choice:true,
            }
        },
        methods:{
            enter:function () {
                if(this.choice){
                    this.choice=false;
                }else{
                    this.choice=true;
                }
            }
        }

    }
</script>
<style scoped>
    .pay{
        width: 100%;
        height: 100vh;
    }
    header{
        width: 100%;
        height: 0.5rem;
        background: #FFCA13;
        padding:  0.18rem 0.12rem 0 0.12rem;
        box-sizing: border-box;
    }
    .header{
        width: 100%;
        height: 50%;
        display: flex;
        align-self:center;
    }
    .left{
        width: 0.3rem;
        height: 0.3rem;
        border-radius: 50%;
        background: #fff;
        line-height: 0.3rem;
        text-align: center;
        font-size: 0.16rem;
        align-self:center;
    }
    .left>a{
        font-family: '宋体';
        font-weight: 800;
        color: #FFCA13;
    }
    .content{
        width: 100%;
        height: 1rem;
        background: #FFCA13;
        padding: 0.1rem 0.12rem;
    }
    .content h4{
        font-size: 0.14rem;
        color: #fff;
        font-weight: 300;
    }
    .content h3{
        font-size: 0.16rem;
        color: #fff;
        font-weight: 600;
    }
    .content h2{
        font-size: 0.2rem;
        color: #fff;
        font-weight: 800;
    }
    .content div{
        width: 0.775rem;
        height: 0.01rem;
        background: #fff;
    }
    .payment{
        width: 100%;
        height: 4.5rem;
        background: url("../../static/img/lrb_pay_03.png")  center no-repeat ;
        background-size: 100%;
        position: relative;
        top:-0.1rem;
        overflow: hidden;
    }
    .payment1{
        width: 100%;
        height: 0.42rem;
        /*background: red;*/
        display: flex;
        justify-content: center;
        margin-top: 0.9rem;
    }
    .payment1 div{
        width: 35%;
        /*background: #00aa00;*/
    }
    .paylist{
        width: 100%;
        padding: 0  0.64rem;
        margin-top: 0.8rem;
        /*background: red;*/
    }
    .paylist li{
        width: 100%;
        height: 0.41rem;
        border: 1px solid #BDBDBD;
        box-sizing: border-box;
        border-radius: 0.1rem;
        background: #fff;
        display: flex;
        padding: 0.05rem;
        box-shadow: 0.01rem 0.02rem 0.03rem rgba(0,0,0,0.2);
        margin-bottom: 0.05rem;
    }
    .payment .paylist ul li>.imgbox{
        width: 0.32rem !important;
        height: 0.32rem;
        border-radius: 0.1rem;
        overflow: hidden;
        display: flex;
        margin-right: 0.1rem;
    }
    .paylist li .img img{
        display: flex;
        width: 100%;
    }
    .paylist li .word{
        font-size: 0.1rem;
    }
    .next{
        width: 100%;
        height: 0.44rem;
        padding: 0  0.64rem;
        margin-top: 0.2rem;
    }
    .next div{
        width: 100%;
        background: red;
        border-radius: 0.05rem;
        box-shadow: 0.02rem 0.02rem 0.02rem rgba(255,68,36,0.2);
        font-size: 0.1rem;
        text-align: center;
    }
    .next div h2{
        color: #fff;
    }
    .next div span{
        color: #fff;
    }


    .alert{
        width:100%;
        height:100%;
        position: absolute;
        top:0;
        z-index:14;
        background: rgba(0,0,0,.9);
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
    .alertbut>div.pay h4{
        color:#fff;
    }
    .alertbut>div.pay span{
        color: #fff;
    }
    .alertbut>div.pay{
        background: #FFCA13;
    }
    .alertbut>div h4{
        color:#ABABAB;
    }
    .alertbut>div span{
        color: #ABABAB;
    }

    .password{
        width: 100%;
        height: 1.65rem;
        background: #fff;
        font-size: 0.12rem;
        text-align: center;
        padding: 0.2rem;
    }
    .password>h2{
        font-size: 0.16rem;
    }
    .password>span{
        color:#6b6b6b;
    }
    .password .input{
        margin-top: 0.3rem;
        width: 2.1rem;
        height:0.35rem;
        border: 1px solid #bfbfbf;
        border-radius: 0.05rem;
        display: flex;
        box-sizing: border-box;
        overflow: hidden;
    }
    .password .input input{
        width: calc( 1/6 * 2.1rem);
        border: 1px solid #bfbfbf;
        box-sizing: border-box;
        text-align: center;
        font-size: 0.2rem;
    }
    .password>button{
        width: 1.05rem;
        height: 0.375rem;
        background: #227edd;
        border-radius: 0.2rem;
        position: relative;
        top:0.25rem;
        font-size: 0.2rem;
        color: #fff;
    }

    img{
        width:100%;
        height:100%;
    }

</style>