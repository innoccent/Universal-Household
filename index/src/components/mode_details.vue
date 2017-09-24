<template>
    <div>
        <mode_header></mode_header>
        <div class="main">
            <a href="javascript:;">
                <div class="main-top">
                    <div class="main-top-main">
                        <div class="main-top-left">
                            <div class="pic1"></div>
                            <div class="pic2"></div>
                        </div>
                        <div class="make-mode">
                            <h1>定制方案</h1>
                            <h2>Customized</h2>
                        </div>
                        <div class="main-top-left">
                            <div class="pic1"></div>
                            <div class="pic2"></div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="modelist">
            <div class="deng" v-if="cateid===4">
                <div class="main-title">
                    <div class="main-title-left">
                        <h2>{{customize.length ? customize[0].cate_ename : ''}}</h2>
                        <div class="main-bottom">
                            <div class="main-img">
                                <img src="/static/img/nxl_deng.png">
                            </div>
                            <h3>{{customize.length ? customize[0].cate_name : ''}}</h3>
                            <div class="main-line"></div>
                        </div>
                    </div>
                </div>
                <ul class="deng-content">
                    <li v-for="v in filter(customize.length?customize[0].id:'')">
                        <router-link :to="{name:'goodsdetails',query:{name:'mode',gid:v.id}}">
                            <div class="deng-1">
                                <div class="deng-1-img">
                                    <img :src="v.goods_pic" alt="">
                                </div>
                                <div class="deng-title">
                                    <h2>{{v.goods_name}}</h2>
                                    <h3>{{v.goods_ename}}</h3>
                                </div>
                            </div>
                            <div class="deng-2"></div>
                            <div class="deng-3"></div>
                        </router-link>
                    </li>
                </ul>
            </div>
            <div class="jiashi" v-else-if="cateid===5">
                <div class="main-title">
                    <div class="main-title-left">
                        <h2>{{customize.length ? customize[1].cate_ename : ''}}</h2>
                        <div class="main-bottom">
                            <div class="main-img">
                                <img src="/static/img/nxl_jiashi.png" alt="">
                            </div>
                            <h3>{{customize.length ? customize[1].cate_name : ''}}</h3>
                            <a href="">
                                <div class="main-line"></div>
                            </a>
                        </div>
                    </div>
                </div>
                <ul class="jiashi-content">
                    <li v-for="v in filter(customize.length?customize[1].id:'')">
                        <router-link :to="{name:'goodsdetails',query:{name:'mode',gid:v.id}}">
                            <div class="jiashi-1">
                                <div class="jiashi-1-img">
                                    <img :src="v.goods_pic" alt="">
                                </div>
                                <div class="deng-title">
                                    <h2>{{v.goods_name}}</h2>
                                    <div class="deng-line"></div>
                                    <h3>{{v.goods_ename}}</h3>
                                </div>
                            </div>
                            <div class="deng-2"></div>
                            <div class="deng-3"></div>
                        </router-link>
                    </li>
                </ul>
            </div>
            <div class="sofa" v-else-if="cateid===6">
                <div class="main-title">
                    <div class="main-title-left">
                        <h2>{{customize.length ? customize[2].cate_ename : ''}}</h2>
                        <div class="main-bottom">
                            <div class="main-img">
                                <img src="/static/img/nxl_sofa.png" alt="">
                            </div>
                            <h3>{{customize.length ? customize[2].cate_name : ''}}</h3>
                            <a href="">
                                <div class="main-line"></div>
                            </a>
                        </div>
                    </div>
                </div>
                <ul class="soft-content">
                    <li v-for="v in filter(customize.length?customize[2].id:'')">
                        <router-link :to="{name:'goodsdetails',query:{name:'mode',gid:v.id}}">
                            <div class="sofa-1">
                                <div class="jiashi-1-img">
                                    <img :src="v.goods_pic" alt="">
                                </div>
                                <div class="deng-title">
                                    <h2>{{v.goods_name}}</h2>
                                    <div class="deng-line"></div>
                                    <h3>{{v.goods_ename}}</h3>
                                </div>
                            </div>
                            <div class="sofa-2">
                                <div class="sofa-2-1"></div>
                                <div class="sofa-2-2"></div>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </div>
            <div class="chuang" v-else-if="cateid===7">
                <div class="main-title">
                    <div class="main-title-left">
                        <h2>{{customize.length ? customize[3].cate_ename : ''}}</h2>
                        <div class="main-bottom">
                            <div class="main-img">
                                <img src="/static/img/nxl_chuang.png" alt="">
                            </div>
                            <h3>{{customize.length ? customize[3].cate_name : ''}}</h3>
                            <a href="">
                                <div class="main-line"></div>
                            </a>
                        </div>
                    </div>
                </div>
                <ul class="chuang-content">
                    <li v-for="v in filter(customize.length?customize[3].id:'')">
                        <router-link :to="{name:'goodsdetails',query:{name:'mode',gid:v.id}}">
                            <div class="chuagn-1">
                                <div class="chuang-pic">
                                    <img :src="v.goods_pic" alt="">
                                </div>
                                <div class="chuang-bottom">
                                    <div class="chuang-bottom-1">
                                        <h2>{{v.goods_name}}</h2>
                                        <ul class="xin">
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                        </ul>
                                    </div>
                                    <div class="bottom-line"></div>
                                    <h3>{{v.goods_ename}}</h3>
                                </div>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </div>
            <div class="table" v-else>
                <div class="main-title">
                    <div class="main-title-left">
                        <h2>{{customize.length ? customize[4].cate_ename : ''}}</h2>
                        <div class="main-bottom">
                            <div class="main-img">
                                <img src="/static/img/nxl_chaji.png" alt="">
                            </div>
                            <h3>{{customize.length ? customize[4].cate_name : ''}}</h3>
                            <a href="">
                                <div class="main-line"></div>
                            </a>
                        </div>
                    </div>
                </div>
                <ul class="chaji-content">
                    <li v-for="v in filter(customize.length?customize[4].id:'')">
                        <router-link :to="{name:'goodsdetails',query:{name:'mode',gid:v.id}}">
                            <div class="chaji-1">
                                <div class="chaji-img">
                                    <img :src="v.goods_pic" alt="">
                                </div>
                                <div class="chaji-bottom">
                                    <h2>{{v.goods_name}}</h2>
                                    <h3>{{v.goods_ename}}</h3>
                                    <div class="chaji-line"></div>
                                    <ul class="xin">
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                    </ul>
                                </div>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </div>
        </div>
        <mode_footer active="3"></mode_footer>
    </div>
</template>
<script>
    import mode_header from './mode/modeHeader.vue'
    import footers from './lib/footer.vue'

    export default {
        data() {
            return {
                customize: [],
                goods: [],
                cateid:0
            }
        },
        methods: {
            filter(cid) {
                return this.goods.filter(v => v.cid == cid)
            }
        },
        components: {
            mode_footer: footers,
            mode_header: mode_header
        },
        mounted(){
            this.cateid = this.$route.query.cateid;
            fetch('/api/goods/get_categories?is_customize=1')
                .then(res => res.json())
                .then(data => {
                    if (data.code == 2) {
                        this.customize = data.data;
                        var str = '(';
                        data.data.forEach((v, i) => {
                            if (i == data.data.length - 1) {
                                str += v.id + ');';
                            } else {
                                str += v.id + ',';
                            }
                        })
                        fetch('/api/goods/get_goods?id=' + str)
                            .then(res => res.json())
                            .then(data => {
                                if (data.code == 2) {
                                    this.goods = data.data;
                                }
                            })
                    }
                });
        }
    }
</script>
<style scoped>
    .main {
        position: relative;
        left: 0;
        top: 0.5rem;
        padding: 0.06rem 0.12rem 0;
    }

    .main-top {
        height: 0.5rem;
        background: #603811;
        border-radius: 0.4rem;
        margin: 0 auto;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .main-top-main {
        width: 100%;
        height: 100%;
        padding: 0.035rem 0.15rem;
        display: flex;
    }

    .main-top-left {
        width: 8%;
        height: 100%;
        display: flex;
        justify-content: flex-start;
        align-items: center;
    }

    .main-top-left .pic1, .main-top-left .pic2 {
        width: 0.04rem;
        height: 0.04rem;
        margin-right: 0.025rem;
        border-radius: 50%;
        background: #1ebce4;
    }

    .main-top-left .pic2 {
        background: #f2c013;
    }

    .make-mode {
        margin: 0 auto;
        text-align: center;
    }

    .make-mode h1, .make-mode h2 {
        color: #fff;
        font-size: 0.12rem;
    }

    .make-mode h1 {
        font-weight: normal;
        padding-top: 0.09rem;
    }

    .line {
        width: 0.03rem;
        height: 100%;
    }

    .line .circle-big {
        width: 0.03rem;
        height: 0.03rem;
        border-radius: 50%;
        background: #6b6b6b;
    }

    .line .circle-small {
        width: 0.02rem;
        height: 0.02rem;
        border-radius: 50%;
        background: #ababab;
        margin: 0 auto;
        margin-top: 0.01rem;
    }

    .modelist {
        position: relative;
        left: 0;
        top: 0.5rem;
        padding: 0 0.12rem;
        padding-bottom: 0.6rem;
    }

    .deng, .jiashi, .sofa, .chuang, .table {
        padding-top: 0.2rem;
    }

    /*标题开始*/
    .main-title {
        position: relative;
        display: flex;
    }

    .main-title-left {
        width: 80%;
        font-size: 0.1rem;
        color: #000;
    }

    .main-title-left > h2 {
        text-transform: uppercase;
    }

    .main-bottom {
        margin-top: 0.05rem;
        display: flex;
    }

    .main-bottom h3 {
        margin-left: 0.05rem;
        font-size: 0.1rem;
        color: #6b6b6b;
    }

    .main-line {
        margin-left: 0.1rem;
        margin-top: 0.15rem;
        border-bottom: 0.005rem dashed #6b6b6b;
        width: 2.09rem;
        height: 0;
        background: #6b6b6b;
    }

    .main-title-right {
        width: 20%;
        display: flex;
        justify-content: flex-end;
        align-items: center;
    }

    .jiantou-right {
        display: flex;
        width: 0.2rem;
        height: 0.2rem;
    }

    /*灯开始*/
    .deng-content, .jiashi-content, .soft-content, .chuang-content, .chaji-content {
        padding-top: 0.1rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
    }

    .chaji-content {
        flex-direction: column;
    }

    .deng-content li, .jiashi-content li, .soft-content li {
        width: 1.13rem;
        height: 1.73rem;
        position: relative;
        margin-bottom: 0.3rem;
    }

    .deng-content li .deng-1 {
        width: 1.13rem;
        height: 1.63rem;
        position: absolute;
        left: 0;
        top: 0;
        z-index: 10;
        background: url('/static/img/nxl_bg1.png') no-repeat;
    }

    .deng-content li .deng-1-img {
        position: absolute;
        width: 95%;
        left: 50%;
        transform: translateX(-50%);
        padding-top: 0.05rem;
    }

    .deng-title {
        margin-top: 1.23rem;
        padding: 0 0.05rem;
    }

    .deng-title h2, .deng-title h3 {
        font-size: 0.09rem;
        text-align: center;
        color: #6b6b6b;
        text-transform: uppercase;
    }

    .deng-title h3 {
        font-weight: lighter;
    }

    .deng-title h3 {
        color: #ababab;
    }

    .deng-2, .deng-3 {
        width: 1.03rem;
        height: 1.68rem;
        background: #fff;
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        top: 0;
        z-index: 1;
        border-radius: 0.04rem;
        box-shadow: 0 0.02rem 0.05rem rgba(0, 0, 0, .2);
    }

    .deng-3 {
        width: 0.92rem;
        height: 1.73rem;
        position: absolute;
        z-index: 0;
    }

    /*家饰开始*/
    .jiashi-1 {
        width: 1.13rem;
        height: 1.63rem;
        position: absolute;
        left: 0;
        top: 0;
        z-index: 10;
        background: #fff;
        border-radius: 0.08rem;
    }

    .jiashi-1-img {
        border-radius: 0.08rem;
        width: 95%;
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        padding-top: 0.05rem;
    }

    .jiashi-1-img img {
        border-radius: 0.08rem;
    }

    .deng-line {
        width: 100%;
        height: 0;
        padding-top: 0.06rem;
        border-bottom: 0.01rem dashed #bdbdbd;
    }

    /*沙发开始*/
    .sofa-1 {
        width: 1.13rem;
        height: 1.63rem;
        position: absolute;
        left: 0;
        top: 0;
        z-index: 10;
        background: url('/static/img/nxl_sofa-bg.png') no-repeat;
    }

    .sofa-2 {
        width: 1.03rem;
        height: 1.68rem;
        background: #f0be13;
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        top: 0;
        z-index: 1;
        display: flex;
        border-radius: 0.04rem;
    }

    .sofa-2-1, .sofa-2-2 {
        width: 50%;
        border-radius: 0.04rem;
    }

    .sofa-2-2 {
        background: #e91a1a;
    }

    /*床开始*/
    .chuang-content > li {
        width: 1.73rem;
        height: 1.52rem;
        position: relative;
        background: #fff;
        border-radius: 0.04rem;
        margin-bottom: 0.4rem;
    }

    .chuagn-1 {
        position: absolute;
        left: 50%;
        top: 0.05rem;
        transform: translateX(-50%);
    }

    .chuang-pic {
        width: 1.62rem;
        height: 1.03rem;
    }

    .chuang-bottom {
        padding-top: 0.1rem;
    }

    .chuang-bottom-1 {
        display: flex;
    }

    .chuang-bottom h2 {
        color: #6b6b6b;
        font-size: 0.09rem;
        display: flex;
    }

    .chuang-bottom h3 {
        font-weight: normal;
        font-size: 0.09rem;
        color: #ababab;
    }

    .bottom-line {
        width: 1.26rem;
        height: 0.01rem;
        margin-top: 0.03rem;
        position: relative;
        background: #bdbdbd;
    }

    .bottom-line:before {
        content: "";
        display: inline-block;
        width: 0.03rem;
        height: 0.03rem;
        position: absolute;
        left: 0;
        top: 50%;
        transform: translateY(-50%);
        border-radius: 50%;
        background: #bdbdbd;
    }

    /*茶几开始*/
    ul.chaji-content li {
        width: 100%;
        height: 1.84rem;
        background: #fff;
        border-radius: 0.04rem;
        display: flex;
        margin-top: 0.06rem;
        flex-direction: column;
        padding: 0.05rem 0.05rem 0;
    }

    .chaji-img {
        height: 1.14rem;
    }

    .chaji-bottom {
        text-align: center;
    }

    .chaji-bottom h2 {
        margin-top: 0.1rem;
        font-size: 0.12rem;
        color: #6b6b6b;
    }

    .chaji-bottom h3 {
        font-weight: normal;
        font-size: 0.12rem;
        color: #bdbdbd;
        margin-bottom: 0.06rem;
    }

    .chaji-line {

        width: 0.77rem;
        height: 0.01rem;
        position: relative;
        background: #ffca13;
        margin: 0 auto;
    }

    .chaji-line:before {
        width: 0.03rem;
        height: 0.03rem;
        border-radius: 50%;
        content: '';
        display: inline-block;
        position: absolute;
        left: 0;
        top: 0;
        bottom: 0;
        right: 0;
        margin: auto;
    }

    ul.xin {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    ul.xin li {
        width: 0.075rem;
        height: 0.075rem;
        background-size: 100%;
        background: url('/static/img/nxl_xin.png') no-repeat;
    }
    img{
        width:100%;
    }
</style>
