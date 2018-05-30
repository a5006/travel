<template>
  <div class="container" @click="handleGallaryClick">
    <div class="wrapper">
   <swiper :options="swiperOption">
      <!-- slides -->
      <swiper-slide v-for="(item, key) of imgs" :key="key">
        <img class="gallary-img" :src="item" alt="">
      </swiper-slide>
      <!-- Optional controls -->
      <div class="swiper-pagination" slot="pagination"></div>
    </swiper>
    </div>
  </div>
</template>
<script>
export default{
  name: 'CommonGallary',
  props: {
    imgs: {
      type: Array,
      default () {
        return [
        ]
      }
    }
  },
  data () {
    return {
      swiperOption: {
        pagination: '.swiper-pagination',
        paginationType: 'fraction',
        observeParents: true,
        observer: true
      }
    }
  },
  methods: {
    handleGallaryClick () {
      this.$emit('close')
    }
  }
}
</script>
<style lang="stylus" scoped>
.container
  display:flex
  flex-direction:column
  justify-content:center
  z-index:99
  position:fixed
  left:0
  right:0
  top:0
  bottom:0
  background:#000
  .wrapper
    width:100%
    height:0
    overflow:hidden
    padding-bottom:100%
    .gallary-img
      width:100%
    .swiper-pagination
        position:fixed
        left:0
        right:0
        bottom:1rem
        color:#fff
</style>
