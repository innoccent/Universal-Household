<template>
    <div class="room">
        <div class="login"></div>
        <div class="head">
            <a href="#/login" class="back">
                <span></span>
            </a>
            <a href="#/yregister" class="reg">
                <span>注册</span>
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
                    <input type="text" v-model="form.account" placeholder="请输入您的账号">
                    <input type="password" v-model="form.pass" placeholder="请输入您的密码">
                    <div class="rember">
                        <span>
                            <span class="bluebtn"></span>记住密码
                        </span>
                        <span>忘记密码?</span>
                    </div>
                    <div class="promptly">
                        <a href="javascript:;" @click="submit">
                            <div class="button">
                                <div>立即登录</div>
                                <div>Login immediately</div>
                            </div>
                        </a>
                    </div>


                </div>
            </div>

        </div>
        <div class="alert" v-if="active==true">
            <div class="alertcon">
                <div class="alertimg"><img src="/static/img/ybl3_03.png" alt=""></div>
                <div class="alerttext">
                    <span>登陆成功，欢迎小主来到鱼设计</span>
                    <span>welcome small Lord to fish design</span>
                </div>
                <div class="alertbut" @click="enter">
                    <span>开启新的生活</span>
                    <span>START A NEW LIFE</span>
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
                    pass:'',
                },
                active:false,
            }
        },
        methods: {
            enter:function () {
                location.href='#/htbhome'
            },
            submit:function () {
                fetch('/api/check_account',{
                    method:'POST',
                    headers:{'Content-Type':'application/json'},
                    body:JSON.stringify(this.form),
                })
                    .then(res=>res.json())
                    .then(data=>{
                        if(data.code==4){
                            this.active=true;
                        }else if(data.code==2){
                            location.href='';
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
    .reg{
        font-size:.14rem;
        width:.48rem;
        height:.22rem;
        border:1px solid #F2C013;
        border-radius: .11rem;
        text-align: center;
    }
    .reg span{
        color: #F2C013;
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
        top:2rem;
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
        top:2.52rem;
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
        height:3.5rem;
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
        height:2.4rem;
        position: absolute;
        top:1.1rem;
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
        background: url("/static/img/ybl2_14.png") center left no-repeat;
    }
    .rember{
        width:80%;
        margin:0 auto;
        margin-top:.1rem;
        display: flex;
        align-items: center;
        justify-content: space-between;
        font-size:.12rem;
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
    .promptly{
        margin-top:.3rem;
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
</style>