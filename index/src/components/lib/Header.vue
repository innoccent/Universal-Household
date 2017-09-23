<template>
    <header>
        <div class="header">
            <div class="left"><router-link :to="{name:pageinfo}">&lt;</router-link></div>
            <div class="right">
                <div>
                    <div class="img"><img src="/static/img/lrb_03.png" alt=""></div>
                    <h2>{{head}}</h2>
                    <div class="img"><img src="/static/img/lrb_05.png" alt=""></div>
                </div>
                <span class="word">Goods details</span>
            </div>
        </div>
    </header>
</template>
<script>
    export default {
        name:'header',
        props:['head','pageinfo'],
    }
</script>
<style scoped>
    header{
        width: 100%;
        height: 0.5rem;
        background: #FFCA13;
        padding:  0.18rem 0.12rem 0 0.12rem;
        box-sizing: border-box;
        position: fixed;
        top:0;
        z-index: 1000;
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
    .right{
        width: calc( 100% - 0.6rem);
        text-align: center;
        font-size: 0.12rem;
        align-self:center;
    }
    .right>div{
        display: flex;
        justify-content: center;

    }
    .img{
        width: 0.28rem;
        align-self:center;
    }
    .img>img{
        width: 100%;
    }
    .right h2{
        color: #fff;
        margin: 0 0.1rem;
    }
    .right>span{
        color: #fff;
        font-weight: 200;
    }


</style>