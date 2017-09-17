import Vue from 'vue'
import Router from 'vue-router'
import Htbhome from '@/components/Htbhome'
import HtbActivity from '../components/HtbActivity'

Vue.use(Router)

export default new Router({
    routes: [
        {
            path: '/',
            name: 'Htbhome',
            component: Htbhome
        },
        {
            path:'/htbactivity',
            name:'htbactivity',
            component:HtbActivity
        }
    ]
})
