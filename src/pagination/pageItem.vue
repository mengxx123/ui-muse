<template>
<abstract-button  class="mu-pagination-item" wrapperClass="mu-pagination-item-wrapper" :class="{'circle': isCircle, 'active': isActive}":centerRipple="false" :disabled="disabled"
  @click="handleClick"  @hover="handleHover" @hoverExit="handleHoverExit" containerElement="div">
  <span v-if="index">{{index}}</span>
  <slot></slot>
</abstract-button>
</template>

<script>
import abstractButton from '../internal/abstractButton'
export default{
  props: {
    icon: {
      type: String
    },
    index: {
      type: Number
    },
    isCircle: {
      type: Boolean,
      default: false
    },
    disabled: {
      type: Boolean,
      default: false
    },
    isActive: {
      type: Boolean,
      default: false
    },
    identifier: {
      type: String
    }
  },
  data () {
    return {
    }
  },
  methods: {
    handleHover (event) {
      this.$emit('hover', event)
    },
    handleHoverExit (event) {
      this.$emit('hoverExit', event)
      this.$emit('hover-exit', event)
    },
    handleClick () {
      if (this.index) {
        this.$emit('click', this.index)
      } else {
        this.$emit('click', this.identifier)
      }
    }
  },
  components: {
    'abstract-button': abstractButton
  }
}
</script>
