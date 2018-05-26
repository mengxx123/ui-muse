<template>
<div class="demo-step-container">
  <ui-stepper :activeStep="activeStep" :linear="false">
    <ui-step>
      <ui-step-label>
        选择活动地点
      </ui-step-label>
    </ui-step>
    <ui-step>
      <ui-step-label class="demo-step-label-warning">
        <ui-icon slot="icon" value="warning" color="red"/>
        创建一个群组
      </ui-step-label>
    </ui-step>
    <ui-step>
      <ui-step-label>
        宣传活动
      </ui-step-label>
    </ui-step>
  </ui-stepper>
</div>
</template>

<script>
export default {
  data () {
    return {
      activeStep: -1
    }
  }
}
</script>

<style>
.demo-step-container {
  width: 100%;
  max-width: 700px;
  margin: auto;
}

.demo-step-label-warning {
  color: rgb(244, 67, 54);
}
</style>
