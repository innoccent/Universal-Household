<template>
    <div class="newarrivals">
        <div class="search-title">
            <p>recommended</p>
            <p><span></span>新品推荐</p>
        </div>
        <div class="new-content">
            <div class="new-content-1">
                <img src="/static/img/htbimg/arrivals-1_03.png" alt="">
            </div>
            <div class="new-content-2">
                <ul>
                    <li>
                        <div class="arrivals-1">
                            <img src="/static/img/htbimg/arrivals-2_03.png" alt="">
                        </div>
                        <div class="arrivals-2">
                            <img src="/static/img/htbimg/arrivals-4_03.png" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="arrivals-3">
                            <img src="/static/img/htbimg/arrivals-3_03.png" alt="">
                        </div>
                        <div class="arrivals-3">
                            <img src="/static/img/htbimg/arrivals-5_03.png" alt="">
                        </div>
                        <div class="arrivals-4">
                            <img src="/static/img/htbimg/arrivals-6_05.png" alt="">
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        name: 'newarrivals',

    }
</script>
<style scoped>
    .newarrivals {
        width: 100%;
        height: 1.57rem;
        padding: 0 0.12rem;
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
        background: url('/static/img/htbimg/arrivals_03.png') center center/cover no-repeat;
        vertical-align: middle;
        margin-right: 0.05rem;
    }

    .search-title > p:last-child {
        font-size: 0.14rem;
        color: #6d6d6d;
    }

    .new-content {
        width: 100%;
        height: 1.24rem;
        margin-top: 0.06rem;
        display: flex;
    }
    .new-content-1{
        width: 1.32rem;
        height: 100%;
        border-radius: 0.05rem;
        margin-right: 0.06rem;
    }
    .new-content-2,.new-content-2 ul{
        width: 2.13rem;
        height: 100%;
    }
    .new-content-2>ul>li{
        width: 100%;
        height: 0.57rem;
        display: flex;
    }
    .new-content-2>ul>li>div>img{
        display: block;
    }
    .new-content-2>ul>li:last-child{
        margin-top:0.06rem;
    }
    .arrivals-1{
        width: 0.82rem;
        height: 100%;
        border-radius: 0.06rem;
        overflow: hidden;
        margin-right: 0.06rem;
    }
    .arrivals-2{
        width: 1.23rem;
        height: 100%;
        border-radius: 0.06rem;
        overflow: hidden;
    }
    .arrivals-3 ,.arrivals-4{
        width: 0.67rem;
        height: 100%;
        border-radius: 0.06rem;
        overflow:hidden;
        margin-right: 0.06rem;
    }
    .arrivals-4{
        margin: 0;
    }
</style>