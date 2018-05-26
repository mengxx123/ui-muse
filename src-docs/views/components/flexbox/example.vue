<template>
<div>
  <ui-flexbox>
    <ui-flexbox-item class="flex-demo">
      1
    </ui-flexbox-item>
    <ui-flexbox-item class="flex-demo">
      2
    </ui-flexbox-item>
    <ui-flexbox-item class="flex-demo">
      3
    </ui-flexbox-item>
  </ui-flexbox>
  <ui-flexbox class="mt8">
    <ui-flexbox-item class="flex-demo">
      4
    </ui-flexbox-item>
    <ui-flexbox-item class="flex-demo">
      5
    </ui-flexbox-item>
  </ui-flexbox>
  <ui-flexbox class="mt8">
    <ui-flexbox-item order="0" class="flex-demo">
      6
    </ui-flexbox-item>
    <ui-flexbox-item order="2" span="200" class="flex-demo">
      7
    </ui-flexbox-item>
    <ui-flexbox-item order="1" class="flex-demo">
      8
    </ui-flexbox-item>
  </ui-flexbox>
  <ui-flexbox class="mt8" orient="vertical">
    <ui-flexbox-item order="0" class="flex-demo">
      9
    </ui-flexbox-item>
    <ui-flexbox-item order="2" class="flex-demo">
      10
    </ui-flexbox-item>
  </ui-flexbox>
</div>
</template>

<style lang="css">
.mt8 {
  margin-top: 8px;
}
.flex-demo {
  height: 32px;
  background-color: #e0e0e0;
  text-align: center;
  line-height: 32px;
}
</style>
