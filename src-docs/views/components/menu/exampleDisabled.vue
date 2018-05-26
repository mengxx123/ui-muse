<template>
<div>
  <ui-paper class="demo-menu">
    <ui-menu desktop>
      <ui-menu-item title="Back"/>
      <ui-menu-item disabled title="Forward"/>
      <ui-divider />
      <ui-menu-item disabled title="Recently closed"/>
      <ui-menu-item disabled title="Google"/>
      <ui-menu-item title="YouTube"/>
    </ui-menu>
  </ui-paper>
  <ui-paper class="demo-menu">
    <ui-menu desktop>
      <ui-menu-item title="Undo"/>
      <ui-menu-item disabled title="Redo"/>
      <ui-divider />
      <ui-menu-item title="Cut"/>
      <ui-menu-item title="Copy"/>
      <ui-menu-item title="Paste"/>
    </ui-menu>
  </ui-paper>
</div>
</template>


<style lang="css">
.demo-menu {
  display: inline-block;
  margin: 16px 32px 16px 0;
}
</style>
