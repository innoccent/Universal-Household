import Vue from 'vue'
import Router from 'vue-router'
import Hello from '@/components/Hello'
import Mode  from  '../components/Mode'
import MeData from '../components/me/MeData'
import  Address from '../components/me/Address'
import Me  from '../components/Me'



Vue.use(Router)

export default new Router({
    routes: [
        {
            path: '/',
            name: 'Hello',
            component: Hello
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
        }
    ]
})
