<template>
    <div class="h-h-search">
        <div class="htb-search">
            <input type="text" placeholder="家具" id="search">
            <div class="htb-submit"></div>
        </div>
        <div class="htb-result">
            <ul class="htb-recommend">
                <li>
                    <div class="htb-rec-pic">
                        <div>
                            <img src="/static/img/htbimg/7a94e726970241.5635e9311f8a8.jpg" alt="">
                        </div>
                    </div>
                    <div class="htb-rec-det">
                        <div class="htb-rec-name">欧洲实木<span>家具</span> <span class="htb-hot"></span><span class="htb-hot"></span><span class="htb-hot"></span></div>
                        <p class="htb-rec-ename">Solid wood furniture in Europe</p>
                    </div>
                </li>
                <li>
                    <div class="htb-rec-pic">
                        <div>
                            <img src="/static/img/htbimg/7a94e726970241.5635e9311f8a8.jpg" alt="">
                        </div>
                    </div>
                    <div class="htb-rec-det">
                        <div class="htb-rec-name">欧洲实木<span>家具</span> <span class="htb-hot"></span><span class="htb-hot"></span><span class="htb-hot"></span></div>
                        <p class="htb-rec-ename">Solid wood furniture in Europe</p>
                    </div>
                </li>
                <li>
                    <div class="htb-rec-pic">
                        <div>
                            <img src="/static/img/htbimg/7a94e726970241.5635e9311f8a8.jpg" alt="">
                        </div>
                    </div>
                    <div class="htb-rec-det">
                        <div class="htb-rec-name">欧洲实木<span>家具</span> <span class="htb-hot"></span><span class="htb-hot"></span><span class="htb-hot"></span></div>
                        <p class="htb-rec-ename">Solid wood furniture in Europe</p>
                    </div>
                </li>
                <li>
                    <div class="htb-rec-pic">
                        <div>
                            <img src="/static/img/htbimg/7a94e726970241.5635e9311f8a8.jpg" alt="">
                        </div>
                    </div>
                    <div class="htb-rec-det">
                        <div class="htb-rec-name">欧洲实木<span>家具</span> <span class="htb-hot"></span><span class="htb-hot"></span><span class="htb-hot"></span></div>
                        <p class="htb-rec-ename">Solid wood furniture in Europe</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
    export default {
        name: 'search',
    }
</script>
<style>
    img {
        width: 100%;
        height: 100%;
    }

    .h-h-search {
        background: rgba(0, 0, 0, 0.8);
        width: 100%;
        height: 100vh;
        position: fixed;
        left: 0;
        top: 0;
        z-index: 10000;
        padding: 0.68rem .12rem 0;
    }

    .htb-search {
        width: 100%;
        height: 0.42rem;
        background: #fff;
        border-radius: 0.06rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
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

    .htb-result {
        width: 100%;
        height: auto;
        padding: 0.1rem 0.12rem 0;
        background: #fff;
        margin-top: 0.2rem;
        border-radius: 0.08rem;
    }

    .htb-recommend {
        width: 100%;
    }

    .htb-recommend li {
        width: 100%;
        height: 0.55rem;
        display: flex;
        justify-content: space-between;
        border-bottom: 1px solid #ccc;
    }
    .htb-recommend li:last-child{
        border: 0;
    }
    .htb-rec-pic {
        width: 20%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .htb-rec-pic div{
        width: 0.45rem;
        height: 0.45rem;
        border-radius: 50%;
        overflow: hidden;
    }
    .htb-rec-pic div img{
        display: block;
    }
    .htb-rec-det {
        width: 80%;
        height: 100%;
    }
    .htb-rec-name{
        font-size: 0.16rem;
        color: #333333;
        letter-spacing: 2px;
        border-bottom: 1px dashed #000;
        line-height: 0.24rem;
        font-weight: 600;
    }
    .htb-rec-name span{
        color: #ff9313;
    }
    .htb-hot{
        display: inline-block;
        width: 0.14rem;
        height: 0.14rem;
        background: url("/static/img/htbimg/hot_03.png") center center/contain no-repeat;
        margin-right: 0.08rem;
    }
    .htb-rec-ename{
        font-size: 0.14rem;
        color: #6d6d6d;
        text-transform: uppercase;
    }
</style>