<template>
<div>
  <ui-dropDown-menu :value="value" @change="handleChange">
    <ui-menu-item value="1" title="星期一"/>
    <ui-menu-item value="2" title="星期二"/>
    <ui-menu-item value="3" title="星期三"/>
    <ui-menu-item value="4" title="星期四"/>
    <ui-menu-item value="5" title="星期五"/>
    <ui-menu-item value="6" title="星期六"/>
    <ui-menu-item value="7" title="星期日"/>
  </ui-dropDown-menu>
</div>
</template>

<script>
export default {
  data () {
    return {
      value: '1'
    }
  },
  methods: {
    handleChange (value) {
      this.value = value
    }
  }
}
</script>
