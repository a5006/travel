<template>
  <div id="app">
    <!-- 路由的内容被加载过一次之后，内容就加入内存之中，不需要重复加载 -->
    <!-- <keep-alive exclude="Detail"> 添加不被缓存页面的写法 -->
    <keep-alive>
    <router-view/>
    </keep-alive>
  </div>
</template>

<script>
export default {
  name: 'APP'
}
</script>

<style>

</style>
