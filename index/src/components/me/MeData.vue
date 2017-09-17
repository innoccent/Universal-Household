<template>
    <div class="medata">
         <meheader></meheader>
         <ul class="medata-content">
            <li>
                <div class="cotent-left">
                    <div class="logo">

                    </div>
                    <h1>账户名</h1>
                    <h2>Account name</h2>
                    <div class="circle">
                        <img src="/static/img/nxl_bg_circle.png" alt="">
                    </div>
                </div>
                <div class="content-right">
                    <h2>13546782311</h2>
                </div>
            </li>
             <li>
                 <div class="cotent-left">
                     <div class="logo">

                     </div>
                     <h1>账户名</h1>
                     <h2>Account name</h2>
                     <div class="circle">
                         <img src="/static/img/nxl_bg_circle.png" alt="">
                     </div>
                 </div>
                 <div class="content-right">
                     <h2>13546782311</h2>
                 </div>
             </li>
             <li>
                 <div class="cotent-left">
                     <div class="logo">

                     </div>
                     <h1>账户名</h1>
                     <h2>Account name</h2>
                     <div class="circle">
                         <img src="/static/img/nxl_bg_circle.png" alt="">
                     </div>
                 </div>
                 <div class="content-right">
                     <h2>13546782311</h2>
                 </div>
             </li>
         </ul>
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
   .medata{
       padding: 0.14rem;
   }
   .medata-content{
       position: relative;
       top:0.45rem;
   }
    .medata-content li{
        width: 100%;
        height: 0.5rem;
        background: #fff;
        display: flex;
        margin-top: 0.06rem;
        padding: 0 0.1rem;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 0.03rem 0.06rem  rgba(0,0,0,.2);
        border-radius: 0.04rem;
    }
    .cotent-left{
        display: flex;
        justify-content: flex-start;
        align-items: center;
    }
    .logo{
        width: 0.3rem;
        height: 0.3rem;
        background: #1ee497;
        border-radius: 50%;
    }
   .medata-content li h1{
       margin-left: 0.1rem;
       font-size: 0.12rem;
       color: #000;
   }
   .medata-content li h2{
       margin-left: 0.05rem;
       font-size: 0.10rem;
       font-weight: normal;
       color: #6b6b6b;
   }
    .circle{
        margin-left: 0.1rem;
        width: 0.05rem;
        height: 0.05rem;
        display: flex;
    }
    .content-right h2{
        font-size: 0.1rem;
        color: #6b6b6b;
        padding-left: ;
    }
</style>
