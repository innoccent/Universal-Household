<template>
    <div class="room">
        <div class="login"></div>
        <div class="head">
            <a href="#/login" class="back">
                <span></span>
            </a>
        </div>
        <div class="welcome">
            <div class="wel">WELCOMETO</div>
            <div class="order">ORDER</div>
        </div>
        <div class="login_in">
            <div class="cont">
                <div class="content"></div>
                <div class="yellowbg"></div>
                <div class="headpic">
                    <img src="/static/img/ybl2_07.png" alt="">
                </div>
                <div class="input-con">
                    <input type="text" v-model="form.account" placeholder="用户名，2-8个字符" maxlength="8" @keyup="check('account')" :class="{active:check('account')}">
                    <input type="text" v-model="form.phone" placeholder="请输入您的手机号" maxlength="11" @keyup="check('phone')" :class="{active:check('phone')}">
                    <input type="text" v-model="form.check" placeholder="请输入验证码" maxlength="6">
                    <input type="password" v-model="form.pass" placeholder="请输入您的密码" maxlength="16" @keyup="check('pass')" :class="{active:check('pass')}">
                    <div :class="{check:true,get:check('phone')}">获取验证码</div>
                    <div class="rember">
                        <span>
                            <span class="bluebtn"></span>我已阅读并接受<a href="">版权声明</a>和<a href="">隐私保护</a>条款
                        </span>
                    </div>
                    <div class="promptly">
                        <a href="javascript:;" @click="submit">
                            <div class="button">
                                <div>完成注册</div>
                                <div>REGISTERED</div>
                            </div>
                        </a>
                    </div>
                    <div class="rember">
                        <span>
                            <span class="bluebtn"></span>已有账号，去<a href="">登陆</a>
                        </span>
                    </div>


                </div>
            </div>

        </div>
        <div class="alert" :class="{scale:active==true}">
            <div class="alertcon">
                <div class="alertimg" v-if="alertbut==true"><img src="/static/img/ybl3_02_03.png" alt=""></div>
                <div class="alertimg" v-if="alertbut2==true"><img src="/static/img/ybl3_03.png" alt=""></div>
                <div class="alerttext">
                    <span>{{message}}</span>
                    <span v-if="status">Registered successfully</span>
                    <span v-else>Registered failed</span>
                </div>
                <div class="alertbut" @click="enter" v-if="alertbut==true">
                    <span>立即登录</span>
                    <span>THE LOGIN</span>
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
    export default {
        data() {
            return {
                form:{
                    account:'',
                    phone:'',
                    check:'',
                    pass:'',
                },
                active:false,
                alertbut:false,
                alertbut2:true,
                message:'完成注册，欢迎小主到来',
                status:true
            }
        },
        methods: {
            check(kind){
                var result = false;
                switch (kind){
                    case 'account':
                        if(this.form.account.length<2){
                            result=true;
                        }
                        break;
                    case 'phone':
                        if(this.form.phone.length<11){
                            result=true;
                        }
                        break;
                    case 'pass':
                        if(this.form.pass.length<6){
                            result=true;
                        }
                        break;
                }
                return result;
            },
            reset(){
                this.active=false;
                this.status=true;
            },
            enter:function () {
                location.href='#/yloginin'
            },
            submit:function () {
                fetch('/api/login/check_register',{
                    method:'POST',
                    headers:{'Content-Type':'application/json'},
                    body:JSON.stringify(this.form),
                })
                    .then(res=>res.json())
                    .then(data=>{
                        if(data.code==4){
                            this.message=data.message;
                            this.active=true;
                            this.status=false;
                            this.alertbut=false;
                            this.alertbut2=true;

                        }else if(data.code==2){
                            this.message='完成注册，欢迎小主到来',
                                this.alertbut=true;
                            this.alertbut2=false;
                            this.active=true;
                        }
                    })
            }
        }
    }
</script>

<style scoped>
    .room{
        height:100vh;
    }
    .head{
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: absolute;
        top:0;
        padding:.12rem;
    }
    .back{
        width:.3rem;
        height:.3rem;
        background: url("/static/img/ybl2_03.png");
        background-size: cover;
    }

    .login{
        background:url('/static/img/ybl_04.png') top left/cover;
        width:100% ;
        height:100%;
        position:absolute;
        top:0;
        left:0;
    }
    .welcome{
        position: absolute;
        top:1rem;
        text-align: center;
        width:100%;
    }
    .wel{
        text-align: center;
        font-size:.28rem;
        color: #FF9313;
        font-weight: bold;
        letter-spacing: .1rem;
    }
    .order{
        text-align: center;
        font-size:.22rem;
        color: #FF9313;
        font-weight: bold;
        letter-spacing: .42rem;
        margin-left:.27rem;
    }
    .login_in{
        width:100%;
        position: absolute;
        top:1.6rem;
        left:0;
        display: flex;
        justify-content: center;
    }
    .cont{
        position: relative;
        width:100%;
        height:auto;
    }
    .yellowbg{
        position: absolute;
        width:3.05rem;
        height:1rem;
        left:0;
        right:0;
        margin:auto;
        top:3.52rem;
        z-index:1;
        background:url("/static/img/ybl2_03_03.png");
    }
    .content{
        position: absolute;
        top:0;
        left:0;
        right:0;
        margin:auto;
        z-index:2;
        width:3.4rem;
        height:4.5rem;
        background: url("/static/img/ybl2_11_03.png");
        background-size:100% 100% ;
    }
    .headpic{
        width:.79rem;
        height:.79rem;
        border-radius: 50%;
        position: absolute;
        z-index:3;
        top:0;
        right:50%;
        margin-right: -.38rem;
    }
    .headpic img{
        width:100%;
    }
    .input-con{
        width:70%;
        height:2.5rem;
        position: absolute;
        top:1.4rem;
        left: 0;
        right:0;
        margin:auto;
        z-index:5;
        display: flex;
        flex-direction: column;
    }
    .input-con input{
        padding-left:.3rem;
        font-size:.12rem;
        margin:0 auto;
        width:80%;
        height:.4rem;
        border: none;
        outline: none;
        border-bottom: 1px solid #FF9313;
    }
    .input-con input:nth-child(1){
        background: url("/static/img/ybl2_11.png") center left no-repeat;
    }
    .input-con input:nth-child(2){
        background: url("/static/img/ybl4_03.png") center left no-repeat;
        position: relative;
    }
    .check{
        width:.6rem;
        height:.2rem;
        font-size:.09rem;
        color: #fff;
        background: #ffca13;
        border-radius: .1rem;
        position: absolute;
        top:.47rem;
        right:.24rem;
        line-height: .2rem;
        text-align: center;
        transition: background .3s linear;
    }
    div.get{
        background: #eee;
    }
    .input-con input:nth-child(3){
        background: url("/static/img/ybl4_11.png") center left no-repeat;
    }
    .input-con input:nth-child(4){
        background: url("/static/img/ybl2_14.png") center left no-repeat;
    }
    .rember{
        width:80%;
        margin:0 auto;
        margin-top:.1rem;
        display: flex;
        align-items: center;
        justify-content: space-between;
        font-size:.09rem;
        color: #666;
    }
    .bluebtn{
        display: inline-block;
        width:.08rem;
        height:.08rem;
        background: url("/static/img/ybl2_17.png");
        background-size: cover;
        margin-right:.05rem;
    }
    .rember a{
        color: #1ebce4;
    }
    .promptly{
        margin-top:.15rem;
    }
    .promptly a{
        display: flex;
        overflow: hidden;
    }
    .button{
        width:1.98rem;
        height:.42rem;
        margin:0 auto;
        background:url("/static/img/ybl2_20.png") no-repeat;
        background-size: cover;
        display: flex;
        justify-content: center;
        flex-direction: column;
        text-align:center;
    }
    .button div:first-child{
        font-size:.14rem;
        color: #fff;
    }
    .button div:last-child{
        font-size:.12rem;
        color: #fff;
    }
    .alert{
        width:100%;
        height:100%;
        position: absolute;
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
    input.active{
        border-color: red;
    }
</style>