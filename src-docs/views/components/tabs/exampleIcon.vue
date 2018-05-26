<template>
<ui-tabs :value="activeTab" @change="handleTabChange">
  <ui-tab value="tab1" icon="home"/>
  <ui-tab value="tab2" icon="flight_takeoff"/>
  <ui-tab value="tab3" icon="favorite"/>
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
