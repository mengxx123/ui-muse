<template>
<abstract-button @click="handleClick" :centerRipple="false" class="mu-step-button" :disabled="disabled">
  <step-label :active="active" :completed="completed" :num="num" :disabled="disabled" v-if="childrenInLabel">
    <slot></slot>
    <slot name="icon" slot="icon"></slot>
  </step-label>
  <slot v-if="!childrenInLabel"></slot>
</abstract-button>
</template>

<script>
import abstractButton from '../internal/abstractButton'
import stepLabel from './stepLabel'
export default {
  name: 'ui-step-button',
  props: {
    active: {
      type: Boolean
    },
    completed: {
      type: Boolean
    },
    disabled: {
      type: Boolean
    },
    num: {
      type: [String, Number]
    },
    last: {
      type: Boolean
    },
    childrenInLabel: {
      type: Boolean,
      default: true
    }
  },
  methods: {
    handleClick (event) {
      this.$emit('click', event)
    }
  },
  components: {
    abstractButton,
    'step-label': stepLabel
  }
}
</script>
