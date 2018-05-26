<template>
<div>
  <ui-raised-button label="dialog" @click="open"/>
  <ui-dialog :open="dialog" title="Dialog" @close="close">
    这是一个简单的弹出框
    <ui-flat-button slot="actions" @click="close" primary label="取消"/>
    <ui-flat-button slot="actions" primary @click="close" label="确定"/>
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
