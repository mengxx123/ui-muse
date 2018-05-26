<template>
<div>
  <ui-icon-menu
      icon="more_vert"
      :anchorOrigin="leftTop"
      :targetOrigin="leftTop"
    >
      <ui-menu-item title="Refresh" />
      <ui-menu-item title="Send feedback" />
      <ui-menu-item title="Settings" />
      <ui-menu-item title="Help" />
      <ui-menu-item title="Sign out" />
    </ui-icon-menu>
    <ui-icon-menu
      icon="more_vert"
      :anchorOrigin="leftBottom"
      :targetOrigin="leftBottom"
    >
      <ui-menu-item title="Refresh" />
      <ui-menu-item title="Send feedback" />
      <ui-menu-item title="Settings" />
      <ui-menu-item title="Help" />
      <ui-menu-item title="Sign out" />
    </ui-icon-menu>
    <ui-icon-menu
      icon="more_vert"
      :anchorOrigin="rightBottom"
      :targetOrigin="rightBottom"
    >
      <ui-menu-item title="Refresh" />
      <ui-menu-item title="Send feedback" />
      <ui-menu-item title="Settings" />
      <ui-menu-item title="Help" />
      <ui-menu-item title="Sign out" />
    </ui-icon-menu>
    <ui-icon-menu
      icon="more_vert"
      :anchorOrigin="rightTop"
      :targetOrigin="rightTop"
    >
      <ui-menu-item title="Refresh" />
      <ui-menu-item title="Send feedback" />
      <ui-menu-item title="Settings" />
      <ui-menu-item title="Help" />
      <ui-menu-item title="Sign out" />
    </ui-icon-menu>
</div>
</template>

<script>
export default {
  data () {
    return {
      leftTop: {horizontal: 'left', vertical: 'top'},
      leftBottom: {horizontal: 'left', vertical: 'bottom'},
      rightBottom: {horizontal: 'right', vertical: 'bottom'},
      rightTop: {horizontal: 'right', vertical: 'top'}
    }
  }
}
</script>
