import Vue from 'vue'
import Router from 'vue-router'
import Htbhome from '@/components/Htbhome'
import HtbActivity from '../components/HtbActivity'
import w_guide from '../components/guild/w_guide'
import login from '../components/login/Login'
import yloginin from '../components/login/yloginin.vue'
import yregister from '../components/login/yregister.vue'
import classify from '../components/class/classify.vue'
import Mode from '../components/Mode'
import MeData from '../components/me/MeData'
import Address from '../components/me/Address'
import Me from '../components/Me'
import GoodsDetails from '../components/GoodsDetails.vue'
import OnlinePay from '../components/OnlinePay.vue'
import Order from '../components/Order'
import evaluate from '../components/me/Evaluate'
import SearchResult from '../components/SearchResult.vue'
import information from '../components/me/MeData'
import address from '../components/me/Address.vue'
import edsaddress from '../components/me/EditAddress.vue'
import mode_details from '../components/mode_details.vue'

Vue.use(Router)

export default new Router({
    routes: [
        {
            path: '/',
            name: 'guide',
            component: w_guide
        },
        {
            path: '/home',
            name: 'Htbhome',
            component: Htbhome
        },
        {
            path: '/htbactivity',
            name: 'htbactivity',
            component: HtbActivity
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
            component: Me
        },
        {
            path: '/order',
            name: 'order',
            component: Order
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
            path: '/login',
            name: 'login',
            component: login
        },
        {
            path: '/yloginin',
            name: 'yloginin',
            component: yloginin
        },
        {
            path: '/yregister',
            name: 'yregister',
            component: yregister
        },
        {
            path: '/classify',
            name: 'classify',
            component: classify
        },
        {
            path: '/evaluate',
            name: 'evaluate',
            component: evaluate
        },
        {
            path: '/information',
            name: 'information',
            component: information
        },
        {
            path: '/address',
            name: 'address',
            component: address
        },
        {
            path: '/edaddress',
            name: 'edaddress',
            component: edsaddress
        },
        {
            path: '/modedetails',
            name: 'modedetails',
            component: mode_details
        },

        {
            path: '/searchresult',
            name: 'searchresult',
            component: SearchResult
        }
    ]
})
