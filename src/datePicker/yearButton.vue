<template>
<button class="mu-year-button" @click.stop="handleClick" @mouseenter="handleHover" @mouseleave="handleHoverExit" :class="{'selected': selected, 'hover': hover}">
  <span class="mu-year-button-text">{{year}}</span>
</button>
</template>

<script>
import {isPc} from '../utils'
export default {
  props: {
    year: {
      type: [String, Number]
    },
    selected: {
      type: Boolean,
      default: false
    }
  },
  data () {
    return {
      hover: false
    }
  },
  mounted () {
    if (this.selected) {
      this.$parent.scrollToSelectedYear(this.$el)
    }
  },
  methods: {
    handleHover () {
      if (isPc()) this.hover = true
    },
    handleHoverExit () {
      this.hover = false
    },
    handleClick (event) {
      this.$emit('click', event)
    }
  },
  watch: {
    selected (val) {
      if (val) this.$parent.scrollToSelectedYear(this.$el)
    }
  }
}
</script>
