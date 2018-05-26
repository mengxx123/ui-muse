<template>
<ui-list>
  <ui-list-item title="图片" disabled>
    <ui-avatar slot="left" src="/images/uicon.jpg"/>
  </ui-list-item>
  <ui-list-item title="图片,自定义大小" disabled>
    <ui-avatar  slot="left" src="/images/uicon.jpg" :size="30"/>
  </ui-list-item>
  <ui-list-item title="图标" disabled>
    <ui-avatar slot="left" icon="folder"/>
  </ui-list-item>
  <ui-list-item title="图标, 自定义大小、颜色" disabled>
    <ui-avatar slot="left" icon="folder" color="orange200" backgroundColor="pink400" :size="30" :iconSize="20"/>
  </ui-list-item>
  <ui-list-item title="文字" disabled>
    <ui-avatar slot="left" color="deepOrange300" backgroundColor="purple500">MB</ui-avatar>
  </ui-list-item>
</ui-list>
</template>
