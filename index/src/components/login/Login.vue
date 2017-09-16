<template>
    <div class="rome">
        <div class="login"></div>
        <div class="welcome">
            <div class="wel">WELCOMETO</div>
            <div class="order">ORDER</div>
        </div>
        <div class="button"></div>
        <div class="else"></div>
        <div class="sina"></div>
    </div>
</template>

<script>
    export default {
        data() {
            return {

            }
        },
        methods: {

        }
    }
</script>

<style scoped>
    .rome{
        height:100vh;
    }
    .login{
        background:url('/static/img/ybl_04.png') top left/cover;
        width:100% ;
        height:100%;
        position:absolute;
        top:0;
        left:0;
    }
    .welcome{
        position: absolute;
        top:2rem;
        text-align: center;
        width:100%;
    }
    .wel{
        text-align: center;
        font-size:.28rem;
        color: #FF9313;
        font-weight: bold;
        letter-spacing: .1rem;
    }
    .order{
        text-align: center;
        font-size:.22rem;
        color: #FF9313;
        font-weight: bold;
        letter-spacing: .42rem;
        margin-left:.27rem;
    }
</style>