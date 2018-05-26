<template>
<div>
  <ui-paper style="display: inline-block;margin-right: 16px;">
    <ui-menu>
      <ui-menu-item title="menu 1">
        <ui-badge content="12" slot="after"/>
      </ui-menu-item>
      <ui-menu-item title="menu 2">
        <ui-badge content="old" primary slot="after"/>
      </ui-menu-item>
      <ui-menu-item title="menu 3">
        <ui-badge content="news" secondary slot="after"/>
      </ui-menu-item>
    </ui-menu>
  </ui-paper>
  <ui-paper style="display: inline-block; width: 256px;">
    <ui-list>
      <ui-list-item title="List Item 1">
        <ui-badge content="12" slot="right"/>
      </ui-list-item>
      <ui-list-item title="List Item 2">
        <ui-badge content="old" primary slot="right"/>
      </ui-list-item>
      <ui-list-item title="List Item 3">
        <ui-badge content="news" secondary slot="right"/>
      </ui-list-item>
    </ui-list>
  </ui-paper>
</div>
</template>
