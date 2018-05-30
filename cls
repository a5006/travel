[33mcommit e3d1a1f305e269a2ff572fd460a462349addd331[m[33m ([m[1;36mHEAD -> [m[1;32mindex-recommand[m[33m, [m[1;31morigin/index-recommand[m[33m)[m
Author: silan <1029082881@qq.com>
Date:   Thu May 10 02:48:02 2018 +0800

    recommend

[1mdiff --git a/src/pages/home/Home.vue b/src/pages/home/Home.vue[m
[1mindex 31468cb..f7e112b 100644[m
[1m--- a/src/pages/home/Home.vue[m
[1m+++ b/src/pages/home/Home.vue[m
[36m@@ -4,6 +4,8 @@[m
     <home-header></home-header>[m
     <home-swiper></home-swiper>[m
     <home-icons></home-icons>[m
[32m+[m[32m    <home-recommand></home-recommand>[m
[32m+[m[32m    <home-weekend></home-weekend>[m
     <div></div>[m
   </div>[m
 [m
[36m@@ -12,12 +14,16 @@[m
 import HomeHeader from './components/header'[m
 import HomeSwiper from './components/swiper'[m
 import HomeIcons from './components/icons'[m
[32m+[m[32mimport HomeRecommand from './components/recommand'[m
[32m+[m[32mimport HomeWeekend from './components/weekend'[m
 export default {[m
   name: 'Home',[m
   components: {[m
     HomeHeader,[m
     HomeSwiper,[m
[31m-    HomeIcons[m
[32m+[m[32m    HomeIcons,[m
[32m+[m[32m    HomeRecommand,[m
[32m+[m[32m    HomeWeekend[m
   }[m
 }[m
 </script>[m
[1mdiff --git a/src/pages/home/components/icons.vue b/src/pages/home/components/icons.vue[m
[1mindex c614708..4e1fd4c 100644[m
[1m--- a/src/pages/home/components/icons.vue[m
[1m+++ b/src/pages/home/components/icons.vue[m
[36m@@ -107,6 +107,7 @@[m [mexport default {[m
   height:0[m
   padding-bottom:50%[m
 .icons[m
[32m+[m[32m  margin-top:.2rem[m
   overflow: hidden[m
   height: 0[m
   padding-bottom: 50%[m
[1mdiff --git a/src/pages/home/components/recommand.vue b/src/pages/home/components/recommand.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..e979470[m
[1m--- /dev/null[m
[1m+++ b/src/pages/home/components/recommand.vue[m
[36m@@ -0,0 +1,76 @@[m
[32m+[m[32m<template>[m
[32m+[m[32m<div>[m
[32m+[m[32m  <div class="recommend-title">热销推荐</div>[m
[32m+[m[32m<ul>[m
[32m+[m[32m  <li class="item border-bottom" v-for="item of recommendList" :key="item.id">[m
[32m+[m[32m      <img class="item-img" :src="item.imgUrl" alt="">[m
[32m+[m[32m    <div class="item-info">[m
[32m+[m[32m    <p class="item-title">{{item.title}}</p>[m
[32m+[m[32m    <p class="item-desc">{{item.desc}}</p>[m
[32m+[m[32m    <button class="item-button">查看详情</button>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  </li>[m
[32m+[m[32m</ul>[m
[32m+[m[32m</div>[m
[32m+[m[32m</template>[m
[32m+[m[32m<script>[m
[32m+[m[32mexport default {[m
[32m+[m[32m  name: 'homeRecommand',[m
[32m+[m[32m  data () {[m
[32m+[m[32m    return {[m
[32m+[m[32m      recommendList: [{[m
[32m+[m[32m        id: '0001',[m
[32m+[m[32m        imgUrl: 'http://img1.qunarzz.com/sight/p0/1505/55/55978d709ae63850.water.jpg_150x150_97e97408.jpg',[m
[32m+[m[32m        title: '深圳世界之窗',[m
[32m+[m[32m        desc: '浪漫深圳首战，浪漫的各国家地标建筑主题公园'[m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        id: '0002',[m
[32m+[m[32m        imgUrl: 'http://img1.qunarzz.com/sight/p0/1505/55/55978d709ae63850.water.jpg_150x150_97e97408.jpg',[m
[32m+[m[32m        title: '深圳世界之窗',[m
[32m+[m[32m        desc: '浪漫深圳首战，浪漫的各国家地标建筑主题公园'[m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        id: '0003',[m
[32m+[m[32m        imgUrl: 'http://img1.qunarzz.com/sight/p0/1505/55/55978d709ae63850.water.jpg_150x150_97e97408.jpg',[m
[32m+[m[32m        title: '深圳世界之窗',[m
[32m+[m[32m        desc: '浪漫深圳首战，浪漫的各国家地标建筑主题公园'[m
[32m+[m[32m      }][m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m[32m</script>[m
[32m+[m[32m<style lang="stylus" scoped>[m
[32m+[m[32m@import '~styles/mixins.styl'[m
[32m+[m[32m.recommend-title[m
[32m+[m[32m  line-height:.4rem[m
[32m+[m[32m  background:#eee[m
[32m+[m[32m  text-indent:.2rem[m
[32m+[m[32m.item[m
[32m+[m[32m  display:flex[m
[32m+[m[32m  overflow:hidden[m
[32m+[m[32m  height 1.9rem[m
[32m+[m[32m  .item-img[m
[32m+[m[32m    width:1.7rem[m
[32m+[m[32m    height:1.7rem[m
[32m+[m[32m    padding:.1rem[m
[32m+[m[32m  .item-info[m
[32m+[m[32m    flex:1[m
[32m+[m[32m    padding:.1rem[m
[32m+[m[32m    min-width:0[m
[32m+[m[32m    .item-title[m
[32m+[m[32m      ellipsis()[m
[32m+[m[32m      line-height:.54rem[m
[32m+[m[32m      font-size:.32rem[m
[32m+[m[32m    .item-desc[m
[32m+[m[32m      ellipsis()[m
[32m+[m[32m      line-height:.4rem[m
[32m+[m[32m      color:#ccc[m
[32m+[m[32m    .item-button[m
[32m+[m[32m      line-height:.44rem[m
[32m+[m[32m      margin-top:.16rem[m
[32m+[m[32m      background #ff9300[m
[32m+[m[32m      padding:0 .1rem[m
[32m+[m[32m      border-radius:.06rem[m
[32m+[m[32m      color:#fff[m
[32m+[m[32m</style>[m
[1mdiff --git a/src/pages/home/components/weekend.vue b/src/pages/home/components/weekend.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..634fccb[m
[1m--- /dev/null[m
[1m+++ b/src/pages/home/components/weekend.vue[m
[36m@@ -0,0 +1,66 @@[m
[32m+[m[32m<template>[m
[32m+[m[32m<div>[m
[32m+[m[32m  <div class="recommend-title">周末去哪儿</div>[m
[32m+[m[32m<ul>[m
[32m+[m[32m  <li class="item border-bottom" v-for="item of recommendList" :key="item.id">[m
[32m+[m[32m   <div class="item-img-wrapper">[m
[32m+[m[32m      <img class="item-img" :src="item.imgUrl" alt="">[m
[32m+[m[32m    <div class="item-info">[m
[32m+[m[32m    <p class="item-title">{{item.title}}</p>[m
[32m+[m[32m    <p class="item-desc">{{item.desc}}</p>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  </li>[m
[32m+[m[32m</ul>[m
[32m+[m[32m</div>[m
[32m+[m[32m</template>[m
[32m+[m[32m<script>[m
[32m+[m[32mexport default {[m
[32m+[m[32m  name: 'homeWeekend',[m
[32m+[m[32m  data () {[m
[32m+[m[32m    return {[m
[32m+[m[32m      recommendList: [{[m
[32m+[m[32m        id: '0001',[m
[32m+[m[32m        imgUrl: 'http://img1.qunarzz.com/sight/source/1505/fa/ca65fde9677de2.jpg_r_640x214_4500e3ff.jpg',[m
[32m+[m[32m        title: '深圳世界之窗',[m
[32m+[m[32m        desc: '浪漫深圳首战，浪漫的各国家地标建筑主题公园'[m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        id: '0002',[m
[32m+[m[32m        imgUrl: 'http://img1.qunarzz.com/sight/source/1505/fa/ca65fde9677de2.jpg_r_640x214_4500e3ff.jpg',[m
[32m+[m[32m        title: '深圳世界之窗',[m
[32m+[m[32m        desc: '浪漫深圳首战，浪漫的各国家地标建筑主题公园'[m
[32m+[m[32m      },[m
[32m+[m[32m      {[m
[32m+[m[32m        id: '0003',[m
[32m+[m[32m        imgUrl: 'http://img1.qunarzz.com/sight/source/1505/fa/ca65fde9677de2.jpg_r_640x214_4500e3ff.jpg',[m
[32m+[m[32m        title: '深圳世界之窗',[m
[32m+[m[32m        desc: '浪漫深圳首战，浪漫的各国家地标建筑主题公园'[m
[32m+[m[32m      }][m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m[32m</script>[m
[32m+[m[32m<style lang="stylus" scoped>[m
[32m+[m[32m@import '~styles/mixins.styl'[m
[32m+[m[32m.recommend-title[m
[32m+[m[32m  line-height:.4rem[m
[32m+[m[32m  background:#eee[m
[32m+[m[32m  text-indent:.2rem[m
[32m+[m[32m.item-img-wrapper[m
[32m+[m[32m  overflow:hidden[m
[32m+[m[32m  height:0[m
[32m+[m[32m  padding-bottom:52.9%[m
[32m+[m[32m.item-img[m
[32m+[m[32m  width:100%[m
[32m+[m[32m.item-info[m
[32m+[m[32m  padding:.1rem[m
[32m+[m[32m  .item-title[m
[32m+[m[32m   ellipsis()[m
[32m+[m[32m   line-height:.54rem[m
[32m+[m[32m   font-size:.32rem[m
[32m+[m[32m .item-desc[m
[32m+[m[32m   ellipsis()[m
[32m+[m[32m   line-height:.4rem[m
[32m+[m[32m   color:#ccc[m
[32m+[m[32m</style>[m
