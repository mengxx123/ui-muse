<template>
<div>
  <ui-raised-button label="点这里" ref="button" @click="toggle"/>
  <ui-popover :trigger="trigger" :open="open" @close="handleClose">
    <ui-menu>
      <ui-menu-item title="Refresh" />
      <ui-menu-item title="Send feedback" />
      <ui-menu-item title="Settings" />
      <ui-menu-item title="Help" />
      <ui-menu-item title="Sign out" />
    </ui-menu>
  </ui-popover>
</div>
</template>

<script>
export default {
  data () {
    return {
      open: false,
      trigger: null
    }
  },
  mounted () {
    this.trigger = this.$refs.button.$el
  },
  methods: {
    toggle () {
      this.open = !this.open
    },
    handleClose (e) {
      this.open = false
    }
  }
}
</script>
