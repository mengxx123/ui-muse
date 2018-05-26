<template>
<div>
  <ui-select-field label="很长很长的选择" :maxHeight="300">
    <ui-menu-item v-for="item, index in list" :key="index" :title="item" :value="index"/>
  </ui-select-field>
  <br/>
  <ui-select-field v-model="game" label="错误的样式" :errorText="errorText">
    <ui-menu-item value="1" title="阴阳师"/>
    <ui-menu-item value="2" title="影之刃"/>
    <ui-menu-item value="3" title="天下HD"/>
    <ui-menu-item value="4" title="穿越火线"/>
    <ui-menu-item value="5" title="英雄联盟"/>
    <ui-menu-item value="6" title="王者荣耀"/>
  </ui-select-field>
</div>
</template>

<script>
export default {
  data () {
    const list = []
    for (let i = 0; i < 30; i++) {
      list.push(`item ${i + 1}`)
    }
    return {
      list,
      game: ''
    }
  },
  computed: {
    errorText () {
      return this.game ? '' : '这是必选项'
    }
  }
}
</script>
