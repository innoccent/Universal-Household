import Vue from 'vue'
import Router from 'vue-router'
import Hello from '@/components/Hello'
import GoodsDetails from '../components/GoodsDetails.vue'
import OnlinePay from '../components/OnlinePay.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
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
      }
  ]
})
