<template>
<div class="demo-menu-container">
  <ui-paper class="demo-menu">
    <ui-menu desktop>
      <ui-menu-item title="Bold" afterText="⌘B"/>
      <ui-menu-item title="Italic" afterText="⌘I"/>
      <ui-menu-item title="Underline" afterText="⌘U"/>
      <ui-menu-item title="Strikethrough" afterText="Alt+Shift+5"/>
      <ui-menu-item title="Superscript" afterText="⌘."/>
      <ui-menu-item title="Subscript" afterText="⌘,"/>
      <ui-divider />
      <ui-menu-item title="Paragraph styles" rightIcon="keyboard_arrow_right"/>
      <ui-menu-item title="Align" rightIcon="keyboard_arrow_right"/>
      <ui-menu-item title="Line spacing" rightIcon="keyboard_arrow_right"/>
      <ui-menu-item title="Paragraph styles" rightIcon="keyboard_arrow_right"/>
      <ui-menu-item title="Numbered list" rightIcon="keyboard_arrow_right"/>
      <ui-menu-item title="List options" rightIcon="keyboard_arrow_right"/>
      <ui-divider />
      <ui-menu-item title="Clear formatting" afterText="⌘/"/>
    </ui-menu>
  </ui-paper>
  <ui-paper class="demo-menu">
    <ui-menu desktop :width="256">
      <ui-menu-item title="Open" afterText="Cmd + O" />
      <ui-menu-item title="Paste in place" afterText="Shift + V" />
      <ui-menu-item title="Research" afterText="Opt + Shift + Cmd + I" />
    </ui-menu>
  </ui-paper>
</div>
</template>

<style lang="css">
.demo-menu {
  display: inline-block;
  margin: 16px 32px 16px 0;
}

.demo-menu-container{
  display: flex;
  justify-content: flex-start;
  align-content: flex-start;
  flex-wrap: wrap;
}

</style>
