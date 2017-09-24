<template>
    <div class="commit">
        <div class="meheader">
            <router-link :to="{name:'address'}">
                <div class="ceter-left">
                    <img src="/static/img/nxl_jiangtou_left.png" alt="">
                </div>
            </router-link>
            <div class="center-content">
                <h1>编辑资料</h1>
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
                        <input type="text" placeholder="最少2字，最多8字" minlength="2" maxlength="8" v-model="form.username">
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
                        <input type="text" placeholder="请填写正确的联系方式" maxlength="11" minlength="11" v-model="form.tel">
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
                        <select v-model="form.area_1" @change="getCity">
                            <option :value="v.name" v-for="v in province" :key="v.id">{{v.name}}</option>
                        </select>
                        <select v-model="form.area_2">
                            <option :value="v.name" v-for="v in city" :key="v.id">{{v.name}}</option>
                        </select>
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
                        <input type="text" placeholder="省/市/街道/门牌号" v-model="form.address">
                    </div>
                </li>
            </ul>
        </div>
        <div class="add-bottom" @click="submit">
            <h2>完成编辑</h2>
            <h6>THE ENDING</h6>
        </div>
    </div>
</template>
<script>
    import fetchJsonp from 'fetch-jsonp'

    export default {
        data() {
            return {
                form: {
                    username: '',
                    tel: '',
                    area_1: '',
                    area_2: '',
                    address: ''
                },
                province: [],
                city: [],
                uid:localStorage.uid,
                aid:null
            }
        },
        components: {},
        mounted() {
            if(this.$route.query.aid){
                this.aid = this.$route.query.aid;
                fetch('/api/user/get_address_by_id?id='+this.$route.query.aid)
                    .then(res=>res.json())
                    .then(data=>{
                        this.form.username = data.data.ad_name;
                        this.form.tel = data.data.ad_tel;
                        this.form.area_1 = data.data.ad_area.split(",")[0];
                        this.form.area_2 = data.data.ad_area.split(",")[1];
                        this.form.address = data.data.ad_address;
                    })
            }
            fetchJsonp('http://api.jisuapi.com/area/province?appkey=b2c2696b4b1d1e98')
                .then(res => res.json())
                .then(data => {
                    this.province = data.result;
                })
        },
        methods: {
            getCity() {
                this.form.area_2='';
                var id = this.province.filter(v => v.name == this.form.area_1);
                fetchJsonp('http://api.jisuapi.com/area/city?parentid=' + id[0].id + '&appkey=b2c2696b4b1d1e98')
                    .then(res => res.json())
                    .then(data => {
                        this.city = data.result;
                    })
            },
            submit(){
                let flag = true;
                for(let i in this.form){
                    if(!this.form[i]){
                        flag = false;
                    }
                }
                if(flag){
                    var url = '/api/user/add_address_by_id';
                    if(this.aid){
                        url = '/api/user/update_address_by_id';
                        this.form.aid = this.aid;
                    }
                    fetch(url,{
                        method:'POST',
                        headers:{'Content-Type':'application/json'},
                        body:JSON.stringify({form:this.form,uid:this.uid})
                    })
                        .then(res=>res.json())
                        .then(data=>{
                            if(data.code==2){
                                location.href='#/address';
                            }else{
                                this.$message('服务器开小差了，请重试')
                            }
                        })
                }else{
                    this.$message('尚有信息未填写完整')
                }
            }
        }
    }
</script>
<style scoped>
    /*头部开始*/
    .meheader {
        width: 100%;
        height: 0.5rem;
        background: #ffca13;
        position: fixed;
        left: 0;
        top: 0;
        display: flex;
        justify-content: center;
    }

    .ceter-left {
        height: 100%;
        position: absolute;
        left: 0.14rem;
        top: 50%;
        transform: translateY(-50%);
    }

    .ceter-left img {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
    }

    .center-content {
        text-align: center;
    }

    .center-content h1 {
        padding-top: 0.09rem;
        color: #fff;
        font-size: 0.14rem;
    }

    .center-content h2 {
        color: #fff;
        font-size: 0.12rem;
    }

    .center-content h1:before {
        content: '';
        display: inline-block;
        background: url('../../../static/img/nxl_1_03.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }

    .center-content h1:after {
        content: '';
        display: inline-block;
        background: url('../../../static/img/nxl_1_05.png') center center;
        width: 0.1rem;
        height: 0.04rem;
    }

    /*内容开始*/
    .commit-content {
        position: absolute;
        top: 0.5rem;
        padding: 0.21rem 0.12rem 0;
    }

    .commit-content ul li {
        width: 3.51rem;
        height: 0.5rem;
        padding: 0.16rem 0 0.14rem 0.1rem;
        box-shadow: 0 0.001rem 0.1rem 0.01rem rgba(0, 0, 0, .1);
        background: #fff;
        display: flex;
        border-radius: 0.04rem;
        margin-bottom: 0.06rem;
    }

    .content-main1 {
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: flex-start;
        align-items: center;
    }

    .pic1 {
        width: 0.2rem;
        height: 0.2rem;
        display: flex;
        margin-right: 0.15rem;
    }

    .pic img {
        width: 100%;
        height: 100%;
    }

    .content-main1 h2 {
        font-size: 0.14rem;
        margin-right: 0.05rem;
    }

    .content-main1 input, .content-main1 h3 {
        border: none;
        outline: none;
        font-size: 0.12rem;
        color: #bdbdbd;
        font-weight: normal;
        width:60%;
    }

    .content-main1 select {
        color: #bdbdbd;
        width:30%;
        height:100%;
        font-size: 0.13rem;
    }

    .add-bottom {
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 0.44rem;
        background: #ee1b1b;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        border-radius: 0.04rem;
    }

    .add-bottom span {
        font-size: 0.18rem;
        color: #fff;
    }

    .add-bottom h2 {
        font-size: 0.14rem;
        color: #fff;
    }

    .add-bottom h6 {
        font-size: 0.09rem;
        color: #fff;
    }
</style>
