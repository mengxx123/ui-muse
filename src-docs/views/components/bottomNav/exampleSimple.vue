<template>
<ui-paper>
  <ui-bottom-nav :value="bottomNav" @change="handleChange">
    <ui-bottom-nav-item value="recents" title="Recents" icon="restore"/>
    <ui-bottom-nav-item value="favorites" title="Favorites" icon="favorite"/>
    <ui-bottom-nav-item value="nearby" title="Nearby" icon="location_on"/>
  </ui-bottom-nav>
</ui-paper>
</template>

<script>
export default {
  data () {
    return {
      bottomNav: 'recents'
    }
  },
  methods: {
    handleChange (val) {
      this.bottomNav = val
    }
  }
}
</script>
