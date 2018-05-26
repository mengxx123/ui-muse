<template>
<div>
  <ui-raised-button @click="openBottomSheet" label="Open Bottom Sheet" />
  <ui-bottom-sheet :open="bottomSheet" @close="closeBottomSheet">
    <ui-list @itemClick="closeBottomSheet">
      <ui-sub-header>
        请选择一个
      </ui-sub-header>
      <ui-list-item title="阴阳师"/>
      <ui-list-item title="贪吃蛇大作战"/>
      <ui-list-item title="一划到底"/>
      <ui-list-item title="全民斗地主"/>
    </ui-list>
  </ui-bottom-sheet>
</div>
</template>

<script>
export default {
  data () {
    return {
      bottomSheet: false
    }
  },
  methods: {
    closeBottomSheet () {
      this.bottomSheet = false
    },
    openBottomSheet () {
      this.bottomSheet = true
    }
  }
}
</script>
