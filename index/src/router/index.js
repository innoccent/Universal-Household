import Vue from 'vue'
import Router from 'vue-router'
import Hello from '@/components/Hello'
import w_guide from '../components/guild/w_guide.vue'
import login from '../components/login/Login'
import p_guide from '../components/guild/w_guide.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'guide',
      component: w_guide
    },
      {
        path:'/login',
          name:'login',
          component:login
      },
      {
        path:'/w',
        name:'w',
        component:p_guide
      }
  ]
})
