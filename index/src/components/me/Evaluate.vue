<template>
    <div class="evaluate">
        <div class="meheader">
            <router-link :to="{name:'order',query:{status:'4'}}">
                <div class="ceter-left">
                    <img src="/static/img/nxl_jiangtou_left.png" alt="">
                </div>
            </router-link>
            <div class="center-content" >
                <h1 >发表评价</h1>
                <h2>COMMENT</h2>
            </div>
        </div>
        <div class="evaluate-content">
             <div class="main">
                 <div class="main-img">
                     <img :src="goodsinfo.s_pic" alt="">
                 </div>
             </div>
             <div class="title">
                     <div class="top-title">
                         <h2>{{goodsinfo.goods_name}}</h2>
                         <h3 style="text-transform: uppercase">{{goodsinfo.goods_ename}}</h3>
                         <div class="line"></div>
                     </div>
                     <div class="center-title">
                         <textarea v-model="content" placeholder="请输入您对本产品的评论" autofocus maxlength="100"></textarea>
                         <el-upload
                                 action="/api/goods/orders_evaluate_currimg"
                                 list-type="picture-card"
                                 :on-preview="handlePictureCardPreview"
                                 :on-remove="handleRemove"
                                 :on-success="success"
                                 class="upload"
                         >
                             <i class="el-icon-plus"></i>
                         </el-upload>
                         <el-dialog v-model="dialogVisible" size="tiny">
                             <img width="100%" :src="dialogImageUrl" alt="">
                         </el-dialog>
                     </div>
                     <div class="line"></div>
                     <div class="footer-title">
                         <h2>物流服务</h2>
                         <el-rate v-model="value1"></el-rate>
                     </div>
                     <div class="footer-title">
                         <h2>服务态度</h2>
                         <el-rate v-model="value2"></el-rate>
                     </div>
                 <div class="title1"></div>
            </div>
            <div class="button" @click="submit">
                <h2>确定发表</h2>
            </div>
        </div>


    </div>
</template>
<script>
    export default{
        data(){
            return {
                value1: null,
                value2: null,
                content: '',
                file: [],
                dialogImageUrl: '',
                dialogVisible: false,
                id:this.$route.query.id,
                goodsinfo:{},
                files:null,
                uid:localStorage.uid
            }
        },
        methods:{
            handleRemove(file, fileList) {
                this.files=null;
            },
            handlePictureCardPreview(file) {
                this.dialogImageUrl = file.url;
                this.dialogVisible = true;
            },
            success(res,file){
                this.files=res;
            },
            submit(){
                if(this.content.length>10){
                    if(this.value1&&this.value2){
                        fetch('/api/goods/upload_evaluate_by_uid',{
                            method:'POST',
                            headers:{'Content-Type':'application/json'},
                            body:JSON.stringify({id:this.id,uid:this.uid,file:this.files,content:this.content,wuliu:this.value1,fuwu:this.value2})
                        })
                            .then(res=>res.json())
                            .then(data=>{
                                if(data.code==2){
                                    location.href = '#/order?status=4'
                                }else{
                                    this.$message.error('服务器开小差了，请再次提交')
                                }
                            })
                    }else{
                        this.$message.error('请给予商家评分')
                    }
                }else{
                    this.$message.error('评论长度不可小于10')
                }
            }
        },
        mounted(){
            document.querySelector('.el-upload--picture-card').style.cssText=`
                width:100%;
                height: 100%;
                line-height:0.4rem;
                display:flex;
                align-items: center;
                justify-content: center;
            `;

            fetch('/api/goods/get_goods_info_by_id?id='+this.id)
                .then(res=>res.json())
                .then(data=>{
                    if(data.code==2){
                        this.goodsinfo=data.data;
                    }
                })
        }
    }
</script>
<style scoped>
    .evaluate{
        width:100%;
        height:100%;
    }
    /*头部开始*/
    .meheader {
        width: 100%;
        height:0.5rem;
        background:#ffca13;
        position: fixed;
        left:0;
        top:0;
        display: flex;
        z-index: 999;
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
    .evaluate-content{
        position:absolute;
        top:0.5rem;
        padding:0.31rem 0.48rem  0;
        display: flex;
        flex-direction: column;
        width:100%;
    }
    .main{
        width: 100%;
        display: flex;
        height: 1.92rem;
    }
    .main-img{
        width: 100%;
        height: 100%;
    }
    .main-img img{
        width: 100%;
        /*height: 100%;*/

    }
    .title{
        width: 100%;
        background: #fff;
        height: auto;
        position: relative;
        background: #fff;
        padding: 0.05rem  0.05rem 0.3rem;
        border-radius: 0.04rem;
        box-shadow: 0 0.01rem 0.12rem rgba(0,0,0,.12);
    }
    .title1{
        width: 2.66rem;
        height: 2.55rem;
        position: absolute;
        left:50%;
        z-index: -1;
        background: #fff;
        top:0;
        transform: translateX(-50%);
        border-radius: 0.04rem;
        box-shadow: 0 0.01rem 0.12rem rgba(0,0,0,.12);

    }
    .top-title h2{
        font-size: 0.14rem;
    }
    .top-title h3{
        margin-top: 0.02rem;
        font-size: 0.12rem;
        color: #6b6b6b;
        font-weight: normal;
        padding-bottom: 0.09rem;

    }
    .line{
        width: 100%;
        height: 0;
        position: relative;
        border-bottom: 0.005rem solid #6b6b6b;
    }
   .line:before,.line:after{
       content: '';
       display: block;
       width: 0.03rem;
       height: 0.03rem;
       border-radius: 50%;
       background: #6b6b6b;
       position: absolute;
       top:50%;
       transform: translateY(-50%);
   }
    .line:before{
        left:0;
    }
    .line:after{
        right:0;
    }
    .center-title{
        padding-top: 0.06rem;
        height: 1.04rem;
        display: flex;
        flex-direction: column;
        position: relative;
        overflow: hidden;
    }
    .center-title .upload{
        /*margin-top: 0.25rem;*/
        width: 0.4rem;
        height:0.4rem;
        outline: none;
        border:none;
        display: flex;
        /*overflow: hidden;*/
        -webkit-tap-highlight-color: transparent;
        position: absolute;
        z-index: 99;
        line-height:0.4rem!important;
        right: 0.3rem;
        bottom:0.4rem;

    }
    .el-upload-list--picture-card .el-upload-list__item-thumbnail{
        width:100%;
        height: auto;
    }
    .center-title textarea{
        font-size: 0.12rem;
        width:70%;
        height:calc(100% - 0.4rem);
        color:#6b6b6b;
        font-weight: normal;
        border:none;
        outline: none;
        -webkit-appearance: none;
        resize: none;
    }
    .footer-title{
        display: flex;
        margin-top: 0.11rem;
        justify-content: flex-start;
        align-items: center;
    }
    .footer-title h2{
         font-size: 0.16rem;
        color: #6b6b6b;
        font-weight: normal;
        margin-right: 0.1rem;
    }
    .el-rate{
        align-items: center;
        display: flex;
    }
    .button{
        width: 100%;
        height: 0.44rem;
        background: #EE1B1B;
        margin-top: 0.25rem;
        border-radius: 0.04rem;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .button h2{
        font-size: 0.14rem;
        color: #fff;
    }
</style>
