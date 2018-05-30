<template>
  <div class="list" ref="wrapper">
    <div>
      <div class="area">
        <div class="title border-topbottom">当前城市</div>
        <div class="button-list">
          <div class="button-wrapper">
            <div class="button">{{this.currentCity}}</div>
          </div>
        </div>
      </div>
      <div class="area">
        <div class="title border-topbottom">热门城市</div>
        <div class="button-list">
          <div class="button-wrapper" v-for="item of hot" :key="item.id" @click="handleCityClick(item.name)">
            <div class="button">{{item.name}}</div>
          </div>
        </div>
      </div>
      <!-- 同级:key值不能相等 -->
    <div class="area" v-for="(item,index) of all" :key="index" :ref="index">
        <div class="title border-topbottom">{{index}}</div>
        <div class="item-list">
          <div class="item border-bottom"
          v-for="cityItem of item"
          :key="cityItem.id"
          @click="handleCityClick(cityItem.name)"
          >{{cityItem.name}}</div>
        </div>
      </div>
      </div>
  </div>
</template>
<script>
import BScroll from 'better-scroll'
import { mapMutations, mapState } from 'vuex'
export default {
  name: 'CityList',
  props: {
    hot: Array,
    all: Object,
    letter: String
  },
  computed: {
    ...mapState({
      currentCity: 'city'
    })
  },
  methods: {
    handleCityClick (city) {
      // this.$store.dispatch('changeCity', city)
      this.changeCity(city)
      this.$router.push('/')
    },
    ...mapMutations(['changeCity'])
  },
  mounted () {
    this.scroll = new BScroll(this.$refs.wrapper, {
      click: true
    })
  },
  watch: {
    letter () {
      if (this.letter) {
        const element = this.$refs[this.letter][0]
        this.scroll.scrollToElement(element)
      }
    }
  }
}
</script>
<style lang="stylus" scoped>
.border-topbottom
  &:before
    border-color: #ccc
  &:after
    border-color: #ccc
.border-bottom
  &:before
    border-color: #ccc
.list
  position:absolute
  left:0
  right:0
  top:1.58rem
  bottom:0
  margin: auto
  overflow:hidden
.title
  line-height: 0.54rem
  background: #eee
  padding-left: 0.2rem
  color: #666
  font-size: 0.26rem
.button-list
  overflow: hidden
  padding: 0.1rem 0.6rem 0.1rem 0.1rem
  .button-wrapper
    float: left
    width: 33.33%
    .button
      margin: 0.1rem
      padding: 0.1rem 0
      text-align: center
      border: 0.02rem solid #ccc
      border-radius: 0.06rem
.item-list
  .item
    line-height: .76rem
    padding-left: .2rem
</style>
