<template>
<div class="mu-card-header">
  <slot name="avatar"></slot>
  <div class="mu-card-header-title" v-if="title || subTitle">
    <div class="mu-card-title" :class="titleClass">
      {{title}}
    </div>
    <div class="mu-card-sub-title" :class="subTitleClass">
      {{subTitle}}
    </div>
  </div>
  <slot></slot>
</div>
</template>

<script>
export default {
  name: 'ui-card-header',
  props: {
    title: {
      type: String
    },
    titleClass: {
      type: [String, Array, Object]
    },
    subTitle: {
      type: String
    },
    subTitleClass: {
      type: [String, Array, Object]
    }
  }
}
</script>
