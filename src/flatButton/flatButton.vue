<template>
<abstract-button
  :disabled="disabled" :keyboardFocused="keyboardFocused" wrapperClass="mu-flat-button-wrapper"
  :type="type" :href="href" :target="target" :style="buttonStyle" class="mu-flat-button"
  :to="to" :tag="tag" :activeClass="activeClass" :event="event" :exact="exact" :append="append" :replace="replace"
  @click="handleClick" :rippleColor="rippleColor"
  @keyboardFocus="handleKeyboardFocus" @hover="handleHover" @hoverExit="handleHoverExit"
  :rippleOpacity="rippleOpacity"
  :class="buttonClass" :centerRipple="false">
  <span class="mu-flat-button-label" :class="labelClass" v-if="label && labelPosition === 'before'">{{label}}</span>
  <icon :value="icon" :class="iconClass"></icon>
  <slot></slot>
  <span class="mu-flat-button-label" :class="labelClass" v-if="label && labelPosition === 'after'">{{label}}</span>
</abstract-button>
</template>

<script>
import abstractButton from '../internal/abstractButton'
import routerMixin from '../internal/routerMixin'
import icon from '../icon'
import {getColor} from '../utils'
export default {
  name: 'ui-flat-button',
  mixins: [routerMixin],
  props: {
    icon: {
      type: String
    },
    iconClass: {
      type: [String, Array, Object]
    },
    type: {
      type: String
    },
    label: {
      type: String
    },
    labelPosition: {
      type: String,
      default: 'after'
    },
    labelClass: {
      type: [String, Array, Object],
      default: ''
    },
    primary: {
      type: Boolean,
      default: false
    },
    secondary: {
      type: Boolean,
      default: false
    },
    disabled: {
      type: Boolean,
      default: false
    },
    keyboardFocused: {
      type: Boolean,
      default: false
    },
    href: {
      type: String,
      default: ''
    },
    target: {
      type: String
    },
    backgroundColor: {
      type: String,
      default: ''
    },
    color: {
      type: String,
      default: ''
    },
    hoverColor: {
      type: String,
      default: ''
    },
    rippleColor: {
      type: String
    },
    rippleOpacity: {
      type: Number
    }
  },
  methods: {
    handleClick (e) {
      this.$emit('click', e)
    },
    handleKeyboardFocus (isFocus) {
      this.$emit('keyboardFocus', isFocus)
      this.$emit('keyboard-focus', isFocus)  // 兼容 html 里的用法
    },
    handleHover (event) {
      this.$emit('hover', event)
    },
    handleHoverExit (event) {
      this.$emit('hoverExit', event)
      this.$emit('hover-exit', event)  // 兼容 html 里的用法
    }
  },
  computed: {
    buttonStyle () {
      return {
        'background-color': this.hover ? getColor(this.hoverColor) : getColor(this.backgroundColor),
        'color': getColor(this.color)
      }
    },
    buttonClass () {
      return {
        'mu-flat-button-primary': this.primary,
        'mu-flat-button-secondary': this.secondary,
        'label-before': this.labelPosition === 'before',
        'no-label': !this.label
      }
    }
  },
  components: {
    'abstract-button': abstractButton,
    icon
  }
}
</script>
