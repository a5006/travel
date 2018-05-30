<template>
<div>
  <div class="recommend-title">周末去哪儿</div>
<ul>
  <li class="item border-bottom" v-for="item of weekendList" :key="item.id">
   <div class="item-img-wrapper">
      <img class="item-img" :src="item.imgUrl" alt="">
    <div class="item-info">
    <p class="item-title">{{item.title}}</p>
    <p class="item-desc">{{item.desc}}</p>
    </div>
    </div>
  </li>
</ul>
</div>
</template>
<script>
export default {
  name: 'homeWeekend',
  props: {
    weekendList: Array
  },
  data () {
    return {
    }
  }
}
</script>
<style lang="stylus" scoped>
@import '~styles/mixins.styl'
.recommend-title
  line-height:.4rem
  background:#eee
  text-indent:.2rem
.item-img-wrapper
  overflow:hidden
  height:0
  padding-bottom:52.9%
.item-img
  width:100%
.item-info
  padding:.1rem
  .item-title
   ellipsis()
   line-height:.54rem
   font-size:.32rem
 .item-desc
   ellipsis()
   line-height:.4rem
   color:#ccc
</style>
