<template>
    <div class="guide" @touchend="touch">
        <swiper :options="swiperOption" ref="mySwiperA" class="swip">
            <!-- 幻灯内容 -->
            <swiper-slide class="slide"><img src="/static/img/leader_03.png" alt=""></swiper-slide>
            <swiper-slide class="slide"><img src="/static/img/leader_05.png" alt=""></swiper-slide>
            <swiper-slide class="slide"><img src="/static/img/leader_10.png" alt=""></swiper-slide>
        </swiper>
        <ul class="page">
            <li :class="{active:this.active==0}"></li>
            <li :class="{active:this.active==1}"></li>
            <li :class="{active:this.active==2}"></li>
        </ul>
    </div>
</template>
<script>
    export default{
        data(){
            return {
                active:0,
                swiperOption: {
                    // 所有配置均为可选（同Swiper配置）
                    notNextTick: true,
                    grabCursor : true,
                    setWrapperSize :true,
                    autoHeight: true,
                    mousewheelControl : true,
                    observeParents:true,
                    onTransitionStart(swiper){
                        this.active=swiper.realIndex;
                        console.log(this.active)
                    },
                    onTouchEnd(){
                        if(this.active==2) {
                            location.href = '#/login';
                        }
                    }
                },

            }
        },
        computed: {
            swiper() {
                return this.$refs.mySwiperA.swiper
            },
        },
        methods:{
            touch(){
                this.active=this.swiper.realIndex;
            }
        },
        mounted() {

        }
    }
</script>

<style scoped>
    .guide{
        width:100vw;
        height:100vh;
        overflow: hidden;
        position: relative;
        background: #fff;

    }
    .swip{
        height:100%;
    }
    .slide{
        width:100vw;
        height:100vh;
        float: left;
    }
    .slide > img{
        width:100%;
        height: 100%;
    }
    .page{
        width:100%;
        height:0.04rem;
        position: absolute;
        bottom:0.39rem;
        left:0;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .page > li{
        width:0.1rem;
        height:100%;
        background: #ffcc85;
        margin:0 0.125rem;
        transition: background .3s linear;
        border-radius: 0.02rem;
    }
    .page > li.active{
        width:0.15rem;
        height:100%;
        background: #e03737;
    }
</style>