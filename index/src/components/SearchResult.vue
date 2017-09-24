<template>
    <div class="search-main">
        <myheader :head='mess' pageinfo="Htbhome"></myheader>
        <div class="search-input">
            <div class="search-bgcolor"></div>
            <div class="htb-search">

                <input type="text" placeholder="家具" id="search" v-model="keyword">
                <div class="htb-submit" @click="search"></div>
            </div>
        </div>
        <div class="search-result">
            <div class="search-result-1">
                <span>当前优先搜索结果</span>
                <span>{{result.length}}</span>
            </div>
            <div class="search-result-2" v-if="message">
                <div class="sea-sorry">
                    <span>SORRY</span>
                </div>
                <div class="sea-sorry-mess">
                    <p>很抱歉,没有找到您所想要的商品</p>
                    <p>sorry didn't find you need goods</p>
                </div>
            </div>
            <div class="search-result-3" v-if="!keyword.length">
                <div class="search-title">
                    <p>Search history</p>
                    <p><span></span>搜索历史</p>
                </div>
                <div class="result-3-content">
                    <ul>
                        <li>
                            <div class="history-tag" v-if="history.length>0">
                                <a href="javascript:;">{{history[0]}}</a>
                            </div>
                            <div class="history-tag" v-if="history.length>1">
                                <a href="javascript:;">{{history[1]}}</a>
                            </div>
                        </li>
                        <li v-if="history.length>2">
                            <div class="history-tag" v-if="history.length>2">
                                <a href="javascript:;">{{history[2]}}</a>
                            </div>
                            <div class="history-tag" v-if="history.length>3">
                                <a href="javascript:;">{{history[3]}}</a>
                            </div>
                            <div class="history-tag" v-if="history.length>4">
                                <a href="javascript:;">{{history[4]}}</a>
                            </div>
                        </li>
                        <li v-if="history.length>5">
                            <div class="history-tag" v-if="history.length>5">
                                <a href="javascript:;">{{history[5]}}</a>
                            </div>
                            <div class="history-tag" v-if="history.length>6">
                                <a href="javascript:;">{{history[6]}}</a>
                            </div>
                        </li>
                        <!--<li class="history-circle">-->
                        <!--<span></span>-->
                        <!--<span></span>-->
                        <!--<span></span>-->
                        <!--</li>-->
                    </ul>
                </div>
            </div>
        </div>
        <arrivals v-if="!result.length" :position="position"></arrivals>
        <div class="result-content">
            <ul>
                <li class="res-con-main" v-for="v in result" :key="v.id">
                    <router-link :to="{name:'goodsdetails',query:{name:'searchresult',gid:v.id}}">
                        <div class="res-goods">
                            <div class="res-goods-img"
                                 :style="{background:`url(${v.goods_pic}) top center/cover no-repeat`}">
                                <!--<img :src="v.goods_pic" alt="">-->
                            </div>
                            <div class="res-goods-detail">
                                <div class="res-goods-title">
                                    <p>{{v.goods_ename}}</p>
                                    <p>{{v.goods_name}}</p>
                                </div>
                                <div class="res-goods-desc">
                                    <p>
                                        {{v.goods_desc}}
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
                    </router-link>
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
                mess: '搜索结果',
                keyword: '',
                result: [],
                history: [],
                message:false,
                position:[]
            }
        },
        components: {
            'myheader': header,
            'arrivals': newarrivals
        },
        watch: {
            keyword: function () {
                if (this.keyword.length == 0) {
                    this.result = [];
                }
            }
        },
        mounted() {
            this.keyword = this.$route.query.keyword;
            fetch('/api/index/get_search?keyword=' + this.$route.query.keyword)
                .then(res => res.json())
                .then(data => {
                    if (data.code == 2) {
                        this.result = data.data;
                    }
                })
            if (localStorage.search_history) {
                this.history = JSON.parse(localStorage.search_history);
            }
            fetch('/api/index/get_position?id=(20,30,22,23,24)')
                .then(res=>res.json())
                .then(data=>{
                    if(data.code==2){
                        this.position = data.data;
                    }
                })
        },
        methods: {
            search() {
                if (this.keyword) {
                    fetch('/api/index/get_search?keyword=' + this.keyword)
                        .then(res => res.json())
                        .then(data => {
                            if (data.code == 2) {
                                this.result = data.data;
                                if(!data.data.length){
                                    this.message=true;
                                }else{
                                    this.message=false;
                                }
                            }
                        })
                    if(localStorage.search_history){
                        let history = JSON.parse(localStorage.search_history);
                        history.push(this.keyword);
                        this.history=history;
                        localStorage.search_history = JSON.stringify(history);
                    }else{
                        localStorage.search_history = JSON.stringify([this.keyword]);
                    }
                } else {
                    this.result = [];
                }

            }
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
        height: auto;
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

    .late-more {
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 0.13rem;
        line-height: 0.32rem;
        margin-top: 0.05rem;
        border-top: 1px double #bdbdbd;
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
