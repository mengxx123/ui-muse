<template>
<ui-paper class="demo-menu">
  <ui-menu desktop>
    <ui-menu-item title="Single" inset/>
    <ui-menu-item title="1.15" inset/>
    <ui-menu-item title="Double" inset/>
    <ui-menu-item title="Custom: 1.2" rightIcon="keyboard_arrow_right" leftIcon="check">
      <ui-menu-item title="Show" rightIcon="keyboard_arrow_right">
        <ui-menu-item title="Show Level 2" />
        <ui-menu-item title="Grid lines" leftIcon="check" />
        <ui-menu-item title="Page breaks" inset/>
        <ui-menu-item title="Rules" leftIcon="check" />
      </ui-menu-item>
      <ui-menu-item title="Grid lines" leftIcon="check" />
      <ui-menu-item title="Page breaks" inset/>
      <ui-menu-item title="Rules" leftIcon="check" />
    </ui-menu-item>
    <ui-divider />
    <ui-menu-item title="Add space before paragraph" />
    <ui-menu-item title="Add space after paragraph" />
    <ui-divider />
    <ui-menu-item title="Custom spacing..." />
  </ui-menu>
</ui-paper>
</template>
<style lang="css">
.demo-menu {
  display: inline-block;
  margin: 16px 32px 16px 0;
}
</style>
