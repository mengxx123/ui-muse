<template>
  <div v-if="backShow" class="mu-back-up" :style="propsStyle" @click="moveTop">
    <slot>
      <div class="mu-back-up-default">
        <icon value="keyboard_arrow_up"/>
      </div>
    </slot>
  </div>
</template>
<script>
import {backTop} from './assist.js'
import icon from '../icon'
import throttle from 'lodash/throttle'

export default {
  name: 'ui-back-top',
  data () {
    return {
      backShow: false
    }
  },
  components: {
    icon
  },
  props: {
    height: {
      type: Number,
      default: 200
    },
    bottom: {
      type: Number,
      default: 30
    },
    right: {
      type: Number,
      default: 30
    },
    durations: {
      type: Number,
      default: 500
    },
    callBack: {
      type: Function,
      default: () => {
      }
    }
  },
  computed: {
    propsStyle () {
      return {
        right: `${this.right}px`,
        bottom: `${this.bottom}px`
      }
    }
  },
  methods: {
    moveTop () {
      backTop(this.durations, this.callBack)
    },
    scrollListener () {
      var top = document.documentElement.scrollTop || document.body.scrollTop
      this.backShow = top >= this.height
    }
  },
  mounted () {
    this._scrollListener = throttle(this.scrollListener, 100)
    window.addEventListener('scroll', this._scrollListener, false)
    window.addEventListener('resize', this._scrollListener, false)
  },
  beforeDestroy () {
    window.removeEventListener('scroll', this._scrollListener, false)
    window.removeEventListener('resize', this._scrollListener, false)
  }
}
</script>
