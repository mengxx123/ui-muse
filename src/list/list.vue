<template>
  <div class="mu-list">
    <slot></slot>
  </div>
</template>
<script>
export default {
  name: 'ui-list',
  props: {
    nestedLevel: {
      type: Number,
      default: 0
    },
    value: {}
  },
  methods: {
    handleChange (value) {
      this.$emit('change', value)
    },
    handleItemClick (listItem) {
      this.$emit('itemClick', listItem)
      this.$emit('item-click', listItem)
    }
  }
}
</script>
