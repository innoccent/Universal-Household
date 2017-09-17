<template>
    <a href="#/home">
        <div class="modeheader">
            <div class="center_top">
                <h1>定制设计</h1>
                <h2>Custom design</h2>
            </div>
        </div>
    </a>
</template>
<script>
    export default{
        data(){
            return {}
        }
    }
</script>
<style  scoped>
    .modeheader{
        width:100%;
        position: fixed;
        z-index: 999;
        height: 0.5rem;
        background: #ffca13;
    }
    .center_top{
        width:100%;
        height: 100%;
        text-align: center;
    }
    .center_top h1{
        padding-top: 0.09rem;
        color:#fff;
        font-size: 0.14rem;
    }
    .center_top h2{
        color:#fff;
        font-size: 0.12rem;
    }
    .center_top h1:before{
        content:'';
        display: inline-block;
        background: url('../../../static/img/nxl_1_03.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }
    .center_top h1:after{
         content:'';
         display: inline-block;
         background: url('../../../static/img/nxl_1_05.png') center center;
         width: 0.1rem;
         height: 0.04rem;
     }
</style>
