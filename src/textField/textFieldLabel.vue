<template>
<div class="mu-text-field-label" :class="labelClass">
  <slot></slot>
</div>
</template>

<script>
import {convertClass} from '../utils'
export default {
  props: {
    focus: {
      type: Boolean,
      default: false
    },
    float: {
      type: Boolean,
      default: false
    },
    normalClass: {
      type: [String, Object, Array]
    },
    focusClass: {
      type: [String, Object, Array]
    }
  },
  computed: {
    labelClass () {
      const {float, focus, normalClass, focusClass} = this
      let classNames = []
      if (float) classNames.push('float')
      classNames = classNames.concat(convertClass(normalClass))
      if (focus) classNames = classNames.concat(convertClass(focusClass))
      return classNames
    }
  }
}
</script>
