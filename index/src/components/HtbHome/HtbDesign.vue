<template>
    <div class="h-home-design">
        <div class="des-main">
            <router-link :to="{name:'goodsdetails',query:{name:'Htbhome',gid:v.id}}" v-for="v in free" :key="v.id">
                <div class="des-main-con">
                    <div class="des-main-img">
                        <img :src="v.goods_pic" alt="">
                    </div>
                    <div class="des-main-detail">
                        <p>大师级作品设计上线</p>
                        <div><p>MASTER </p> DESIGN ONLINE</div>
                        <section>
                            MASTER DESIGN ONLINE
                        </section>
                    </div>
                </div>
            </router-link>
        </div>

        <div class="des-main-con-bg"></div>
    </div>
</template>
<script>
    export default {
        name: 'design',
        props: ['free']
    }
</script>
<style scoped>
    img {
        width: 100%;
        height: 100%;
    }

    .h-home-design {
        width: 100%;
        height: 2.74rem;
        padding: 0 0.12rem;
        position: relative;
    }

    .des-main {
        width: 100%;
        height: 100%;
        position: relative;
        display: flex;
        justify-content: space-between;
        z-index: 50;
    }

    .des-main-con {
        width: 1.7rem;
        height: 100%;
    }

    .des-main-img {
        width: 100%;
        height: 1.94rem;

    }

    .des-main-con-bg {
        width: 100%;
        height: 1.34rem;
        background-color: #25d892;
        position: absolute;
        left: 0;
        bottom: 0;
        z-index: 0;
    }

    .des-main-detail {
        margin-top: 0.15rem;
        font-size: 0.14rem;
    }

    .des-main-detail div {
        display: flex;
        color: #fff;
        font-size: 0.12rem;
    }

    .des-main-detail div p {
        border-bottom: 2px solid #fff;
    }

    .des-main-detail P {
        color: #fff;
        font-weight: 600;
    }

    .des-main-detail > section {
        line-height: 0.3rem;
        white-space: nowrap;
        font-size: 0.11rem;
        color: white;
    }
</style>