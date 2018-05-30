<template>
  <div>
    <CityHeader></CityHeader>
    <CitySearch :all="allCities"></CitySearch>
    <CityList :all="allCities" :hot="hotCities" :letter="letter"></CityList>
    <CityAlphabet :all="allCities" @letterChange="handleClick"></CityAlphabet>
  </div>
</template>
<script>
import axios from 'axios'
import CityHeader from './components/Header'
import CitySearch from './components/Search'
import CityList from './components/List'
import CityAlphabet from './components/Alphabet'
export default{
  name: 'City',
  components: {
    CityHeader,
    CitySearch,
    CityList,
    CityAlphabet
  },
  data () {
    return {
      allCities: {},
      hotCities: [],
      letter: ''
    }
  },
  methods: {
    getCityInfo () {
      axios.get('/api/city.json')
        .then(this.handGetCityInforSucc)
    },
    handGetCityInforSucc (res) {
      res = res.data
      if (res.ret && res.data) {
        const data = res.data
        this.allCities = data.cities
        this.hotCities = data.hotCities
      }
    },
    handleClick (res) {
      this.letter = res
    }
  },
  mounted () {
    this.getCityInfo()
  }
}
</script>
<style lang="stylus" scoped>
</style>
