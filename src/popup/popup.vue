<template>
<span>
  <transition :name="transition" @after-enter="show()" @after-leave="hide()">
    <div class="mu-popup" ref="popup" v-if="open" :class="popupCss" :style="{'z-index': zIndex}">
      <slot></slot>
    </div>
  </transition>
</span>
</template>

<script>
import Popup from '../internal/popup'
import {convertClass} from '../utils'
export default {
  name: 'ui-popup',
  mixins: [Popup],
  props: {
    popupClass: {
      type: [String, Object, Array]
    },
    popupTransition: {
      type: String,
      default: ''
    },
    position: {
      type: String,
      default: ''
    }
  },
  data () {
    return {
      transition: this.popupTransition
    }
  },
  created () {
    if (!this.popupTransition) {
      this.transition = `popup-slide-${this.position}`
    }
  },
  computed: {
    popupCss () {
      const {position, popupClass} = this
      let classNames = []
      if (position) classNames.push('mu-popup-' + position)
      return classNames.concat(convertClass(popupClass))
    }
  },
  methods: {
    show () {
      this.$emit('show')
    },
    hide () {
      this.$emit('hide')
    }
  },
  watch: {
    popupTransition (val, oldVal) {
      if (val === oldVal) return
      this.transition = val
    }
  }
}
</script>
