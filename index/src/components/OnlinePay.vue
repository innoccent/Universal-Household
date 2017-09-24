<template>
    <div class="pay">
        <header>
            <div class="header">
                <div class="left"><router-link :to="{name:$route.query.name,query:{gid:$route.query.id,name:$route.query.orgname}}">&lt;</router-link></div>
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
                    <li :class="{active:this.kinds==1}" @click="getKind(1)">
                        <div class="imgbox">
                            <img src="../../static/img/lrb_pay_04.png" alt="">
                        </div>
                        <div class="word">
                            <h2>货到付款</h2>
                            <span>CASH ON DELIVER</span>
                        </div>
                    </li>
                    <li :class="{active:this.kinds==2}" @click="getKind(2)">
                        <div class="imgbox">
                            <img src="../../static/img/lrb_pay_06.png" alt="">
                        </div>
                        <div class="word">
                            <h2>银行卡</h2>
                            <span>BANK CARD</span>
                        </div>
                    </li>
                    <li :class="{active:this.kinds==3}" @click="getKind(3)">
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
            <div class="next" @click="next">
                <div>
                    <h2>下一步</h2>
                    <span>NEXT STEP</span>
                </div>
            </div>
        </div>

        <div :class="{alert:true,scale:active}">
            <div class="alertcon">
                <div class="alertimg">
                    <img src="/static/img/ybl3_02_03.png" alt="" v-show="choice==true">
                    <img src="/static/img/ybl3_03.png" alt="" v-show="choice==false">
                </div>
                <div class="alerttext">
                    <h4 v-if="status">小主你马上就可以拥有我了哦！</h4>
                    <h4 v-else>{{message}}</h4>
                    <span>SMALL LORD YOU CAN HAVE RIGHT AWAY!</span>
                </div>
                <div class="alertbut">
                    <div class=pay @click="pay">
                        <h4>立即支付</h4>
                        <span>THE PAY</span>
                    </div>
                    <div @click="see">
                        <h4>我再看看</h4>
                        <span>I WILL SEE</span>
                    </div>
                </div>
            </div>
        </div>

        <div :class="{alert:true,scale:active1}" ref="pass">
            <div class="alertcon">
                <div class="password">
                    <h2>请输入您的密码</h2>
                    <span>PLEASE ENTER YOUR PASSWORD</span>
                    <div class="input">
                        <input type="password" readonly v-model="currkey1" maxlength="1">
                        <input type="password" readonly v-model="currkey2" maxlength="1">
                        <input type="password" readonly v-model="currkey3" maxlength="1">
                        <input type="password" readonly v-model="currkey4" maxlength="1">
                        <input type="password" readonly v-model="currkey5" maxlength="1">
                        <input type="password" readonly v-model="currkey6" maxlength="1">
                    </div>
                    <button @click="submit">确认</button>
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
                active1:false,
                choice:true,
                kinds:3,
                currkey1:'',
                currkey2:'',
                currkey3:'',
                currkey4:'',
                currkey5:'',
                currkey6:'',
                index:0,
                message:'',
                status:true,
                id:this.$route.query.vid
            }
        },
        methods:{
            getKind(kinds){
                this.kinds = kinds;
            },
            next:function () {
                this.status=true;
                this.choice=true;
                this.active=true;
            },
            pay:function () {
                this.choice=true;
                this.active1=true;
                this.active=false;
            },
            see:function () {
                this.active1=false;
                this.active=false;
            },
            submit:function () {
                let password = [this.currkey1,this.currkey2,this.currkey3,this.currkey4,this.currkey5,this.currkey6];
                let flag = true;
                password.forEach(v=>{
                    if(!v){
                        flag=false;
                    }
                })
                if(flag){
                    if(this.id){
                        fetch('/api/goods/update_orders_status_by_oid',{
                            method:'POST',
                            headers:{'Content-Type':'application/json'},
                            body:JSON.stringify({id:this.id,status:2,password:password.join('')})
                        })
                            .then(res=>res.json())
                            .then(data=>{
                                if(data.code==4){
                                    for(let i = 1; i <= 6; i++){
                                        let currkey = 'currkey'+i;
                                        this[currkey]='';
                                    }
                                    this.index=0;
                                    this.message=data.message;
                                    this.active1=false;
                                    this.next();
                                    this.choice=false;
                                    this.status=false;
                                }else if(data.code==2){
                                    location.href='#/order?status=2';
                                }
                            })
                    }else{
                        let orders = JSON.parse(localStorage.currOrder);
                        orders.password = password.join('');
                        orders.status='2';
                        fetch('/api/goods/set_order',{
                            method:'POST',
                            headers:{'Content-Type':'application/json'},
                            body:JSON.stringify(orders)
                        })
                            .then(res=>res.json())
                            .then(data=>{
                                if(data.code==4){
                                    for(let i = 1; i <= 6; i++){
                                        let currkey = 'currkey'+i;
                                        this[currkey]='';
                                    }
                                    this.index=0;
                                    this.message=data.message;
                                    this.active1=false;
                                    this.next();
                                    this.choice=false;
                                    this.status=false;
                                }else if(data.code==2){
                                    localStorage.currOrder = [];
                                    location.href='#/order?status=2';
                                }
                            })
                    }
                }
            }
        },
        mounted(){
            document.onkeyup=(e)=>{
                if(e.keyCode>=48&&e.keyCode<=57){
                    if(this.index<=5){
                        let currkey = 'currkey'+(this.index+1);
                        this[currkey]=String.fromCharCode(e.keyCode);
                        this.index+=1;
                    }
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
        position: relative;
    }
    .paylist li.active:after{
        content: '';
        position: absolute;
        right: 0.05rem;
        top:0.05rem;
        width:0.04rem;
        height:calc(100% - 0.1rem);
        background: #1BD48C;
        border-radius: 0.01rem;

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
        background: #EE1B1B;
        border-radius: 0.05rem;
        box-shadow: 0.02rem 0.02rem 0.02rem rgba(255,68,36,0.9);
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
    .scale{
        transform: scale(1);
    }

</style>