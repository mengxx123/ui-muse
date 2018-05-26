<template>
<mobile-tear-sheet>
  <ui-list>
    <ui-list-item title="Mike Li">
      <ui-avatar src="/images/avatar1.jpg" slot="rightAvatar"/>
      <ui-icon value="grade" slot="left" color="pinkA200"/>
    </ui-list-item>
    <ui-list-item title="Maco Mai" inset>
      <ui-avatar src="/images/avatar2.jpg" slot="rightAvatar"/>
    </ui-list-item>
    <ui-list-item title="Alex Qin" inset>
      <ui-avatar src="/images/avatar3.jpg" slot="rightAvatar"/>
    </ui-list-item>
    <ui-list-item title="Allen Qun" inset>
      <ui-avatar src="/images/avatar4.jpg" slot="rightAvatar"/>
    </ui-list-item>
  </ui-list>
  <ui-divider inset/>
  <ui-list>
    <ui-list-item title="Myron Liu">
      <ui-avatar src="/images/uicon.jpg" slot="rightAvatar"/>
      <ui-avatar color="pinkA200" :style="{'margin-left': '-8px'}" backgroundColor="transparent" slot="leftAvatar">A</ui-avatar>
    </ui-list-item>
    <ui-list-item title="Gaia Zhou" inset>
      <ui-avatar src="/images/avatar5.jpg" slot="rightAvatar"/>
    </ui-list-item>
    <ui-list-item title="Miller Wang" inset>
      <ui-avatar src="/images/avatar6.jpg" slot="rightAvatar"/>
    </ui-list-item>
  </ui-list>
</mobile-tear-sheet>
</template>

<script>
import mobileTearSheet from '../../../components/mobileTearSheet'
export default {
  components: {
    'mobile-tear-sheet': mobileTearSheet
  }
}
</script>
