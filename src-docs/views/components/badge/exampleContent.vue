<template>
<div class="demo-badge-container">
  <ui-badge class="demo-badge-content">
    <ui-icon value="folder_open"/>
    <ui-icon value="cloud_upload" slot="content"/>
  </ui-badge>
  <ui-badge  class="demo-badge-content">
    版权信息
    <span style="font-size: 20px;" slot="content">&copy;</span>
  </ui-badge>
</div>
</template>
<style lang="less">
.demo-badge-content {
  padding: 12px;
  .mu-badge{
    background-color: inherit;
    color: inherit;
  }
}
</style>
