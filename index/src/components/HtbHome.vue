<template>
    <div class="h-home">
        <header class="h-home-head">
            <div class="h-home-address">
                <div></div>
            </div>
            <div class="h-home-title">
                <p>鱼设计</p>
                <img src="/static/img/htbimg/t-bg-1_06.png" alt="">
            </div>
            <div class="h-home-message">
                <div></div>
            </div>
        </header>
        <div class="h-home-search">
            <div class="h-home-sea" @click.stop="search">
                <input type="text" value="商品名/设计师/分类...">
            </div>
            <div class="h-home-but">
                <p>Search</p>
            </div>
        </div>
        <mysearch v-show="isSearch" @hide="hide"></mysearch>
        <div class="h-home-banner">
            <ul class="h-home-ban-img">
                <swiper :options="swiperOption" ref="mySwiperA" class="swip">
                    <swiper-slide class="slide" v-for="v in banner" :key="v.id">
                        <router-link :to="{name:'goodsdetails',query:{name:'Htbhome',gid:v.id}}">
                            <img :src="v.goods_pic" alt="">
                        </router-link>
                    </swiper-slide>
                </swiper>
            </ul>
            <ul class="h-home-ban-cir">
                <li :class="{active:this.active==2}"></li>
                <li :class="{active:this.active==0}"></li>
                <li :class="{active:this.active==1}"></li>
            </ul>
        </div>
        <div class="htb-home-title">
            <div class="htb-tit-content">
                <p><span>|</span>限<span>|</span>时<span>|</span>抢<span>|</span>购<span>|</span></p>
                <p>FLASH SALE</p>
            </div>
        </div>
        <myshop :shop="shop"></myshop>
        <div class="htb-home-title">
            <div class="htb-tit-content">
                <p><span>|</span>免<span>|</span>费<span>|</span>设<span>|</span>计<span>|</span></p>
                <p>FREE DESIGN</p>
            </div>
        </div>
        <mydesign :free="free"></mydesign>
        <div class="htb-home-title">
            <div class="htb-tit-content">
                <p><span>|</span>最<span>|</span>近<span>|</span>设<span>|</span>计<span>|</span></p>
                <p>FREE DESIGN</p>
            </div>
        </div>
        <mylately :design="design"></mylately>
        <div class="htb-home-title">
            <div class="htb-tit-content">
                <p><span>|</span>猜<span>|</span>你<span>|</span>喜<span>|</span>欢<span>|</span></p>
                <p>FREE DESIGN</p>
            </div>
        </div>
        <mylike :like="like"></mylike>
        <myfooter active="1"></myfooter>
    </div>
</template>
<script>
    import shop from './HtbHome/HtbShop.vue';
    import design from './HtbHome/HtbDesign.vue';
    import lately from './HtbHome/HtbLately.vue';
    import like from './HtbHome/Htblike.vue';
    import footer from './lib/footer.vue';
    import search from './HtbHome/Search.vue'

    export default {
        name: 'htbhome',
        data() {
            return {
                isSearch: false,
                banner: [],
                swiperOption: {
                    // 所有配置均为可选（同Swiper配置）
                    notNextTick: true,
                    grabCursor : true,
                    setWrapperSize :true,
                    autoHeight: true,
                    mousewheelControl : true,
                    observeParents:true,
                    autoplay:3000,
                    loop:true,
                    onTransitionStart(swiper){
                        this.active=swiper.realIndex;
                    },
                    onSlideChangeEnd: swiper => {
                        this.active=swiper.realIndex;
                    }
                },
                active:2,
                shop:[],
                free:[],
                design:[],
                like:[]
            }
        },
        components: {
            'myshop': shop,
            'mydesign': design,
            'mylately': lately,
            'mylike': like,
            'myfooter': footer,
            'mysearch': search
        },
        methods: {
            search: function () {
                this.isSearch = !this.isSearch;
            },
            hide(){
                this.isSearch=!this.isSearch;
            }
        },
        mounted() {
            if (!localStorage.uid) {
                location.href = '#/login';
            }
            fetch('/api/index/get_banner?cid=9')
                .then(res => res.json())
                .then(data => {
                    if (data.code == 2) {
                        this.banner = data.data;
                    }
                });
            fetch('/api/index/get_banner?cid=10')
                .then(res=>res.json())
                .then(data=>{
                    if (data.code == 2) {
                        this.shop = data.data;
                    }
                })
            fetch('/api/index/get_banner?cid=11')
                .then(res=>res.json())
                .then(data=>{
                    if (data.code == 2) {
                        this.free = data.data;
                    }
                })
            fetch('/api/index/get_banner?cid=12')
                .then(res=>res.json())
                .then(data=>{
                    if (data.code == 2) {
                        this.design = data.data;
                    }
                })
            fetch('/api/index/get_like')
                .then(res=>res.json())
                .then(data=>{
                    this.like=data.data;
                })
        }
    }
</script>
<style scoped>
    img {
        width: 100%;
        height: 100%;
    }

    .h-home {
        width: 100%;
        height: 100vh;
        overflow-y: scroll;
        position: relative;
        padding-bottom: 0.57rem;
    }

    ::-webkit-scrollbar {
        width: 0;
    }

    .h-home-head {
        background: #ffca13;
        width: 100%;
        height: 0.8rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 0.12rem;
        padding-bottom: 0.2rem;
    }

    .h-home-title {
        width: 70%;
        height: 100%;
        font-size: 0.2rem;
        font-weight: 600;
        text-align: center;
        position: relative;
        z-index: 50;
    }

    .h-home-title p {
        color: #fff;
        line-height: 0.6rem;
        background: url("/static/img/htbimg/home01_03.png") 50% 80%/40% no-repeat;
        vertical-align: middle;
        position: relative;
        z-index: 50;

    }

    .h-home-title > img {
        width: 0.59rem;
        height: 0.49rem;
        position: absolute;
        bottom: 0rem;
        left: 0;
        right: 0;
        margin: auto;
        z-index: 2;
    }

    .h-home-address, .h-home-message {
        width: 0.3rem;
        height: 0.3rem;
        background-color: #fff;
        border-radius: 50%;
        box-shadow: 0 0 10px #eee;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .h-home-address > div {
        background: url(/static/img/htbimg/address-1_03.png) center center/contain no-repeat;
        display: flex;
        width: 0.16rem;
        height: 0.18rem;

    }

    .h-home-message > div {
        background: url("/static/img/htbimg/mess_05.png") center center/contain no-repeat;
        display: flex;
        width: 0.16rem;
        height: 0.18rem;
    }

    .h-home-search {
        width: 100%;
        height: 0.46rem;
        padding: 0 0.12rem;
        margin-top: -0.20rem;
        display: flex;
        align-items: center;
    }

    .h-home-sea {
        width: 2.86rem;
        height: 100%;
    }

    .h-home-sea input {
        width: 100%;
        height: 100%;
        display: block;
        border: 0;
        list-style: none;
        color: #c2c2c2;
        font-size: 0.14rem;
        padding-left: 0.08rem;
        border-radius: 0.08rem;
        outline: none;
        box-shadow: 0 0 10px #eee;
    }

    .h-home-but {
        width: 0.85rem;
        height: 0.36rem;
        background-color: #ff9313;
        border-radius: 0.08rem;
        box-shadow: 0 5px 10px #e5bd8e;
        margin-left: -0.2rem;
        padding: 0.06rem 0.15rem;
        color: #fff;
        font-size: 0.18rem;
    }

    .h-home-but p {
        color: #fff;
        border-bottom: 2px dotted #fff;
    }

    .h-home-banner {
        width: 100%;
        height: 1.71rem;
        background-color: #Fff;
        margin-top: 0.17rem;
        overflow: hidden;
        position: relative;
    }

    .h-home-banner > ul.h-home-ban-img {
        width: 100%;
        height: 100%;

    }

    .h-home-ban-img > .swip{
        width:100%;
        height:100%;
    }

    .h-home-ban-img > .swip .slide{
        width:100vw;
        height:1.71rem;
        float: left;
    }

    .h-home-banner > ul.h-home-ban-img > li {
        width: 100%;
        height: 100%;
    }

    .h-home-banner > ul.h-home-ban-img > li > img {
        display: block;
        width: 100%;
        height: 100%;
    }

    .h-home-ban-cir {
        width: 0.4rem;
        height: 0.05rem;
        position: absolute;
        left: 0;
        right: 0;
        margin: auto;
        bottom: 0.14rem;
    }

    .h-home-ban-cir > li {
        width: 0.05rem;
        height: 0.05rem;
        border-radius: 50%;
        background-color: #fff;
        float: left;
        margin-right: 0.07rem;
    }

    .h-home-ban-cir > li.active {
        width: 0.07rem;
        height: 0.07rem;
        border: 2px solid #d3aa23;

    }

    .htb-home-title {
        width: 100%;
        height: 0.62rem;
        padding: 0 0.12rem;
        text-align: center;
        padding-top: 0.15rem;
    }

    .htb-tit-content P:first-child {
        letter-spacing: 10px;
        font-size: 0.18rem;
        font-weight: 600;
        line-height: 0.15rem;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .htb-tit-content P:first-child span {
        font-size: 0.1rem;
        color: #ff9313;
        display: inline-block;
        height: 100%;
    }

    .htb-tit-content P:last-child {
        margin-top: 0.06rem;
        font-size: 0.16rem;
        font-weight: 500;
        letter-spacing: 6px
    }
</style>