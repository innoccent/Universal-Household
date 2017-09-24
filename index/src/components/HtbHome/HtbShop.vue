<template>
    <div class="h-home-shop">
        <ul class="h-shop-main">
            <router-link :to="{name:'goodsdetails',query:{name:'Htbhome',gid:v.id}}" v-for="v in shop" :key="v.id">
                <li>
                    <div class="h-shop-img">
                        <img :src="v.goods_pic" alt="">
                    </div>
                    <div class="h-shop-tit">
                        <div>
                            <p>{{v.goods_name}}</p>
                            <p>{{v.goods_ename}}</p>
                        </div>
                        <section>
                            <div class="h-home-shop-money">
                                <span>{{v.goods_price}}</span>
                            </div>
                            <div class="h-home-shop-comment">
                                <span>2999</span>
                            </div>
                            <div class="h-home-shop-det">
                                <ul>
                                    <li><img src="/static/img/htbimg/det-1_03.png" alt=""></li>
                                    <li><img src="/static/img/htbimg/det-1_03.png" alt=""></li>
                                    <li><img src="/static/img/htbimg/det-1_03.png" alt=""></li>
                                    <li>29</li>
                                </ul>
                            </div>
                        </section>
                    </div>
                </li>
            </router-link>
        </ul>
    </div>
</template>
<script>
    export default {
        name: 'HomeTitle',
        props: ['shop'],
    }
</script>
<style scoped>
    .h-home-shop {
        width: 100%;
        height: 2.4rem;
        padding: 0 0 0.1rem 0.12rem;
        overflow: hidden;
    }

    .h-shop-main {
        width: 100%;
        height: 98%;
        display: flex;
        overflow-x: scroll;
    }

    ::-webkit-scrollbar {
        height: 0;
    }

    .h-shop-main > a > li {
        color:#333;
        width: 1.55rem;
        height: 100%;
        border-radius: 0.06rem;
        overflow: hidden;
        box-shadow: 0 2px 10px #ccc;
        margin-right: 0.08rem;
        background-color: #fff;
    }

    .h-shop-img {
        width: 100%;
        height: 1.64rem;
    }

    .h-shop-img img {
        width: 100%;
        height: 100%;
    }

    .h-shop-tit {
        padding: 0.05rem 0.04rem;
        font-size: 0.12rem;
        font-weight: 600;
        text-align: left;
    }

    .h-shop-tit > div {
        border-left: 3px solid #fbae13;
        padding-left: 0.06rem;
        display: flex;
        flex-wrap: wrap;
    }

    .h-shop-tit > div > p:last-child {
        color: #6b6b6b;
        font-size: 0.1rem;
        font-weight: 500;
        border-bottom: 1px dashed #6b6b6b;
        width:100%;
        text-transform: uppercase;
    }

    .h-shop-tit > section {
        margin-top: 0.08rem;
        display: flex;
        justify-content: flex-start;
        align-items: center;
    }

    .h-shop-tit > section > div.h-home-shop-money {
        padding-left: 0.14rem;
        background: url("/static/img/htbimg/money-1_03.png") left center no-repeat;
        margin-right: 0.1rem;
    }

    .h-shop-tit > section > div.h-home-shop-comment {
        padding-left: 0.14rem;
        background: url("/static/img/htbimg/comment_05.png") left center no-repeat;
    }

    .h-home-shop-det > ul {
        display: flex;
        margin-left: 0.1rem;
    }

    .h-home-shop-det > ul > li {
        width: 0.125rem;
        height: 0.125rem;
        background-repeat: no-repeat;
        outline: 1px solid #fff;
        border-radius: 50%;
        overflow: hidden;
    }

    .h-home-shop-det > ul > li:nth-child(2), .h-home-shop-det > ul > li:nth-child(3) {
        margin-left: -0.05rem;
    }

    .h-home-shop-det > ul > li:nth-child(4) {
        width: 0.13rem;
        height: 0.13rem;
        color: #fff;
        font-size: 0.1rem;
        background-color: #2d2d2d;
        border-radius: 50%;
        line-height: 0.13rem;
        text-align: center;
    }
</style>