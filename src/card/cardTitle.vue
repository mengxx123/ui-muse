<template>
<div class="mu-card-title-container">
  <div class="mu-card-title" :class="titleClass">
    {{title}}
  </div>
  <div class="mu-card-sub-title" :class="subTitleClass">
    {{subTitle}}
  </div>
</div>
</template>

<script>
export default {
  name: 'ui-card-title',
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
