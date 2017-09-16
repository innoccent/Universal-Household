import Vue from 'vue'
import Router from 'vue-router'
import Hello from '@/components/Hello'
import w_guide from '../components/guild/w_guide.vue'
import login from '../components/login/Login'
import yloginin from '../components/login/yloginin.vue'
import yregister from '../components/login/yregister.vue'



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
          path:'/yloginin',
          name:'yloginin',
          component:yloginin
      },
      {
          path:'/yregister',
          name:'yregister',
          component:yregister
      },
  ]
})
