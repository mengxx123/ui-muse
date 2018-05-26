<template>
<div>
    <ui-raised-button label="toggle drawer" @click="toggle()"/>
    <ui-raised-button label="undocked drawer" @click="toggle(true)"/>
    <ui-drawer :open="open" :docked="docked" @close="toggle()">
      <ui-list @itemClick="docked ? '' : toggle()">
        <ui-list-item title="Menu Item 1"/>
        <ui-list-item title="Menu Item 2"/>
        <ui-list-item title="Menu Item 3"/>
        <ui-list-item v-if="docked" @click.native="open = false" title="Close"/>
      </ui-list>
    </ui-drawer>
</div>
</template>

<script>
export default {
  data () {
    return {
      open: false,
      docked: true
    }
  },
  methods: {
    toggle (flag) {
      this.open = !this.open
      this.docked = !flag
    }
  }
}
</script>
