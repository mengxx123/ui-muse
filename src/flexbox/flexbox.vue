<template>
  <div class="mu-flexbox" :class="{'mu-flex-col': orient === 'vertical', 'mu-flex-row': orient === 'horizontal'}" :style="styles">
    <slot></slot>
  </div>
</template>

<script>
export default {
  name: 'ui-flexbox',
  props: {
    gutter: {
      type: Number,
      default: 8
    },
    orient: {
      type: String,
      default: 'horizontal'
    },
    justify: String,
    align: String,
    wrap: String
  },
  computed: {
    styles () {
      return {
        'justify-content': this.justify,
        'align-items': this.align,
        'flex-wrap': this.wrap
      }
    }
  }
}
</script>
