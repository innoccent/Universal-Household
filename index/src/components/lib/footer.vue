<template>
    <div class="myfooter">
        <ul>
            <li @click="up(1)">
                <a href="#/home">
                    <img src="/static/img/htbimg/home_03.png" alt=""  :class="{'up':active==1}">
                    <p :class="{'active':active==1}">首页</p>
                </a>
            </li>
            <li @click="up(2)">
                <a href="#/classify">
                    <img src="/static/img/htbimg/class_06.png" alt="" :class="{'up':active==2}">
                    <p :class="{'active':active==2}">分类</p>
                </a>
            </li>
            <li @click="up(3)">
                <a href="#/mode">
                    <img src="/static/img/htbimg/design_08.png" alt="" :class="{'up':active==3}">
                    <p :class="{'active':active==3}">定制方案</p>
                </a>
            </li>
            <li @click="up(4)">
                <a href="#/me">
                    <img src="/static/img/htbimg/my_10.png" alt="" :class="{'up':active==4}">
                    <p :class="{'active':active==4}">我的</p>
                </a>
            </li>
        </ul>
    </div>
</template>
<script>
    export default {
        name:'footer',
        props:{
          active:String
        },
        methods:{
            up:function (n) {
//                this.active=n;
            }
        }
    }
</script>
<style scoped>
    .myfooter{
        width: 100%;
        height: 0.5rem;
        background-color: rgb(44,44,44);
        position: fixed;
        left: 0;
        bottom: 0;
        z-index: 1000;
    }
    .myfooter>ul{
        height: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .myfooter>ul>li{
        width: 25%;
        display: flex;
        height: 100%;
        align-items: center;
        justify-content: center;
        font-size: 0.11rem;
        position: relative;
    }

    .myfooter>ul>li a p{
        text-align: center;
        color: #fff;
        margin-top: -0.11rem;
        display: none;

    }
    .myfooter>ul>li a p.active {
        display: block;
    }
    .myfooter>ul>li a img{
        display: block;
        width: 0.29rem;
        height: 0.29rem;
        position: relative;
        top:0;
        transition: top .3s linear;
    }
    .myfooter>ul>li a img.up{
        position: relative;
        top:-30px;
        left: 0;
        right: 0;
        margin: auto;
    }
</style>