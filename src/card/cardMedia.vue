<template>
<div class="mu-card-media">
  <slot></slot>
  <div v-if="title || subTitle" class="mu-card-media-title">
    <div class="mu-card-title" v-if="title" :class="titleClass">
      {{title}}
    </div>
    <div class="mu-card-sub-title" v-if="subTitle" :class="subTitleClass">
      {{subTitle}}
    </div>
  </div>
</div>
</template>

<script>
export default {
  name: 'ui-card-media',
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
