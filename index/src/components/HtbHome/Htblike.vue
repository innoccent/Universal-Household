<template>
    <div class="h-home-like">
        <ul class="h-home-like-main">
            <li>
                <div class="h-like-img">
                    <img src="/static/img/htbimg/e9097926368257.56354846bbfc6.jpg" alt="">
                </div>
                <div class="h-like-det">
                    <ul>
                        <li>
                            <p>北欧风格的沙发</p>
                            <p><span>BOREAL EUROPE</span> STYLE SOFA</p>
                        </li>
                        <li>
                            <p>具有着独特的美学特点呈现出的 乡土格调……</p>
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
            <li>
                <div class="h-like-img">
                    <img src="/static/img/htbimg/a50d5326368257.56354808a17bb.jpg" alt="">
                </div>
                <div class="h-like-det">
                    <ul>
                        <li>
                            <p>厨卫置物架</p>
                            <p><span>BOREAL EUROPE</span> STYLE SOFA</p>
                        </li>
                        <li>
                            <p>具有着独特的美学特点呈现出的 乡土格调……</p>
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
        </ul>
    </div>
</template>
<script>
    export default {

    }
</script>
<style>
    img{
        width: 100%;
        height: 100%;
    }
    .h-home-like{
        width: 100%;
        height: auto;
        padding: 0 0.12rem;
    }
    .h-home-like-main{
        width: 100%;
        height: auto;
    }
    .h-home-like-main>li{
        width: 100%;
        height: 1.22rem;
        background:url("/static/img/htbimg/lickbg_03.png") no-repeat;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .h-like-img{
        width: 1.26rem;
        height: 100%;
    }
    .h-like-det{
        width: 2.25rem;
        height: 100%;
        padding: 0.12rem 0 0.12rem 0.12rem;
        font-size: 0.12rem;
    }
    .h-like-det>ul>li p{
        line-height: 0.2rem;
    }
    .h-like-det>ul>li:first-child{
        border-bottom: 1px solid #ccc;
    }
    .h-like-det>ul>li:first-child p:last-child span{
        font-weight: 600;
    }
    .h-like-det>ul>li:first-child p:first-child{
        font-size: 0.16rem;
        font-weight: 600;
    }
    .h-like-img img{
        width: 0.89rem;
        height: 0.89rem;
        display: block;
        margin: 0.2rem auto;
        transform: rotate(8deg);
    }
    .like-more{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .like-more div{
        width: 25%;
        padding-left: 0.13rem;
    }
    .like-more div:nth-child(1){
        background:url("/static/img/htbimg/xin_07.png")left center no-repeat;
    }
    .like-more div:nth-child(2){
        background:url("/static/img/htbimg/com_07.png")left center no-repeat;
    }
    .like-more div:nth-child(3){
        background:url("/static/img/htbimg/shop_09.png")left center no-repeat;
    }
</style>