<template>
    <div class="guide">
        <swiper :options="swiperOption" ref="mySwiperA" class="swip">
            <!-- 幻灯内容 -->
            <swiper-slide class="slide"><img src="/static/img/leader_03.png" alt=""></swiper-slide>
            <swiper-slide class="slide"><img src="/static/img/leader_05.png" alt=""></swiper-slide>
            <swiper-slide class="slide"><img src="/static/img/leader_10.png" alt=""></swiper-slide>
        </swiper>
    </div>
</template>
<script>
    export default{
        data(){
            return {
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
            active(){
                return this.swiperOption.active;
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
</style>