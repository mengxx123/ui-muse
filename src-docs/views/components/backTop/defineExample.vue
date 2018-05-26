<template>
  <ui-back-top :height="1" :bottom="100" :right="50" :duration="1000" :callBack="backTopCallBack">
    <ui-raised-button label="Back Top" class="demo-raised-button" primary/>
  </ui-back-top>
</template>
<script>
export default {
  methods: {
    backTopCallBack () {
      window.alert('I back top!')
    }
  }
}
</script>
