<template>
<div class="mu-linear-progress" :style="{'height': size + 'px', 'border-radius': (size ? size / 2 : '') + 'px'}">
  <div :style="linearStyle" :class="linearClass"></div>
</div>
</template>

<script>
import {getColor} from '../utils'
export default {
  name: 'ui-linear-progress',
  props: {
    max: {
      type: Number,
      default: 100
    },
    min: {
      type: Number,
      default: 0
    },
    mode: {
      type: String,
      default: 'indeterminate',
      validator (val) {
        return ['indeterminate', 'determinate'].indexOf(val) !== -1
      }
    },
    value: {
      type: Number,
      default: 0
    },
    color: {
      type: String
    },
    size: {
      type: Number
    }
  },
  computed: {
    percent () {
      return (this.value - this.min) / (this.max - this.min) * 100
    },
    linearStyle () {
      const {size, color, mode, percent} = this
      return {
        height: size + 'px',
        'background-color': getColor(color),
        'border-radius': (size ? size / 2 : '') + 'px',
        width: mode === 'determinate' ? percent + '%' : ''
      }
    },
    linearClass () {
      return 'mu-linear-progress-' + this.mode
    }
  }
}
</script>
