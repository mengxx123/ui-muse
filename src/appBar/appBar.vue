<template>
<div class="mu-appbar" :class="['mu-paper-' + zDepth ]">
  <div class="left">
    <slot name="left"></slot>
  </div>
  <div class="mu-appbar-title" :class="titleClass">
    <slot>
      <span>{{title}}</span>
    </slot>
  </div>
  <div class="right">
    <slot name="right"></slot>
  </div>
</div>
</template>

<script>
export default {
  name: 'ui-appbar',
  props: {
    title: {
      type: String,
      default: ''
    },
    titleClass: {
      type: [String, Array, Object]
    },
    zDepth: {
      type: Number,
      default: 1
    }
  }
}
</script>
