<template>
  <div @mouseenter="onMouseenter" @mouseup="onMouseup" @mousedown="onMousedown"
      @mouseleave="onMouseleave" @touchstart="onTouchstart" @click= "handleClick"
      @touchend="onTouchend" @touchcancel="onTouchend" :class="classNames" class="mu-chip" :style="style">
    <slot></slot>
    <svg class="mu-chip-delete-icon" viewBox="0 0 24 24"
      v-if="showDelete && !disabled" @click.stop="handleDelete" :class="deleteIconClass">
      <path d="M12 2C6.47 2 2 6.47 2 12s4.47 10 10 10 10-4.47 10-10S17.53 2 12 2zm5 13.59L15.59 17 12 13.41 8.41 17 7 15.59 10.59 12 7 8.41 8.41 7 12 10.59 15.59 7 17 8.41 13.41 12 17 15.59z"/>
    </svg>
  </div>
</template>

<script>
import {isPc, getColor} from '../utils'
export default {
  name: 'ui-chip',
  props: {
    showDelete: {
      type: Boolean,
      default: false
    },
    disabled: {
      type: Boolean,
      default: false
    },
    deleteIconClass: {
      type: [Array, String, Object]
    },
    backgroundColor: {
      type: String
    },
    color: {
      type: String
    }
  },
  data () {
    return {
      focus: false,
      hover: false
    }
  },
  computed: {
    classNames () {
      if (this.disabled) return null
      return this.focus ? ['hover', 'active'] : this.hover ? ['hover'] : null
    },
    style () {
      return {
        'background-color': getColor(this.backgroundColor),
        'color': getColor(this.color)
      }
    }
  },
  methods: {
    onMouseenter () {
      if (isPc()) this.hover = true
    },
    onMouseleave () {
      if (isPc()) this.hover = false
    },
    onMousedown () {
      this.focus = true
    },
    onMouseup () {
      this.focus = false
    },
    onTouchstart () {
      this.focus = true
    },
    onTouchend () {
      this.focus = false
    },
    handleDelete () {
      this.$emit('delete')
    },
    handleClick (e) {
      if (!this.disabled) this.$emit('click', e)
    }
  }
}
</script>
