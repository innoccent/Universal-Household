<template>
    <div>
        <mode_header></mode_header>
        <div class="main">
            <a href="javascript:;">
                <div class="main-top">
                    <div class="main-top-main">
                        <div class="main-top-left">
                            <div class="pic1"></div>
                            <div class="pic2"></div>
                        </div>
                        <div class="make-mode">
                            <h1>定制方案</h1>
                            <h2>Customized</h2>
                        </div>
                        <div class="main-top-left">
                            <div class="pic1"></div>
                            <div class="pic2"></div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <mode_list></mode_list>
        <mode_footer active="3"></mode_footer>
    </div>
</template>
<script>
    import modeHeader from  './mode/modeHeader.vue'
    import modeList  from  './mode/modeList.vue'
    import footers from './lib/footer.vue'
    export default{
        data(){
            return {}
        },
        components:{
            mode_header:modeHeader,
            mode_list:modeList,
            mode_footer:footers
        }
    }
</script>
<style scoped>
    .main{
        position: relative;
        left:0;
        top:0.5rem;
        padding:0.06rem  0.12rem 0;
    }
    .main-top{
        height: 0.5rem;
        background: #603811;
        border-radius: 0.4rem;
        margin: 0 auto;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .main-top-main{
        width:100%;
        height:100%;
        padding:0.035rem 0.15rem;
        display: flex;
    }
    .main-top-left{
        width: 8%;
        height: 100%;
        display: flex;
        justify-content: flex-start;
        align-items: center;
    }
    .main-top-left .pic1,.main-top-left .pic2{
        width: 0.04rem;
        height: 0.04rem;
        margin-right: 0.025rem;
        border-radius: 50%;
        background: #1ebce4;
    }
    .main-top-left .pic2{
        background: #f2c013;
    }
    .make-mode{
        margin:0 auto;
        text-align: center;
    }
    .make-mode h1,.make-mode h2{
        color: #fff;
        font-size: 0.12rem;
    }
    .make-mode h1{
        font-weight: normal;
        padding-top: 0.09rem;
    }
    .line{
        width: 0.03rem;
        height: 100%;
    }
    .line  .circle-big{
        width: 0.03rem;
        height:0.03rem;
        border-radius: 50%;
        background: #6b6b6b;
    }
    .line .circle-small{
        width: 0.02rem;
        height: 0.02rem;
        border-radius: 50%;
        background: #ababab;
        margin: 0 auto;
        margin-top: 0.01rem;
    }

</style>
