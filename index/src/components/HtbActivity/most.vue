<template>
    <div class="h-ac-most">
        <ul>
            <li class="h-ac-img1">
                <div class="h-ac-most-img">
                    <img src="../../../static/img/htbimg/most-1.jpg" alt="">
                </div>
                <div class="h-ac-det">
                    <div class="h-ac-m-title active">
                        <p>时尚休闲椅</p>
                        <p>recreational chair</p>
                    </div>
                    <div class="h-ac-m-comment">
                        <div class="com-like">
                            <span>1258</span>
                        </div>
                        <div class="com-shop">
                            <span>2568</span>
                        </div>
                    </div>
                </div>
            </li>
            <li class="h-ac-img2">
                <div class="h-ac-most-img">
                    <img src="../../../static/img/htbimg/most-2.jpg" alt="">
                </div>
                <div class="h-ac-det">
                    <div class="h-ac-m-title active">
                        <p>时尚休闲椅</p>
                        <p>recreational chair</p>
                    </div>
                    <div class="h-ac-m-comment">
                        <div class="com-like">
                            <span>1258</span>
                        </div>
                        <div class="com-shop">
                            <span>2568</span>
                        </div>
                    </div>
                </div>
            </li>
            <li class="h-ac-img3">
                <div class="h-ac-most-img">
                    <img src="../../../static/img/htbimg/most-3.jpg" alt="">
                </div>
                <div class="h-ac-det">
                    <div class="h-ac-m-title active">
                        <p>时尚休闲椅</p>
                        <p>recreational chair</p>
                    </div>
                    <div class="h-ac-m-comment">
                        <div class="com-like">
                            <span>1258</span>
                        </div>
                        <div class="com-shop">
                            <span>2568</span>
                        </div>
                    </div>
                </div>
            </li>
            <li class="h-ac-img4">
                <div class="h-ac-most-img">
                    <img src="../../../static/img/htbimg/most-4.jpg" alt="">
                </div>
                <div class="h-ac-det">
                    <div class="h-ac-m-title active">
                        <p>时尚休闲椅</p>
                        <p>recreational chair</p>
                    </div>
                    <div class="h-ac-m-comment">
                        <div class="com-like">
                            <span>1258</span>
                        </div>
                        <div class="com-shop">
                            <span>2568</span>
                        </div>
                    </div>
                </div>
            </li>
            <li class="h-ac-img5">
                <div class="h-ac-most-img">
                    <img src="../../../static/img/htbimg/most-5.jpg" alt="">
                </div>
                <div class="h-ac-det">
                    <div class="h-ac-m-title active">
                        <p>时尚休闲椅</p>
                        <p>recreational chair</p>
                    </div>
                    <div class="h-ac-m-comment">
                        <div class="com-like">
                            <span>1258</span>
                        </div>
                        <div class="com-shop">
                            <span>2568</span>
                        </div>
                    </div>
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
    .h-ac-most{
        width: 100%;
        height: 1.69rem;
        padding-left: 0.12rem;

    }
    .h-ac-most>ul{
        background-color: #fff;
        width: 100%;
        height: 100%;
        position: relative;
        overflow: hidden;
    }
    .h-ac-most>ul>li{
        width: 1.225rem;
        height: 100%;
        position: absolute;
        top:0;
        box-sizing: border-box;
        box-shadow: 0 0 5px #ccc;
        background-color: #fff;
    }
    .h-ac-most>ul>li img{
        outline: 1px solid #fff;
    }
    .h-ac-most-img{
        width: 100%;
        height: 1.225rem;
    }
    .h-ac-img1{
        left: 0;
        z-index: 30;
    }
    .h-ac-img2{
        left:0.61rem ;
        z-index: 25;
    }
    .h-ac-img3{
        left:1.22rem ;
        z-index: 20;
    }
    .h-ac-img4{
        left:1.83rem ;
        z-index: 15;
    }
    .h-ac-img5{
        left:2.44rem ;
        z-index: 10;
    }
    .h-ac-m-title{
        text-transform: uppercase;
        font-size: 0.12rem;
        color: #6b6b6b;
        padding: 0.02rem 0.05rem;
    }
    .h-ac-m-title p:last-child{
        font-size: 0.1rem;
    }
    .h-ac-det .active p{
        color: #000;
    }
    .h-ac-m-comment{
        display: flex;
        justify-content: space-between;
        width: 100%;
        padding: 0.02rem 0.05rem;
    }
    .h-ac-m-comment div{
        font-size: 0.1rem;
        width: 50%;
        text-align: left;
        padding-left: 0.2rem;
        color: #d6d6d6;
    }
    .com-like{
        background: url('../../../static/img/htbimg/xin_07.png')left center no-repeat;
    }
    .com-shop{
        background: url('../../../static/img/htbimg/shop_09.png')left center no-repeat;
    }
</style>