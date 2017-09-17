<template>
    <div class="h-ac-box">
        <myheader :head="mess"></myheader>
        <div class="h-ac-banner">
            <img src="/static/img/htbimg/acbanner.jpg" alt="">
            <div class="h-ac-banner-message">
                <h4><span>5</span>月属于你的<span>时光</span></h4>
                <p class="c-word">生活如此简单黑白是描绘生活的最好色调</p>
                <p class="e-word">black and white is the best </p>
                <p class="col-word">color to describe life</p>
            </div>
        </div>
        <div class="htb-home-title">
            <div class="htb-tit-content">
                <p><span>|</span>最<span>|</span>新<span>|</span>推<span>|</span>荐<span>|</span></p>
                <p>FLASH SALE</p>
            </div>
        </div>
        <mydesign></mydesign>
        <div class="htb-home-title">
            <div class="htb-tit-content">
                <p><span>|</span>最<span>|</span>近<span>|</span>设<span>|</span>计<span>|</span></p>
                <p>FLASH SALE</p>
            </div>
        </div>
        <mylately></mylately>
        <div class="htb-home-title">
            <div class="htb-tit-content">
                <p><span>|</span>最<span>|</span>多<span>|</span>抢<span>|</span>购<span>|</span></p>
                <p>FLASH SALE</p>
            </div>
        </div>
        <mymost></mymost>
        <footer>
            <img src="/static/img/htbimg/ac-footer_37.png" alt="">
        </footer>
    </div>

</template>
<script>
    import header from './lib/Header.vue';
    import lately from './HtbHome/HtbLately.vue';
    import design from  './HtbHome/HtbDesign.vue';
    import footer from  './lib/footer.vue';
    import most from './HtbActivity/most.vue'
    export default {
        name:'activity',
        data(){
            return {
                mess:'活动中心',
            }
        },
        components:{
            'myheader':header,
            'mylately':lately,
            'mydesign':design,
            'myfooter':footer,
            'mymost':most,
        }
    }
</script>
<style scoped>
    img{
        width: 100%;
        height: 100%;
    }
    .h-ac-banner{
        width: 100%;
        height: 4.76rem;
        position: relative;
    }
    .h-ac-banner-message{
        position: absolute;
        right: 0.33rem;
        top:1rem;
        text-align: right;
        width: 100%;
        height: auto ;
    }
    .h-ac-banner-message h4{
        font-size: 0.2rem;
    }
    .h-ac-banner-message h4 span:first-child{
        font-size: 0.5rem;
        font-weight: 600;
        letter-spacing: 12px;
    }
    .h-ac-banner-message h4 span{
        color: #ff9313;
    }
    .h-ac-banner-message p.c-word{
        font-size: 0.16rem;
    }
    .h-ac-banner-message p.e-word{
        font-size: 0.18rem;
        line-height: 0.24rem;
        text-transform: uppercase;
        font-weight: 500;
        color: #ff9313;
        text-shadow: 5px 0 1px #603811;
    }
    .h-ac-banner-message p.col-word{
        font-size: 0.16rem;
        text-transform: uppercase;
    }
    .htb-home-title{
        width: 100%;
        height: 0.62rem;
        padding: 0 0.12rem;
        text-align: center;
        padding-top: 0.15rem;
    }
    .htb-tit-content P:first-child{
        letter-spacing: 10px;
        font-size: 0.18rem;
        font-weight: 600;
        line-height: 0.15rem;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .htb-tit-content P:first-child span{
        font-size: 0.1rem;
        color: #ff9313;
        display: inline-block;
        height: 100%;
    }
    .htb-tit-content P:last-child{
        margin-top: 0.06rem;
        font-size: 0.16rem;
        font-weight: 500;
        letter-spacing: 6px
    }
    footer{
        width: 100%;
        padding: 0.12rem 0.12rem;
        height: .75rem;
    }
    footer img{
        display: block;
    }
</style>