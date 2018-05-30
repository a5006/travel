<template>
<div>
  <div class="search">
    <input type="text" v-model="keyword" class="search-input" placeholder="输入城市名或拼音">
  </div>
      <!-- 注意这ref,比如在list.vue里面，是用:ref，根据文档解释，:ref="item"，这是表达式，而ref="item"是字符串,我理解的就是
      如果是动态生成的，需要ref去获取某一个值，比如for循环的item，那就用表达式，也就是:ref，否则则用 ref -->
      <div class="search-content"
       ref="search"
       v-show="keyword"
       >
      <ul>
        <li
        class="search-item border-bottom"
        v-for="item of list"
        :key="item.id"
        @click="handleCityClick(item.name)"
        >
          {{item.name}}
        </li>
        <li
        class="search-item border-bottom" v-show="hasNoData">
          没有匹配数据
        </li>
      </ul>
    </div>
</div>
</template>
<script>
import { mapMutations } from 'vuex'
import Bscroll from 'better-scroll'
export default {
  name: 'CitySearch',
  props: {
    all: Object
  },
  data () {
    return {
      keyword: '',
      list: [],
      timer: null
    }
  },
  computed: {
    hasNoData () {
      return !this.list.length
    }
  },
  watch: {
    keyword () {
      if (this.timer) {
        clearTimeout(this.timer)
      }
      if (!this.keyword) {
        this.list = []
        return
      }
      this.timer = setTimeout(() => {
        const result = []
        for (let i in this.all) {
          this.all[i].forEach(value => {
            if (value.spell.indexOf(this.keyword) !== -1 || value.name.indexOf(this.keyword) !== -1) {
              result.push(value)
            }
          })
        }
        this.list = result
      }, 100)
    }
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
    this.scroll = new Bscroll(this.$refs.search, {
      click: true
    })
  }
}
</script>
<style lang="stylus" scoped>
  @import '~styles/varibles.styl'
.search
  height: .72rem
  padding: 0 .1rem
  background: $bgColor
  .search-input
    box-sizing: border-box
    width: 100%
    height: .62rem
    padding: 0 .1rem
    line-height: .62rem
    text-align: center
    border-radius: .06rem
    color: #666
.search-content
  position:absolute
  overflow:hidden
  z-index:1
  top: 1.58rem
  left: 0
  right: 0
  bottom: 0
  background:#eee
  margin: auto
  .search-item
    line-height:.62rem
    padding-left: .2rem
    color:#666
    background: #fff
</style>
