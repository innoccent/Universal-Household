<template>
    <div class="rome">
        <div class="login"></div>
        <div class="welcome">
            <div class="wel">WELCOMETO</div>
            <div class="order">ORDER</div>
        </div>
        <div class="button">
            <a href="#/yloginin">
                <div class="log">登录</div>
            </a>
            <a href="#/yregister">
                <div class="log reg">注册</div>
            </a>
        </div>
        <div class="else">
            <div class="word">OR ELSE</div>
            <div class="word2">
                <a href="">
                    <div class="elsepic">
                        其他登录方式
                    </div>
                </a>

            </div>
        </div>
        <div class="sina">
            <a href="">
                <div class="qq"></div>
            </a>
            <a href="">
                <div class="wx"></div>
            </a>
            <a href="">
                <div class="sn"></div>
            </a>

        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {

            }
        },
        methods: {

        }
    }
</script>

<style scoped>
    .rome{
        height:100vh;
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
        top:2rem;
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
    .button{
        width:100%;
        display: flex;
        justify-content: center;
        align-items: center;
        top:4.5rem;
        position: absolute;
    }
    .log{
        width:1.3rem;
        height:.48rem;
        background: url("/static/img/ybl_03.png") ;
        background-size: cover;
        font-size:.14rem;
        color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .reg{
        margin-left:.3rem;
    }
    .else{
        text-align: center;
        width:100%;
        position: absolute;
        top:5.2rem;
        font-size:.14rem;
        color: #F2C62E;
    }
    .word{
        color: #F2C62E;
    }
    .word2{
        color: #F2C62E;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .elsepic{
        width:1.3rem;
        height:.25rem;
        background: url("/static/img/ybl_08.png") no-repeat;
        background-size:100% 100%;
        font-size:.12rem;
        line-height:.25rem;
        color:  #F2C62E;
    }
    .sina{
        width:100%;
        position: absolute;
        top:5.7rem;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .sina div{
        width:.3rem;
        height:.3rem;
        background-size:cover ;
    }
    .qq{
        background: url("/static/img/ybl_07.png");
        margin-right:.3rem;
    }
    .wx{
        background: url("/static/img/ybl_09.png");
        margin-right:.3rem;
    }
    .sn{
        background: url("/static/img/ybl_11.png");
    }
</style>