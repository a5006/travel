<template>
<div class="header">
  <div class="header-left"><div class="iconfont back-icon">&#xe624;</div></div>
  <div class="header-input">
   <span class="iconfont">&#xe632;</span>
    输入城市/景点/游玩主题
    </div>
    <router-link to="/city">
  <div class="header-right">
    {{this.city}}
    <span class="iconfont arrow-down">&#xe654;</span>
    </div>
    </router-link>
</div>
</template>
<script>
import {mapState} from 'vuex'
export default {
  name: 'Home',
  computed: {
    ...mapState(['city'])
  }
}
</script>
<!--加入scoped 只对当前组件有效-->
<style lang="stylus" scoped>
@import '~styles/varibles.styl'
@import '~styles/mixins.styl'
.header
  display:flex
  line-height:(43/$fontSize)rem
  background:$bgColor
  color:#fff
  .header-left
    width:.64rem
    float:left
  .back-icon
      text-align center
      font-size .4rem
  .header-input
    flex:1
    height:.64rem
    padding-left .2rem
    line-height .64rem
    margin-top:.12rem
    margin-left:.2rem
    background:#fff
    border-radius:.1rem
    color #ccc
  .header-right
    width 1.24rem
    float:right
    text-align:center
    color:#fff
    ellipsis()
  .arrow-down
     font-size .4rem

</style>
