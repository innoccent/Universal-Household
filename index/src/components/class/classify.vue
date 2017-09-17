<template>
    <div>
        <a href="">
            <div class="modeheader">
                <div class="center_top">
                    <h1>分类</h1>
                    <h2>CLASSIFICATION</h2>
                </div>
            </div>
        </a>
        <classcontent></classcontent>
        <footer_ active="2"></footer_>
    </div>
</template>

<script>
    import classcontent from './classcontent.vue'
    import footer_ from '../lib/footer.vue'
    export default {
        data() {
            return {

            }
        },
        methods: {

        },
        components:{
            classcontent:classcontent,
            footer_:footer_
        }
    }
</script>

<style scoped>
    .modeheader{
        width:100%;
        position: relative;
        height: 0.5rem;
        background: #ffca13;
    }
    .center_top{
        width:100%;
        height: 100%;
        text-align: center;
    }
    .center_top h1{
        padding-top: 0.09rem;
        color:#fff;
        font-size: 0.14rem;
    }
    .center_top h2{
        color:#fff;
        font-size: 0.12rem;
    }
    .center_top h1:before{
        content:'';
        display: inline-block;
        background: url('/static/img/nxl_1_03.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }
    .center_top h1:after{
        content:'';
        display: inline-block;
        background: url('/static/img/nxl_1_05.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }
</style>