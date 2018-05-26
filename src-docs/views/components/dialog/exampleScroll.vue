<template>
<div>
  <ui-raised-button label="scrollable dialog" @click="open"/>
  <ui-dialog :open="dialog" @close="close" title="Scrollable Dialog" scrollable>
    <ui-menu>
      <ui-menu-item :title="'menu item ' + menu" v-for="menu, index in menus" :key="index"/>
    </ui-menu>
    <ui-flat-button primary label="关闭" @click="close" slot="actions"/>
  </ui-dialog>
</div>
</template>

<script>
export default {
  data () {
    const menus = []
    for (let i = 0; i < 30; i++) {
      menus.push(i + 1)
    }
    return {
      dialog: false,
      menus
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
