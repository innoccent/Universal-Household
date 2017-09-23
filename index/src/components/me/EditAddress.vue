<template>
    <div class="commit">
        <div class="meheader">
            <router-link :to="{name:'home'}">
                <div class="ceter-left">
                    <img src="/static/img/nxl_jiangtou_left.png" alt="">
                </div>
            </router-link>
            <div class="center-content" >
                <h1 >编辑资料</h1>
                <h2>MY ORDER</h2>
            </div>
        </div>
        <div class="commit-content">
            <ul>
                <li>
                    <div class="content-main1">
                        <div class="pic1">
                            <img src="/static/img/nxl_address.png" alt="">
                        </div>
                        <h2>
                            姓名
                        </h2>
                        <h3>最少2字，最多8字</h3>
                    </div>
                </li>
                <li>
                    <div class="content-main1">
                        <div class="pic1">
                            <img src="/static/img/nxl_address.png" alt="">
                        </div>
                        <h2>
                            电话
                        </h2>
                        <h3>请填写正确的联系方式</h3>
                    </div>
                </li>
                <li>
                    <div class="content-main1">
                        <div class="pic1">
                            <img src="/static/img/nxl_address.png" alt="">
                        </div>
                        <h2>
                            地区
                        </h2>
                        <h3>省份/地区</h3>
                    </div>
                </li>
                <li>
                    <div class="content-main1">
                        <div class="pic1">
                            <img src="/static/img/nxl_address.png" alt="">
                        </div>
                        <h2>
                            地址
                        </h2>
                        <h3>请填写详细地址</h3>
                    </div>
                </li>
            </ul>
        </div>
        <div class="add-bottom">
            <h2>完成编辑</h2>
            <h6>THE ENDING</h6>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {}
        },
        components:{
        }
    }
</script>
<style scoped>
    /*头部开始*/
    .meheader {
        width: 100%;
        height:0.5rem;
        background:#ffca13;
        position: fixed;
        left:0;
        top:0;
        display: flex;
        justify-content: center;
    }
    .ceter-left{
        height: 100%;
        position: absolute;
        left:0.14rem;
        top:50%;
        transform: translateY(-50%);
    }
    .ceter-left img{
        position: absolute;
        top:50%;
        transform: translateY(-50%);
    }
    .center-content{
        text-align: center;
    }
    .center-content h1{
        padding-top: 0.09rem;
        color:#fff;
        font-size: 0.14rem;
    }
    .center-content h2{
        color:#fff;
        font-size: 0.12rem;
    }
    .center-content h1:before{
        content:'';
        display: inline-block;
        background: url('../../../static/img/nxl_1_03.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }
    .center-content h1:after{
        content:'';
        display: inline-block;
        background: url('../../../static/img/nxl_1_05.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }
    /*内容开始*/
       .commit-content{
           position:absolute;
           top:0.5rem;
           padding:0.21rem 0.12rem  0;
       }
      .commit-content  ul li{
           width:3.51rem;
          height: 0.5rem;
          padding:0.16rem 0 0.14rem  0.1rem;
          box-shadow: 0 0.001rem 0.1rem 0.01rem rgba(0,0,0,.1);
          background: #fff;
          display: flex;
          border-radius: 0.04rem;
          margin-bottom: 0.06rem;
      }
   .content-main1{
       width: 100%;
       height: 100%;
       display: flex;
       justify-content: flex-start;
       align-items: center;
   }
   .pic1{
       width: 0.2rem;
       height: 0.2rem;
       display: flex;
       margin-right: 0.15rem;
   }
   .pic img{
       width: 100%;
       height: 100%;
   }
    .content-main1 h2{
        font-size: 0.14rem;
        margin-right: 0.05rem;
    }
    .content-main1 h3{
        font-size: 0.12rem;
        color: #bdbdbd;
        font-weight: normal;
    }
    .add-bottom{
        position: absolute;
        bottom:0;
        left:0;
        width:100%;
        height: 0.44rem;
        background: #ee1b1b;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        border-radius: 0.04rem;
    }
    .add-bottom  span{
        font-size: 0.18rem;
        color: #fff;
    }
    .add-bottom  h2{
        font-size: 0.14rem;
        color: #fff;
    }
    .add-bottom h6{
        font-size: 0.09rem;
        color: #fff;
    }
</style>
