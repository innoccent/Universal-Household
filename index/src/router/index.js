import Vue from 'vue'
import Router from 'vue-router'
import Hello from '@/components/Hello'
import Login from '../components/login/Login.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Hello',
      component: Hello
    },
      {
        path:'/login',
          name:'login',
          component:Login,
      }
  ]
})
