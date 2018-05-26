<template>
<div>
  <ui-raised-button label="Alert Dialog" @click="open"/>
  <ui-dialog :open="dialog" title="Alert Dialog">
    只有点击确定按钮才可以关闭对话框
    <ui-flat-button label="确定" slot="actions" primary @click="close"/>
  </ui-dialog>
</div>
</template>

<script>
export default {
  data () {
    return {
      dialog: false
    }
  },
  methods: {
    open () {
      this.dialog = true
    },
    close () {
      this.dialog = false
    }
  }
}
</script>

<style lang="css">
</style>
