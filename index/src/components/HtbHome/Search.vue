<template>
    <div class="h-h-search" @click.stop="hide()">
        <div class="htb-search">
            <input type="text" placeholder="家具" id="search" @click.stop="a" @keyup="search" v-model="keyword">
            <div class="htb-submit" @click.stop="submit"></div>
        </div>
        <div class="htb-result" v-if="result.length">
            <ul class="htb-recommend">
                <router-link :to="{name:'goodsdetails',query:{name:'Htbhome',gid:v.id}}" v-for="v in result" :key="v.id">
                    <li>
                        <div class="htb-rec-pic">
                            <div>
                            </div>
                        </div>
                        <div class="htb-rec-det">
                            <div class="htb-rec-name">{{getname(v.goods_name)[0]}}<span>{{keyword}}</span>{{getname(v.goods_name)[1]}} <span class="htb-hot"></span><span
                                    class="htb-hot"></span><span class="htb-hot"></span></div>
                            <p class="htb-rec-ename">{{v.goods_ename}}</p>
                        </div>
                    </li>
                </router-link>
            </ul>
        </div>
    </div>
</template>
<script>
    export default {
        name: 'search',
        methods: {
            hide() {
                this.$emit('hide')
            },
            a() {

            },
            submit() {
                if(this.keyword){
                    if(localStorage.search_history){
                        let history = JSON.parse(localStorage.search_history);
                        localStorage.search_history = JSON.stringify(history.push(this.keyword));
                    }else{
                        localStorage.search_history = JSON.stringify([this.keyword]);
                    }
                    location.href='#/searchresult?keyword='+this.keyword;
                }
            },
            search(){
                if(this.keyword){
                    fetch('/api/index/get_search?keyword='+this.keyword)
                        .then(res=>res.json())
                        .then(data=>{
                            if(data.code==2){
                                this.result=data.data;
                            }
                        })
                }else{
                    this.result=[];
                }

            },
            getname(name){
                var index = name.indexOf(this.keyword);
                return [name.slice(0,index),name.slice(index+this.keyword.length)]
            }
        },
        data() {
            return {
                keyword: '',
                result: []
            }
        }
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

    .htb-recommend a li {
        color: #333;
        width: 100%;
        height: 0.55rem;
        display: flex;
        justify-content: space-between;
        border-bottom: 1px solid #ccc;
    }

    .htb-recommend li:last-child {
        border: 0;
    }

    .htb-rec-pic {
        width: 20%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .htb-rec-pic div {
        width: 0.45rem;
        height: 0.45rem;
        border-radius: 50%;
        overflow: hidden;
        background: url("/static/img/htbimg/7a94e726970241.5635e9311f8a8.jpg") top center/cover no-repeat;
    }

    .htb-rec-pic div img {
        display: block;
    }

    .htb-rec-det {
        width: 80%;
        height: 100%;
    }

    .htb-rec-name {
        font-size: 0.16rem;
        color: #333333;
        letter-spacing: 2px;
        border-bottom: 1px dashed #000;
        line-height: 0.24rem;
        font-weight: 600;
    }

    .htb-rec-name span {
        color: #ff9313;
    }

    .htb-hot {
        display: inline-block;
        width: 0.14rem;
        height: 0.14rem;
        background: url("/static/img/htbimg/hot_03.png") center center/contain no-repeat;
        margin-right: 0.08rem;
    }

    .htb-rec-ename {
        font-size: 0.14rem;
        color: #6d6d6d;
        text-transform: uppercase;
    }
</style>