<template>
<div class="demo-chip-container">
  <ui-chip class="demo-chip">
    default chip
  </ui-chip>
  <ui-chip class="demo-chip"  @delete="handleClose" showDelete>
    delete chip
  </ui-chip>
  <ui-chip class="demo-chip">
    <ui-avatar :size="32" src="/images/uicon.jpg"/> avatar chip
  </ui-chip>
  <ui-chip class="demo-chip" @delete="handleClose" showDelete>
    <ui-avatar :size="32" src="/images/uicon.jpg"/> avatar delete chip
  </ui-chip>
  <ui-chip class="demo-chip" @delete="handleClose" showDelete>
    <ui-avatar :size="32" icon="face"/> icon avatar chip
  </ui-chip>

  <ui-chip class="demo-chip" backgroundColor="blue300" @delete="handleClose" showDelete>
    <ui-avatar color="blue300" backgroundColor="indigo900" :size="32">MB</ui-avatar> custom chip
  </ui-chip>
</div>
</template>

<script>
export default {
  methods: {
    handleClose () {
      window.alert('你点击了删除按钮')
    }
  }
}
</script>

<style lang="css">
.demo-chip-container{
  display: flex;
  flex-wrap: wrap;
}
.demo-chip{
  margin: 4px;
}
</style>
