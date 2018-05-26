<template>
<div>
  <ui-text-field hintText="提示文字" disabled/><br/>
  <ui-text-field label="带标签" disabled/><br/>
  <ui-text-field label="浮动标签" labelFloat disabled/><br/>
  <ui-text-field hintText="多行文本输入，默认 3行，最大6行" disabled multiLine :rows="3" :rowsMax="6"/><br/>
</div>
</template>
