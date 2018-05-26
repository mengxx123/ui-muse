<template>
<div>
  <div class="icon-contaner">
    <ui-icon value="home"/>
    <ui-icon value="flight_takeoff" color="red"/>
    <ui-icon value="cloud_download" color="orange"/>
    <ui-icon value="videogame_asset" color="blue"/>
  </div>

  <div class="icon-contaner">
    <ui-icon value="home"/>
    <ui-icon value="home" :size="32"/>
    <ui-icon value="home" :size="36"/>
    <ui-icon value="home" :size="48"/>
  </div>
</div>
</template>

<style>
.icon-contaner .mu-icon {
  margin-right: 12px;
  margin-bottom: 12px;
}
</style>
