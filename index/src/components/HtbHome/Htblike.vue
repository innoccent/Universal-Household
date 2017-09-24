<template>
    <div class="h-home-like">
        <ul class="h-home-like-main">
            <router-link :to="{name:'goodsdetails',query:{name:'Htbhome',gid:v.id}}" v-for="v in like" :key="v.id">
                <li>
                    <div class="h-like-img">
                        <img :src="v.goods_pic" alt="">
                    </div>
                    <div class="h-like-det">
                        <ul>
                            <li>
                                <p>{{v.goods_name}}</p>
                                <p><span style="text-transform: uppercase">{{v.goods_ename}}</span></p>
                            </li>
                            <li>
                                <p>{{v.goods_desc}}</p>
                            </li>
                            <li class="like-more">
                                <div>
                                    <span>3245</span>
                                </div>
                                <div>
                                    <span>2568</span>
                                </div>
                                <div>
                                    <span>5210</span>
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
        props: ['like']
    }
</script>
<style>
    img {
        width: 100%;
        height: 100%;
    }

    .h-home-like {
        width: 100%;
        height: auto;
        padding: 0 0.12rem;
    }

    .h-home-like-main {
        width: 100%;
        height: auto;
    }

    .h-home-like-main > a > li {
        color: #333;
        width: 100%;
        height: 1.22rem;
        background: url("/static/img/htbimg/lickbg_03.png") center center/cover;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .h-like-img {
        width: 1.26rem;
        height: 100%;
    }

    .h-like-det {
        width: 2.25rem;
        height: 100%;
        padding: 0.12rem 0 0.12rem 0.12rem;
        font-size: 0.12rem;
    }

    .h-like-det > ul > li p {
        line-height: 0.2rem;
    }

    .h-like-det > ul > li:first-child {
        border-bottom: 1px solid #ccc;
    }

    .h-like-det > ul > li:first-child p:last-child span {
        font-weight: 600;
    }

    .h-like-det > ul > li:first-child p:first-child {
        font-size: 0.16rem;
        font-weight: 600;
    }

    .h-like-img img {
        width: 0.89rem;
        height: 0.89rem;
        display: block;
        margin: 0.2rem auto;
        transform: rotate(8deg);
    }

    .like-more {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .like-more div {
        width: 25%;
        padding-left: 0.13rem;
    }

    .like-more div:nth-child(1) {
        background: url("/static/img/htbimg/xin_07.png") left center no-repeat;
    }

    .like-more div:nth-child(2) {
        background: url("/static/img/htbimg/com_07.png") left center no-repeat;
    }

    .like-more div:nth-child(3) {
        background: url("/static/img/htbimg/shop_09.png") left center no-repeat;
    }
</style>