<template>
  <div class="header">
    <div class="iconfont">
     <router-link to="/">
      &#xe624;
     </router-link>
      </div>
  <div class="header-center">
    城市选择
    </div>
  </div>
</template>
<script>
export default {
  name: 'CityHeader'
}
</script>
<style lang="stylus" scoped>
@import '~styles/varibles.styl'
.header
  overflow:hidden
  height:$headerHeight
  line-height:$headerHeight
  text-align:center
  color:#fff
  background:$bgColor
  font-size:.32rem
  position:relative
  .header-center
    text-align:center
  .iconfont
    position:absolute
    left:.12rem
    top:0
    bottom:0
    margin:auto
    font-size:.4rem
    a
      color:#fff
</style>
