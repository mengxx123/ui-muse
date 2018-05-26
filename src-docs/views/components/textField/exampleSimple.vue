<template>
<div>
  <ui-text-field hintText="提示文字"/><br/>
  <ui-text-field v-model="value"/><br/>
  <ui-text-field label="标签文字" hintText="提示文字"/><br/>
  <ui-text-field label="浮动标签" labelFloat/><br/>
  <ui-text-field label="密码" hintText="请输入密码" type="password" labelFloat/><br/>
  <ui-text-field hintText="多行文本输入，默认 3行，最大6行" multiLine :rows="3" :rowsMax="6"/><br/>
  <ui-text-field hintText="Full Width" fullWidth /><br/>
</div>
</template>

<script>
export default {
  data () {
    return {
      value: '默认文字'
    }
  }
}
</script>
