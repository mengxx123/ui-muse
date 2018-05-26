<template>
<label @mousedown="handleMouseDown" @mouseleave="handleMouseLeave" @mouseup="handleMouseUp"
  @touchstart="handleTouchStart" @touchend="handleTouchEnd" @touchcancel="handleTouchEnd" @click.stop="handleClick"
  class="mu-switch" :class="{'label-left': labelLeft, 'disabled': disabled, 'no-label': !label}">
  <input type="checkbox" :disabled="disabled" :name="name" @change="handleChange"  v-model="inputValue">
  <div class="mu-switch-wrapper">
    <div class="mu-switch-label" :class="labelClass" v-if="label && labelLeft">{{label}}</div>
    <div class="mu-switch-container">
      <div class="mu-switch-track" :class="trackClass"></div>
      <div class="mu-switch-thumb" :class="thumbClass" v-if="disabled"></div>
      <touch-ripple v-if="!disabled"  rippleWrapperClass="mu-switch-ripple-wrapper" class="mu-switch-thumb"/>
    </div>
    <div class="mu-switch-label" :class="labelClass" v-if="label && !labelLeft">{{label}}</div>
  </div>
</label>
</template>

<script>
import touchRipple from '../internal/touchRipple'
export default {
  name: 'ui-switch',
  props: {
    name: {
      type: String
    },
    value: {
      type: Boolean
    },
    label: {
      type: String,
      default: ''
    },
    labelLeft: {
      type: Boolean,
      default: false
    },
    labelClass: {
      type: [String, Object, Array]
    },
    trackClass: {
      type: [String, Object, Array]
    },
    thumbClass: {
      type: [String, Object, Array]
    },
    disabled: {
      type: Boolean,
      default: false
    }
  },
  data () {
    return {
      inputValue: this.value
    }
  },
  watch: {
    value (val) {
      this.inputValue = val
    },
    inputValue (val) {
      this.$emit('input', val)
    }
  },
  methods: {
    handleMouseDown (event) {
      if (this.disabled) return
      if (event.button === 0) {
        this.$children[0].start(event)
      }
    },
    handleClick () {
      // 阻止事件冒泡，放置外部控制的时候触发两次 click
    },
    handleMouseUp () {
      if (this.disabled) return
      this.$children[0].end()
    },
    handleMouseLeave () {
      if (this.disabled) return
      this.$children[0].end()
    },
    handleTouchStart (event) {
      if (this.disabled) return
      this.$children[0].start(event)
    },
    handleTouchEnd () {
      if (this.disabled) return
      this.$children[0].end()
    },
    handleChange () {
      this.$emit('change', this.inputValue)
    }
  },
  components: {
    'touch-ripple': touchRipple
  }
}
</script>
