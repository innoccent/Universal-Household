<template>
    <div class="medata">
         <meheader></meheader>
         <ul class="medata-content">
            <li>
                <div class="cotent-left">
                    <div class="logo icon-zhanghu">

                    </div>
                    <h1>账户名</h1>
                    <h2>Account name</h2>
                    <div class="circle">
                        <img src="/static/img/nxl_bg_circle.png" alt="">
                    </div>
                </div>
                <div class="content-right">
                    <h2>{{information.tel}}</h2>
                </div>
            </li>
             <li>
                 <div class="cotent-left">
                     <div class="logo icon-nicheng">

                     </div>
                     <h1>昵称</h1>
                     <h2>nickname</h2>
                     <div class="circle">
                         <img src="/static/img/nxl_bg_circle.png" alt="">
                     </div>
                 </div>
                 <div class="content-right">
                     <h2>{{information.username}}</h2>
                 </div>
             </li>
             <li>
                 <div class="cotent-left">
                     <div class="logo icon-shouhuodizhi">

                     </div>
                     <h1>收货地址</h1>
                     <h2>shopping address</h2>
                     <div class="circle">
                         <img src="/static/img/nxl_bg_circle.png" alt="">
                     </div>
                 </div>
                 <div class="content-right" @click="jump">
                     <h2 class="icon-iconfontxiangxia1copy19" style="font-family: 'iconfont'"></h2>
                 </div>
             </li>
         </ul>
    </div>
</template>
<script>
    import meHeader from './meHeader.vue'
    export default{
        data(){
            return {
                information:{},
                uid:localStorage.uid
            }
        },
        components:{
            'meheader':meHeader
        },
        mounted(){
            fetch('/api/user/get_info_by_id?id='+this.uid)
                .then(res=>res.json())
                .then(data=>{
                    if(data.code==2){
                        this.information=data.data;
                    }
                })
        },
        methods:{
            jump(){
                location.href='#/address'
            }
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
        font-family: iconfont;
        text-align: center;
        color: #fff;
        line-height:0.3rem;
        font-size: 0.2rem;
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
    }
</style>
