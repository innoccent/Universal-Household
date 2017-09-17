import Vue from 'vue'
import Router from 'vue-router'
import Htbhome from '@/components/Htbhome'
import HtbActivity from '../components/HtbActivity'
import Hello from '@/components/Hello'
import w_guide from '../components/guild/w_guide'
import login from '../components/login/Login'
import yloginin from '../components/login/yloginin.vue'
import yregister from '../components/login/yregister.vue'
import Mode  from  '../components/Mode'
import MeData from '../components/me/MeData'
import  Address from '../components/me/Address'
import Me  from '../components/Me'
import GoodsDetails from '../components/GoodsDetails.vue'
import OnlinePay from '../components/OnlinePay.vue'
Vue.use(Router)

export default new Router({
    routes: [
        {
            path: '/home',
            name: 'Htbhome',
            component: Htbhome
        },
        {
            path:'/htbactivity',
            name:'htbactivity',
            component:HtbActivity
        },{
            path:'/',
            name: 'guide',
            component: w_guide
        },
        {
            path: '/mode',
            name: 'mode',
            component: Mode
        },
        {
            path: '/me/medata',
            name: 'medata',
            component: MeData
        },
        {
            path: '/me/address',
            name: 'address',
            component: Address
        },
        {
            path: '/me',
            name: 'me',
            component:Me
        },
      {
          path: '/goodsdetails',
          name: 'goodsdetails',
          component: GoodsDetails
      },
      {
          path: '/onlinepay',
          name: 'onlinepay',
          component: OnlinePay
      },
      {
        path:'/login',
        name:'login',
        component:login
      },
      {
          path:'/yloginin',
          name:'yloginin',
          component:yloginin
      },
      {
          path:'/yregister',
          name:'yregister',
          component:yregister
      }
  ]
})
