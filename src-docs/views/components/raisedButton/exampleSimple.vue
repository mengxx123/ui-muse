<template>
<div class="container">
  <ui-raised-button label="Default" class="demo-raised-button"/>
  <ui-raised-button label="Primary" class="demo-raised-button" primary/>
  <ui-raised-button label="Secondary" class="demo-raised-button" secondary/>
  <ui-raised-button label="Disabled" class="demo-raised-button" disabled/>
  <br/>
  <ui-raised-button label="full Width" fullWidth/>
</div>
</template>

<style>
  .container{
    display: flex;
    flex-wrap: wrap;
  }
  .demo-raised-button {
    margin: 12px;
  }
</style>
