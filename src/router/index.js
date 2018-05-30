/* eslint-disable */
import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/pages/home/Home'
import City from '@/pages/city/City'
import Detail from '@/pages/detail/Detail'
Vue.use(Router)

export default new Router({
  routes: [{
    path: '/',
    name: 'Home',
    component: Home
  },
{
  path: '/city',
  name: 'City',
  component: City
},
// 动态路由
{path: '/detail/:id',
name: 'Detail',
component: Detail}],
//处理滚动发生的Bug
scrollBehavior (to, from, savedPostion) {
  return {x:0, y:0}
}
 })
