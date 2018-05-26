<template>
<abstract-button :type="type" :href="href" @click="handleClick" :target="target"
  :to="to" :tag="tag" :activeClass="activeClass" :event="event" :exact="exact" :append="append" :replace="replace"
  @keyboardFocus="handleKeyboardFocus" @hover="handleHover" @hoverExit="handleHoverExit"
  :style="buttonStyle" :disabled="disabled" class="mu-float-button" :class="[buttonClass]">
  <div class="mu-float-button-wrapper">
    <slot>
      <icon :value="this.icon" :class="iconClass"></icon>
    </slot>
  </div>
</abstract-button>
</template>

<script>
import abstractButton from '../internal/abstractButton'
import routerMixin from '../internal/routerMixin'
import icon from '../icon'
import {getColor} from '../utils'
export default {
  name: 'ui-float-button',
  mixins: [routerMixin],
  props: {
    icon: {
      type: String
    },
    iconClass: {
      type: [String, Array, Object],
      default: ''
    },
    type: {
      type: String
    },
    href: {
      type: String,
      default: ''
    },
    target: {
      type: String
    },
    disabled: {
      type: Boolean,
      default: false
    },
    secondary: {
      type: Boolean,
      default: false
    },
    mini: {
      type: Boolean,
      default: false
    },
    backgroundColor: {
      type: String,
      default: ''
    }
  },
  computed: {
    buttonClass () {
      let classNames = []
      if (this.secondary) classNames.push('mu-float-button-secondary')
      if (this.mini) classNames.push('mu-float-button-mini')
      return classNames.join(' ')
    },
    buttonStyle () {
      return {
        'background-color': getColor(this.backgroundColor)
      }
    }
  },
  methods: {
    handleClick (e) {
      this.$emit('click', e)
    },
    handleKeyboardFocus (isFocus) {
      this.$emit('keyboardFocus', isFocus)
      this.$emit('keyboard-focus', isFocus)
    },
    handleHover (event) {
      this.$emit('hover', event)
    },
    handleHoverExit (event) {
      this.$emit('hoverExit', event)
      this.$emit('hover-exit', event)  // 兼容 html 里的用法
    }
  },
  components: {
    'abstract-button': abstractButton,
    icon
  }
}
</script>
