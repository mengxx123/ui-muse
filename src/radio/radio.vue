<template>
<label @mousedown="handleMouseDown" @mouseleave="handleMouseLeave" @mouseup="handleMouseUp"
  @touchstart="handleTouchStart" @touchend="handleTouchEnd"  @touchcancel="handleTouchEnd" @click.stop="handleClick"
  class="mu-radio" :class="{'label-left': labelLeft, 'disabled': disabled, 'no-label': !label}">
  <input type="radio" :disabled="disabled" :name="name" :value="nativeValue" @change="handleChange" v-model="inputValue">
  <touch-ripple v-if="!disabled" rippleWrapperClass="mu-radio-ripple-wrapper" class="mu-radio-wrapper">
    <div class="mu-radio-label" :class="labelClass" v-if="label && labelLeft">{{label}}</div>
    <div class="mu-radio-icon">
      <svg class="mu-radio-icon-uncheck mu-radio-svg-icon" :class="iconClass" v-if="!checkedIcon" viewBox="0 0 24 24">
        <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"/>
      </svg>
      <svg class="mu-radio-icon-checked mu-radio-svg-icon" :class="iconClass" v-if="!uncheckIcon" viewBox="0 0 24 24">
        <path d="M12 7c-2.76 0-5 2.24-5 5s2.24 5 5 5 5-2.24 5-5-2.24-5-5-5zm0-5C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"/>
      </svg>
      <icon :value="uncheckIcon" v-if="uncheckIcon" :class="iconClass" class="mu-radio-icon-uncheck"></icon>
      <icon :value="checkedIcon" v-if="checkedIcon" :class="iconClass" class="mu-radio-icon-checked"></icon>
    </div>
    <div class="mu-radio-label" :class="labelClass" v-if="label && !labelLeft">{{label}}</div>
  </touch-ripple>
  <div class="mu-radio-wrapper" v-if="disabled">
    <div class="mu-radio-label" :class="labelClass" v-if="label && labelLeft">{{label}}</div>
    <div class="mu-radio-icon">
      <svg class="mu-radio-icon-uncheck mu-radio-svg-icon" :class="iconClass" v-if="!checkedIcon" viewBox="0 0 24 24">
        <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"/>
      </svg>
      <svg class="mu-radio-icon-checked mu-radio-svg-icon" :class="iconClass" v-if="!uncheckIcon" viewBox="0 0 24 24">
        <path d="M12 7c-2.76 0-5 2.24-5 5s2.24 5 5 5 5-2.24 5-5-2.24-5-5-5zm0-5C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"/>
      </svg>
      <icon :value="uncheckIcon" v-if="uncheckIcon" :class="iconClass" class="mu-radio-icon-uncheck"></icon>
      <icon :value="checkedIcon" v-if="checkedIcon" :class="iconClass" class="mu-radio-icon-checked"></icon>
    </div>
    <div class="mu-radio-label" :class="labelClass"  v-if="label && !labelLeft">{{label}}</div>
  </div>
</label>
</template>

<script>
import icon from '../icon'
import touchRipple from '../internal/touchRipple'
export default {
  name: 'ui-radio',
  props: {
    name: {
      type: String
    },
    value: {
      type: String
    },
    nativeValue: {
      type: String
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
    disabled: {
      type: Boolean,
      default: false
    },
    uncheckIcon: {
      type: String,
      default: ''
    },
    checkedIcon: {
      type: String,
      default: ''
    },
    iconClass: {
      type: [String, Object, Array]
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
    handleClick () {
      // 阻止事件冒泡，放置外部控制的时候触发两次 click
    },
    handleMouseDown (event) {
      if (this.disabled) return
      if (event.button === 0) {
        this.$children[0].start(event)
      }
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
    icon,
    'touch-ripple': touchRipple
  }
}
</script>
