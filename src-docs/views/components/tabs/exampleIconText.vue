<template>
<ui-tabs :value="activeTab" @change="handleTabChange">
  <ui-tab value="tab1" icon="phone" title="RECENTS"/>
  <ui-tab value="tab2" icon="favorite" title="FAVORITES"/>
  <ui-tab value="tab3" icon="person_pin" title="NEARBY"/>
</ui-tabs>
</template>

<script>
export default {
  data () {
    return {
      activeTab: 'tab1'
    }
  },
  methods: {
    handleTabChange (val) {
      this.activeTab = val
    }
  }
}
</script>
