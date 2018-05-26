<template>
  <div class="mu-sub-header" :class="{'inset': inset}">
    <slot></slot>
  </div>
</template>

<script>
export default {
  name: 'ui-sub-header',
  props: {
    inset: {
      type: Boolean,
      default: false
    }
  }
}
</script>
