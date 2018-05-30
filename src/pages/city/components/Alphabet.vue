<template>
  <ul class="list">
       <!-- 解决手机滚动的问题touchstart.prevent -->
    <li class="item" v-for="item of letters" :key="item"
    @touchstart.prevent="handleTouchStart"
     @touchmove="handleTouchMove"
    @touchend="handleTouchEnd"
     @click="handleLetterClick"
     :ref="item"
     >{{item}}</li>
  </ul>
</template>
<script>
export default {
  name: 'CityAlphabet',
  props: {
    all: Object
  },
  computed: {
    letters () {
      const letters = []
      for (let i in this.all) {
        letters.push(i)
      }
      return letters
    }
  },
  data () {
    return {
      touchStatus: false,
      startY: 0,
      timer: null
    }
  },
  updated () {
    // Alphabet 在ajax获取数据后就会重新渲染
    this.startY = this.$refs['A'][0].offsetTop
  },
  methods: {
    handleLetterClick (e) {
      this.$emit('letterChange', e.target.innerText)
    },
    handleTouchStart () {
      this.touchStatus = true
    },
    handleTouchMove (e) {
      if (this.touchStatus) {
        if (this.timer) {
          clearTimeout(this.timer)
        }
        this.timer = setTimeout(() => {
          const startY = this.startY
          const touchY = e.touches[0].clientY - 79
          const index = Math.floor((touchY - startY) / 20)
          if (index >= 0 && index < this.letters.length) {
            this.$emit('letterChange', this.letters[index])
          }
        }, 16)
      }
    },
    handleTouchEnd () {
      this.touchStatus = false
    }
  }
}
</script>
<style lang="stylus" scoped>
@import '~styles/varibles.styl'
.list
  display:flex
  flex-direction:column
  justify-content:center
  position:absolute
  top: 1.58rem
  bottom:0
  right:0
  margin:auto
  .item
    line-height: .4rem
    text-align:center
    color: $bgColor
</style>
