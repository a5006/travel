<template>
  <div>
    <router-link tag="div" to="/" class="header-abs"
    v-show="showAbs"
    >
      <div class="iconfont header-abs-back">
       &#xe624;
      </div>
    </router-link>
    <div class="header-fixed"
    v-show="!showAbs"
    :style="opacityStyle"
    >
      <router-link to="/">
      <div class="iconfont header-fixed-back">&#xe624;</div>
     </router-link>
     景点详情
    </div>
  </div>
</template>
<script>
export default {
  name: 'DetailHeader',
  data () {
    return {
      showAbs: true,
      opacityStyle: {
        opacity: 0
      }
    }
  },
  methods: {
    handleScroll () {
      const top = document.documentElement.scrollTop
      if (top > 60) {
        const opacity = top / 140 > 1 ? 1 : top / 140
        this.opacityStyle = {
          opacity
        }
        this.showAbs = false
      } else {
        this.showAbs = true
      }
    }
  },
  activated () {
    // 这个是绑定在全局的事件，需要解绑
    window.addEventListener('scroll', this.handleScroll)
  },
  // 当页面被隐藏的时候,或者替换成新的页面的时候执行
  deactivated () {
    window.removeEventListener('scroll', this.handleScroll)
  }
}
</script>
<style lang="stylus" scoped>
@import '~styles/varibles.styl'
.header-abs
  position:absolute
  left: .2rem
  top: .2rem
  width: .8rem
  height: .8rem
  line-height:.8rem
  border-radius: .4rem
  background:rgba(0,0,0,0.8)
  .header-abs-back
    color:#fff
    font-size: .4rem
    text-align center
.header-fixed
  z-index:2
  overflow:hidden
  height:$headerHeight
  line-height:$headerHeight
  text-align:center
  color:#fff
  background:$bgColor
  font-size:.32rem
  position:fixed
  top:0
  left:0
  right:0
  .header-fixed-back
    position:absolute
    left:.12rem
    top:0
    bottom:0
    margin:auto
    font-size:.4rem
    color:#fff
    a
      color:#fff
</style>
