<template>
  <div class="icons">
    <swiper :options="swiperOption">
      <!-- slides -->
      <swiper-slide v-for="(page,index) of pages" :key="index">
        <div class="icon" v-for="item of page" :key="item.id">
          <div class="icon-img">
            <img :src="item.imgUrl" alt="">
            <p class="icon-text">{{item.desc}}</p>
          </div>
        </div>
      </swiper-slide>
      <!-- 如果这里使用的是v-show="showPagin",则能够实现效果 -->
      <div class="swiper-pagination" slot="pagination" v-show="showPagin" key="mypagin"></div>
    </swiper>
  </div>
</template>
<script>
export default {
  name: 'HomeIcons',
  props: {
    iconList: Array
  },
  data () {
    return {
      swiperOption: {
        pagination: '.swiper-pagination'
      }
    }
  },
  computed: {
    pages () {
      const pages = []
      this.iconList.forEach((item, index) => {
        const page = Math.floor(index / 8)
        if (!pages[page]) {
          pages[page] = []
        }
        pages[page].push(item)
      })
      return pages
    },
    showPagin () {
      console.log(this.iconList.length)
      if (this.iconList.length <= 8) {
        return false
      } else {
        console.log('true')
        return true
      }
    }
  }
}
</script>
<style lang="stylus" scoped>
@import '~styles/varibles.styl'
@import '~styles/mixins.styl'
.icons >>> .swiper-pagination-bullet-active
  opacity:.4
.icons
  margin-top:.2rem
  overflow: hidden
  height: 0
  padding-bottom: 50%
.icon
  position: relative
  overflow: hidden
  float: left
  height: 0
  width: 25%
  padding-bottom: 25%
.icon-img
  position: absolute
  top: 0
  right: 0
  left: 0
  bottom: 0.44rem
  box-sizing: border-box
  padding: 0.1rem
  img
    display: block
    margin: 0 auto
    height: 100%
  .icon-text
    position: absolute
    left: 0
    right: 0
    bottom: -0.24rem
    color: $darkTextColor
    text-align: center
    ellipsis()
</style>
