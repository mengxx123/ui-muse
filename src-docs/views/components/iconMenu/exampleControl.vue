<template>
<div>
  <ui-icon-menu icon="more_vert" @change="handleChange" :open="open" @open="handleOpen" @close="handleClose" :value="value">
    <ui-menu-item value="1" title="Refresh" />
    <ui-menu-item value="2" title="Send feedback" />
    <ui-menu-item value="3" title="Settings" />
    <ui-menu-item value="4" title="Help" />
    <ui-menu-item value="5" title="Sign out" />
  </ui-icon-menu>
  <ui-raised-button label="toggle" @click="toggle"/>
</div>
</template>

<script>
export default {
  data () {
    return {
      value: '3',
      open: false
    }
  },
  methods: {
    handleChange (val) {
      this.value = val
    },
    toggle () {
      this.open = !this.open
    },
    handleOpen () {
      this.open = true
    },
    handleClose () {
      this.open = false
    }
  }
}
</script>
