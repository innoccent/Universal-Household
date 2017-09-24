<template>
    <div class="h-home-lately">
        <ul class="lately-main">
            <li>
                <div class="late-con-img">
                    <img src="/static/img/htbimg/zj-1_18.png" alt="">
                    <div class="late-like">
                        <img src="/static/img/htbimg/like_03.png" alt="" v-show="true">
                        <img src="/static/img/htbimg/dislike_11.png" alt="" v-show="false">
                    </div>
                </div>
                <div class="late-con-det">
                    <ul>
                        <li class="late-con-title">
                            <h5>波西米亚田园风格</h5>
                        </li>
                        <li class="late-text">
                            <p>用家具表现悠闲、舒畅、自然的生活情趣,你想要的舒适尽在这里淋 漓尽致的展现……</p>
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
            <li>
                <div class="late-con-img">
                    <img src="/static/img/htbimg/zj-2_21.png" alt="">
                    <div class="late-like">
                        <img src="/static/img/htbimg/like_03.png" alt="" v-show="false">
                        <img src="/static/img/htbimg/dislike_11.png" alt="" v-show="true">
                    </div>
                </div>
                <div class="late-con-det">
                    <ul>
                        <li class="late-con-title">
                            <h5>新古典主义风格</h5>
                        </li>
                        <li class="late-text">
                            <p>用家具表现悠闲、舒畅、自然的生活情趣,你想要的舒适尽在这里淋 漓尽致的展现……</p>
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
        </ul>
    </div>
</template>
<script>
    export default {

    }
</script>
<style scoped>
    img{
        width: 100%;
        height: 100%;
    }
    .h-home-lately{
        width: 100%;
        height: auto;
        padding: 0 0.12rem;
    }
    .lately-main>li{
        width: 100%;
        height: 2.21rem;
        background-color: #fff;
        border-radius: 0.06rem;
        margin-bottom: 0.06rem;
        overflow: hidden;
        padding: 0.1rem;
    }
    .late-con-img{
        width: 100%;
        height: 1.28rem;
        position: relative;
    }
    .late-like{
        width: 0.33rem;
        height: 0.33rem;
        overflow: hidden;
        border-radius: 50%;
        position: absolute;
        right: 0.25rem;
        bottom:-0.15rem;
        z-index: 50;
    }
    .late-like img{
        display: block;
    }
    .late-con-title{
        font-size: 0.2rem;
    }
    .late-text p{
        font-size: 0.12rem;
        color:#6a6a6a;
    }
    .late-more{
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 0.13rem;
        line-height: 0.32rem;
    }
    .late-more div{
        width: 25%;
        padding-left: 0.13rem;
    }
    .late-more div:nth-child(1){
        background:url("/static/img/htbimg/xin_07.png")left center no-repeat;
    }
    .late-more div:nth-child(2){
         background:url("/static/img/htbimg/com_07.png")left center no-repeat;
     }
    .late-more div:nth-child(3){
        background:url("/static/img/htbimg/shop_09.png")left center no-repeat;
    }
    .late-people>ul{
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: flex-end;
        margin-left: 0.1rem;
    }
    .late-people>ul>li{
        width: 0.24rem;
        height: 0.24rem;
        background-repeat: no-repeat;
        outline: 1px solid #fff;
        border-radius: 50%;
        overflow: hidden;
    }
    .late-people>ul>li>img{
        display: block;
    }
    .late-people>ul>li:nth-child(2),.late-people>ul>li:nth-child(3){
        margin-left: -0.05rem;
    }
    .late-people>ul>li:nth-child(4){
        width:0.13rem;
        height: 0.13rem;
        color: #f1f1f1;
        font-size: 0.1rem;
        line-height: 0.13rem;
        text-align: center;
    }
</style>