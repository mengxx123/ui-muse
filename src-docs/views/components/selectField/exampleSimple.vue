<template>
<div>
  <ui-select-field v-model="game1" :labelFocusClass="['label-foucs']" label="选择你喜欢的游戏">
    <ui-menu-item v-for="text,index in list" :key="index" :value="index" :title="text" />
  </ui-select-field>
  <br/>
  <ui-select-field v-model="game2" multiple label="选择多个">
    <ui-menu-item value="1" title="阴阳师"/>
    <ui-menu-item value="2" title="影之刃"/>
    <ui-menu-item value="3" title="天下HD"/>
    <ui-menu-item value="4" title="穿越火线"/>
    <ui-menu-item value="5" title="英雄联盟"/>
    <ui-menu-item value="6" title="王者荣耀"/>
  </ui-select-field>
  <br/>
  <ui-select-field v-model="game3" disabled label="选择你喜欢的游戏">
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
    return {
      game1: 0,
      game2: ['1'],
      game3: '3',
      list: ['阴阳师', '影之刃', '天下HD', '穿越火线', '英雄联盟', '王者荣耀']
    }
  }
}
</script>
