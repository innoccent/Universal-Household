<template>
    <div class="commit">
        <meheader></meheader>
        <div class="commit-content">
            <ul>
                <li>
                    <div class="content-main">

                    </div>
                    <div class="top">
                        <span></span>
                        <span></span>
                        <h2>浅心</h2>
                        <h3>13523469919</h3>
                    </div>
                    <div class="add">
                        <h2>
                            北京市 &nbsp;&nbsp;&nbsp;朝阳区
                        </h2>
                        <div class="line"></div>
                    </div>
                    <div class="address-content">
                        <span class="iconfont icon-dizhi dizhi"></span>
                        <span class="address-1">北京市朝阳区上地东路1号盈创动力大厦502室</span>
                    </div>
                </li>
                <li>
                    <div class="content-main">

                    </div>
                    <div class="top">
                        <span></span>
                        <span></span>
                        <h2>浅心</h2>
                        <h3>13523469919</h3>
                    </div>
                    <div class="add">
                        <h2>
                            北京市 &nbsp;&nbsp;&nbsp;朝阳区
                        </h2>
                        <div class="line"></div>
                    </div>
                    <div class="address-content">
                        <span class="iconfont icon-dizhi dizhi"></span>
                        <span class="address-1">北京市朝阳区上地东路1号盈创动力大厦502室</span>
                    </div>
                </li>
            </ul>
        </div>
        <div class="add-bottom">
           <span class="iconfont icon-shizi"></span>
            <h2>添加新的收货地址</h2>
        </div>
    </div>
</template>
<script>
    import meHeader from './meHeader.vue'
    export default{
        data(){
            return {}
        },
        components:{
            'meheader':meHeader
        }
    }
</script>
<style scoped>
       .commit-content{
           position:absolute;
           top:0.5rem;
           padding:0.21rem 0.12rem  0;
       }
      .commit-content  ul li{
           width:3.51rem;
          height: 1.21rem;
          padding:0.09rem  0.15rem;
          box-shadow: 0 0.03rem 0.15rem rgba(0,0,0,.2);
          background: #fff;
          border-radius: 0.04rem;
          margin-bottom: 0.06rem;
      }
       .top{
           display: flex;
           justify-content: flex-start;
           align-items: center;
       }
       .top span{
          display: block;
          width: 0.05rem;
          height: 0.05rem;
          background: #1ebce4;
          border-radius: 50%;
           margin-right: 0.05rem;
      }
       .top span:nth-child(2){
           background: #1ee497;
       }
     .top h2{
         font-size: 0.14rem;
         color: #000;
         margin-right: 0.05rem;
     }
     .top h3{
           font-size: 0.1rem;
           color: #6b6b6b;

     }
    .add{
        margin-top: 0.1rem;
    }
    .add h2{
        font-size: 0.12rem;
        font-weight: normal;
        color: #6b6b6b;
        padding-bottom: 0.1rem;
    }
    .line{
        width: 1.92rem;
        height: 0.01rem;
        background: #bdbdbd;
    }
    .address-content{
        display: flex;
        margin-top: 0.22rem;
    }
    .address-content h2{
       font-size: 0.12rem;
        color: #6b6b6b;
    }
    .dizhi{
        font-size: 0.16rem;
    }
    .address-1{
        font-size: 0.12rem;
        color: #6b6b6b;
    }
    .add-bottom{
        position: absolute;
        bottom:0;
        left:0;
        width:100%;
        height: 0.44rem;
        background: #ee1b1b;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 0.04rem;
    }
    .add-bottom  span{
        font-size: 0.18rem;
        color: #fff;
    }
    .add-bottom  h2{
        margin-left: 0.1rem;
        font-size: 0.14rem;
        color: #fff;
    }
</style>
