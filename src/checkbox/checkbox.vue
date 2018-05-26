<template>
  <label @mousedown="handleMouseDown" @mouseup="handleMouseUp" @mouseleave="handleMouseLeave"
    @touchstart="handleTouchStart" @touchend="handleTouchEnd" @touchcancel="handleTouchEnd" @click.stop="handleClick"
    class="mu-checkbox" :class="{'label-left': labelLeft, 'disabled': disabled, 'no-label': !label}">
    <input type="checkbox" :disabled="disabled" :name="name" :value="nativeValue" @change="handleChange" v-model="inputValue">
    <touch-ripple v-if="!disabled" rippleWrapperClass="mu-checkbox-ripple-wrapper" class="mu-checkbox-wrapper">
      <div class="mu-checkbox-label" :class="labelClass" v-if="label && labelLeft">{{label}}</div>
      <div class="mu-checkbox-icon">
        <svg class="mu-checkbox-icon-uncheck mu-checkbox-svg-icon" :class="iconClass" v-if="!checkedIcon" viewBox="0 0 24 24">
          <path d="M19 5v14H5V5h14m0-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2z"/>
        </svg>
        <svg class="mu-checkbox-icon-checked mu-checkbox-svg-icon" :class="iconClass" v-if="!uncheckIcon" viewBox="0 0 24 24">
          <path d="M19 3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.11 0 2-.9 2-2V5c0-1.1-.89-2-2-2zm-9 14l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
        </svg>
        <icon :value="uncheckIcon" v-if="uncheckIcon" :class="iconClass" class="mu-checkbox-icon-uncheck"></icon>
        <icon :value="checkedIcon" v-if="checkedIcon" :class="iconClass" class="mu-checkbox-icon-checked"></icon>
      </div>
      <div class="mu-checkbox-label" :class="labelClass" v-if="label && !labelLeft">{{label}}</div>
    </touch-ripple>
    <div class="mu-checkbox-wrapper" v-if="disabled">
      <div class="mu-checkbox-label" :class="labelClass" v-if="label && labelLeft">{{label}}</div>
      <div class="mu-checkbox-icon">
        <svg class="mu-checkbox-icon-uncheck mu-checkbox-svg-icon" :class="iconClass" v-if="!checkedIcon" viewBox="0 0 24 24">
          <path d="M19 5v14H5V5h14m0-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2z"/>
        </svg>
        <svg class="mu-checkbox-icon-checked mu-checkbox-svg-icon" :class="iconClass" v-if="!uncheckIcon" viewBox="0 0 24 24">
          <path d="M19 3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.11 0 2-.9 2-2V5c0-1.1-.89-2-2-2zm-9 14l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
        </svg>
        <icon :value="uncheckIcon" v-if="uncheckIcon" :class="iconClass" class="mu-checkbox-icon-uncheck"></icon>
        <icon :value="checkedIcon" v-if="checkedIcon" :class="iconClass" class="mu-checkbox-icon-checked"></icon>
      </div>
      <div class="mu-checkbox-label" :class="labelClass" v-if="label && !labelLeft">{{label}}</div>
    </div>
  </label>
</template>

<script>
import icon from '../icon'
import touchRipple from '../internal/touchRipple'
export default {
  name: 'ui-checkbox',
  props: {
    name: {
      type: String
    },
    value: {},
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
