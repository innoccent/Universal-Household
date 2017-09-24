<template>
    <div class="h-home-lately">
        <ul class="lately-main">
            <router-link :to="{name:'goodsdetails',query:{name:'Htbhome',gid:v.id}}" v-for="v in design" :key="v.id">
                <li>
                    <div class="late-con-img">
                        <img :src="v.goods_pic" alt="">
                        <!--<div class="late-like">-->
                            <!--<img src="/static/img/htbimg/like_03.png" alt="" v-show="true">-->
                            <!--<img src="/static/img/htbimg/dislike_11.png" alt="" v-show="false">-->
                        <!--</div>-->
                    </div>
                    <div class="late-con-det">
                        <ul>
                            <li class="late-con-title">
                                <h5>{{v.goods_name}}</h5>
                            </li>
                            <li class="late-text">
                                <p>{{v.goods_desc}}</p>
                            </li>
                            <li class="late-more">
                                <div>
                                    <span>3245</span>
                                </div>
                                <div>
                                    <span>2568</span>
                                </div>
                                <div>
                                    <span>5210</span>
                                </div>
                                <div class="late-people">
                                    <ul>
                                        <li><img src="/static/img/htbimg/det-1_03.png" alt=""></li>
                                        <li><img src="/static/img/htbimg/det-1_03.png" alt=""></li>
                                        <li><img src="/static/img/htbimg/det-1_03.png" alt=""></li>
                                        <li>...</li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
            </router-link>
        </ul>
    </div>
</template>
<script>
    export default {
        props: ['design']
    }
</script>
<style scoped>
    img {
        width: 100%;
        height: 100%;
    }

    .h-home-lately {
        width: 100%;
        height: auto;
        padding: 0 0.12rem;
    }

    .lately-main > a > li {
        color: #333;
        width: 100%;
        height: 2.21rem;
        background-color: #fff;
        border-radius: 0.06rem;
        margin-bottom: 0.06rem;
        overflow: hidden;
        padding: 0.1rem;
    }

    .late-con-img {
        width: 100%;
        height: 1.28rem;
        position: relative;
    }

    .late-like {
        width: 0.33rem;
        height: 0.33rem;
        overflow: hidden;
        border-radius: 50%;
        position: absolute;
        right: 0.25rem;
        bottom: -0.15rem;
        z-index: 50;
    }

    .late-like img {
        display: block;
    }

    .late-con-title {
        font-size: 0.2rem;
    }

    .late-text p {
        font-size: 0.12rem;
        color: #6a6a6a;
    }

    .late-more {
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 0.13rem;
        line-height: 0.32rem;
    }

    .late-more div {
        width: 25%;
        padding-left: 0.13rem;
    }

    .late-more div:nth-child(1) {
        background: url("/static/img/htbimg/xin_07.png") left center no-repeat;
    }

    .late-more div:nth-child(2) {
        background: url("/static/img/htbimg/com_07.png") left center no-repeat;
    }

    .late-more div:nth-child(3) {
        background: url("/static/img/htbimg/shop_09.png") left center no-repeat;
    }

    .late-people > ul {
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: flex-end;
        margin-left: 0.1rem;
    }

    .late-people > ul > li {
        width: 0.24rem;
        height: 0.24rem;
        background-repeat: no-repeat;
        outline: 1px solid #fff;
        border-radius: 50%;
        overflow: hidden;
    }

    .late-people > ul > li > img {
        display: block;
    }

    .late-people > ul > li:nth-child(2), .late-people > ul > li:nth-child(3) {
        margin-left: -0.05rem;
    }

    .late-people > ul > li:nth-child(4) {
        width: 0.13rem;
        height: 0.13rem;
        color: #f1f1f1;
        font-size: 0.1rem;
        line-height: 0.13rem;
        text-align: center;
    }
</style>