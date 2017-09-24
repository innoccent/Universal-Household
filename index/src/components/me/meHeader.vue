<template>
    <div class="meheader">
        <slot></slot>
        <router-link :to="{name:name}">
            <div class="ceter-left">
                <img src="/static/img/nxl_jiangtou_left.png" alt="">
            </div>
        </router-link>
        <div class="center-content" v-if="$route.name=='information'">
            <h1 >个人资料</h1>
            <h2>PERSONAL DATA</h2>
        </div>
        <div class="center-content" v-if="$route.name=='address'">
            <h1 >收货地址</h1>
            <h2>ADDRESS</h2>
        </div>
        <div class="center-content" v-if="$route.name=='order'">
            <h1 >我的订单</h1>
            <h2>MY ORDER</h2>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {
                name:'me'
            }
        }
    }
</script>
<style scoped>
    .meheader {
        width: 100%;
        height:0.5rem;
        background:#ffca13;
        position: fixed;
        left:0;
        top:0;
        display: flex;
        justify-content: center;
        z-index:2000;
    }
    .ceter-left{
        height: 0.3rem;
        width:0.3rem;
        position: absolute;
        left:0.14rem;
        top:50%;
        transform: translateY(-50%);
    }
    .ceter-left img{
        position: absolute;
        top:50%;
        transform: translateY(-50%);
    }
    .center-content{
        text-align: center;
    }
    .center-content h1{
        padding-top: 0.09rem;
        color:#fff;
        font-size: 0.14rem;
    }
    .center-content h2{
        color:#fff;
        font-size: 0.12rem;
    }
    .center-content h1:before{
        content:'';
        display: inline-block;
        background: url('../../../static/img/nxl_1_03.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }
    .center-content h1:after{
        content:'';
        display: inline-block;
        background: url('../../../static/img/nxl_1_05.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }
</style>
