import Vue from 'vue'
import Router from 'vue-router'
import Hello from '@/components/Hello'
<<<<<<< HEAD
import GoodsDetails from '../components/GoodsDetails.vue'
import OnlinePay from '../components/OnlinePay.vue'
=======
import w_guide from '../components/guild/w_guide.vue'
import login from '../components/login/Login'
import yloginin from '../components/login/yloginin.vue'
import yregister from '../components/login/yregister.vue'
import p_guide from '../components/guild/w_guide.vue'
>>>>>>> 332815c1808715e88b07808182f030976f9a0bb0

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
<<<<<<< HEAD
      name: 'Hello',
      component: Hello
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
=======
      name: 'guide',
      component: w_guide
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
      },
        {
        path:'/w',
        name:'w',
        component:p_guide
>>>>>>> 332815c1808715e88b07808182f030976f9a0bb0
      }
  ]
})
