<template>
    <div class="search-main">
        <myheader :head='mess'></myheader>
        <div class="search-input">
            <div class="search-bgcolor"></div>
            <div class="htb-search">

                <input type="text" placeholder="家具" id="search">
                <div class="htb-submit"></div>
            </div>
        </div>
        <div class="search-result">
            <div class="search-result-1">
                <span>当前优先搜索结果</span>
                <span>658</span>
            </div>
            <div class="search-result-2">
                <div class="sea-sorry">
                    <span>SORRY</span>
                </div>
                <div class="sea-sorry-mess">
                    <p>很抱歉,没有找到您所想要的商品</p>
                    <p>sorry didn't find you need goods</p>
                </div>
            </div>
            <div class="search-result-3">
                <div class="search-title">
                    <p>Search history</p>
                    <p><span></span>搜索历史</p>
                </div>
                <div class="result-3-content">
                    <ul>
                        <li>
                            <div class="history-tag">
                                <a href="">榻榻米床</a>
                            </div>
                            <div class="history-tag">
                                <a href="">榻榻米床</a>
                            </div>
                        </li>
                        <li>
                            <div class="history-tag">
                                <a href="">榻榻米床</a>
                            </div>
                            <div class="history-tag">
                                <a href="">榻榻米床</a>
                            </div>
                            <div class="history-tag">
                                <a href="">榻榻米床</a>
                            </div>
                        </li>
                        <li>
                            <div class="history-tag">
                                <a href="">榻榻米床</a>
                            </div>
                            <div class="history-tag">
                                <a href="">榻榻米床</a>
                            </div>
                        </li>
                        <li class="history-circle">
                            <span></span>
                            <span></span>
                            <span></span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <arrivals></arrivals>
        <div class="result-content">
            <ul>
                <li class="res-con-main">
                    <a href="">
                        <div class="res-goods">
                            <div class="res-goods-img">
                                <img src="/static/img/htbimg/result-1_10.png" alt="">
                            </div>
                            <div class="res-goods-detail">
                                <div class="res-goods-title">
                                    <p>minimalist</p>
                                    <p>北欧极简风</p>
                                </div>
                                <div class="res-goods-desc">
                                    <p>
                                        以简单到极致为追求感官上简约 整洁品味更为优雅……
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="late-more">
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
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
    import header from './lib/Header.vue'
    import newarrivals from './searchresult/NewArrivals.vue'

    export default {
        name: 'searchresult',
        data() {
            return {
                mess: '搜索结果'
            }
        },
        components: {
            'myheader': header,
            'arrivals': newarrivals
        }
    }
</script>
<style scoped>
    img {
        width: 100%;
        height: 100%;
        display: block;
    }

    .search-input {
        width: 100%;
        height: auto;
        margin-top: 0.5rem;
        padding: 0 0.12rem;
        position: relative;
    }

    .search-input:before {
        content: "";
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 0.2rem;
        background-color: #ffca13;
        z-index: 10;
    }

    .htb-search {
        width: 100%;
        height: 0.42rem;
        background: #fff;
        border-radius: 0.06rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
        z-index: 50;
        position: relative;
    }

    #search {
        width: 80%;
        height: 100%;
        display: block;
        border: 0;
        background: none;
        outline: none;
        font-size: 0.16rem;
        color: #6d6d6d;
        padding-left: 0.12rem;
    }

    .htb-submit {
        width: 20%;
        height: 80%;
        background: url("/static/img/htbimg/search_06.png") center center/contain no-repeat;
    }

    .search-result {
        width: 100%;
        height: auto;
        padding: 0 0.12rem;
    }

    .search-result-1 {
        width: 100%;
        height: 0.73rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 0.14rem;
        color: #6d6d6d;
    }

    .search-result-1 span:last-child {
        color: #ee1b1b;
        font-weight: 600;
    }

    .search-result-2 {
        width: 100%;
        height: 0.73rem;
        display: flex;
        justify-content: flex-start;
        align-items: center;
        color: #000;
        font-size: 0.14rem;
    }

    .sea-sorry {
        font-size: 0.26rem;
        font-weight: 600;
        color: #ee1b1b;
        margin-right: 0.05rem;
    }

    .sea-sorry-mess p:last-child {
        font-size: 0.12rem;
        text-transform: uppercase;
    }

    .search-result-3 {
        width: 100%;
        height: 2.29rem;
    }

    .search-title {
        width: 100%;
        height: auto;
        padding-top: 0.05rem;
    }

    .search-title > p:first-child {
        font-size: 0.09rem;
        color: #000;
        text-transform: uppercase;
        font-weight: 600;
    }

    .search-title > p:last-child span {
        display: inline-block;
        width: 0.15rem;
        height: 0.15rem;
        background: url('/static/img/htbimg/history_06.png') center center/cover no-repeat;
        vertical-align: middle;
        margin-right: 0.05rem;
    }

    .search-title > p:last-child {
        font-size: 0.14rem;
        color: #6d6d6d;
    }

    .result-3-content {
        width: 100%;
        height: auto;
    }

    .result-3-content ul {
        width: 100%;
        height: 100%;
    }

    .result-3-content > ul > li {
        width: 100%;
        height: 0.35rem;
        margin-top: 0.15rem;
        font-size: 0.14rem;
        text-align: center;
        line-height: 0.35rem;
        display: flex;
        justify-content: center;
        align-items: center;

    }

    .result-3-content > ul > li div.history-tag {
        margin-right: 0.15rem;
        width: 1.06rem;
        height: 100%;
        background: url("/static/img/htbimg/search_1_03.png") center center/cover no-repeat;
    }

    .result-3-content > ul > li div a {
        color: #000;
    }

    .history-circle {
        text-align: center;

    }

    .history-circle span {
        display: inline-block;
        width: 0.04rem;
        height: 0.04rem;
        border-radius: 50%;
        margin-right: 0.04rem;
        background-color: #ff9313;
    }

    .result-content {
        width: 100%;
        height: auto;
        padding: 0 0.12rem;
    }

    .result-content > ul {
        width: 100%;
        height: auto;
    }

    .result-content > ul > li {
        width: 100%;
        height: 1.44rem;
        padding: 0.12rem 0.05rem 0.05rem;
        margin-top: 0.09rem;
        background: url("/static/img/htbimg/result-bg_03.png") center center/cover no-repeat;
    }

    .res-con-main > a {
        display: block;
        color: #6d6d6d;
    }

    .res-goods {
        width: 100%;
        height: 0.92rem;
        display: flex;
    }

    .res-goods-img {
        width: 1.49rem;
        height: 100%;
        margin-right: 0.09rem;
    }

    .res-goods-detail {
        width: 1.57rem;
        height: 100%;
        color: #6a6a6a;
    }

    .res-goods-title > p:first-child {
        font-size: 0.12rem;
        font-weight: 600;
        color: #6d6d6d;
        text-transform: uppercase;
    }

    .res-goods-title > p:last-child {
        font-size: 0.12rem;
        font-weight: 600;
        color: #ff9313;
        padding-bottom: 0.05rem;
        border-bottom: 1px ridge #333;
    }

    .res-goods-desc {
        font-size: 0.12rem;
        color: #6d6d6d;
    }
    .late-more{
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 0.13rem;
        line-height: 0.32rem;
        margin-top: 0.05rem;
        border-top: 1px double #bdbdbd;
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
