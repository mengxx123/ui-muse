<template>
<div>
  <ui-paper class="demo-menu">
    <ui-menu>
      <ui-menu-item title="Preview" leftIcon="remove_red_eye"/>
      <ui-menu-item title="Share" leftIcon="person_add"/>
      <ui-menu-item title="Get Links" leftIcon="link"/>
      <ui-divider />
      <ui-menu-item title="Make a copy" leftIcon="content_copy"/>
      <ui-menu-item title="Download" leftIcon="file_download"/>
      <ui-menu-item title="Remove" leftIcon="delete"/>
    </ui-menu>
  </ui-paper>
  <ui-paper class="demo-menu">
    <ui-menu>
      <ui-menu-item title="Clear Config"/>
      <ui-menu-item title="New Config" rightIcon="person_add"/>
      <ui-menu-item title="Project" rightIcon="settings"/>
      <ui-menu-item title="Workspace" rightIcon="settings" rightIconColor="#559"/>
      <ui-menu-item title="Paragraph" rightIcon="¶"/>
      <ui-menu-item title="Section" rightIcon="§"/>
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
