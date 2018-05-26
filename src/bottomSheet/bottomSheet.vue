<template>
  <span>
    <transition name="mu-bottom-sheet" @after-enter="show()" @after-leave="hide()">
      <div class="mu-bottom-sheet" :class="sheetClass" ref="popup" v-if="open" :style="{'z-index': zIndex}">
        <slot></slot>
      </div>
    </transition>
  </span>
</template>

<script>
import Popup from '../internal/popup'
export default {
  name: 'ui-bottom-sheet',
  mixins: [Popup],
  props: {
    sheetClass: {
      type: [String, Object, Array]
    }
  },
  methods: {
    show () {
      this.$emit('show')
    },
    hide () {
      this.$emit('hide')
    }
  }
}
</script>
