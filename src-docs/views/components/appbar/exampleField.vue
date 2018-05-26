<template>
<ui-appbar title="Title">
  <ui-text-field icon="search" class="appbar-search-field"  slot="right" hintText="请输入搜索内容"/>
  <ui-flat-button color="white" label="flat Button" slot="right"/>
</ui-appbar>
</template>

<style lang="less">
.appbar-search-field{
  color: #FFF;
  margin-bottom: 0;
  &.focus-state {
    color: #FFF;
  }
  .mu-text-field-hint {
    color: fade(#FFF, 54%);
  }
  .mu-text-field-input {
    color: #FFF;
  }
  .mu-text-field-focus-line {
    background-color: #FFF;
  }
}
</style>
