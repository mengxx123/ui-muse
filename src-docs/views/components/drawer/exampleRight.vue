<template>
<div>
  <ui-raised-button label="toggle drawer" @click="toggle()"/>
  <ui-drawer right :open="open" @close="toggle()">
    <ui-appbar title="Muse UI"/>
    <ui-list>
      <ui-list-item title="Menu Item 1"/>
      <ui-list-item title="Menu Item 2"/>
      <ui-list-item title="Menu Item 3"/>
      <ui-list-item @click.native="open = false" title="Close"/>
    </ui-list>
  </ui-drawer>
</div>
</template>

<script>
export default {
  data () {
    return {
      open: false
    }
  },
  methods: {
    toggle () {
      this.open = !this.open
    }
  }
}
</script>
