<template>
<div>
  <div class="banner" @click="handleBannerClick">
   <img class="banner-img" src="//img1.qunarzz.com/sight/p0/1701/e3/e37e31bd3ca85837a3.water.jpg_600x330_c63952bc.jpg" alt="">
<div class="banner-info">
  <div class="banner-title">
   {{this.sightName}}
  </div>
  <div class="banner-number">
    <span class="iconfont">&#xe616;</span>
    {{this.bannerImgs.length}}
  </div>
</div>
  </div>
  <fade-animation>
  <CommonGallary :imgs="bannerImgs" v-show="showGallary" @close="handleGallaryClose"></CommonGallary>
  </fade-animation>
</div>
</template>
<script>
import CommonGallary from 'common/gallary/Gallary'
import FadeAnimation from 'common/fade/Fade'
export default {
  name: 'DetailBanner',
  components: {
    CommonGallary,
    FadeAnimation
  },
  props: {
    sightName: String,
    bannerImg: String,
    bannerImgs: Array
  },
  data () {
    return {
      showGallary: false
    }
  },
  methods: {
    handleBannerClick () {
      this.showGallary = true
    },
    handleGallaryClose () {
      this.showGallary = false
    }
  }
}
</script>
<style lang="stylus" scoped>
.banner
  position:relative
  overflow:hidden
  height:0
  padding-bottom:55%
  .banner-img
    width: 100%
  .banner-info
    display:flex
    position:absolute
    left:0
    right:0
    bottom:0
    line-height:.6rem
    background-image:linear-gradient(top,rgba(0,0,0,0),rgba(0,0,0,0.8))
    color:#fff
    .banner-title
      flex:1
      font-size:.32rem
      padding:0 .2rem
    .banner-number
      margin-top:.1rem
      padding:0 .4rem
      line-height:.4rem
      height:.4rem
      border-radius:.2rem
      background:rgba(0,0,0,0.8)
      font-size:.24rem
      .iconfont
        font-size:.24rem
</style>
