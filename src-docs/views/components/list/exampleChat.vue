<template>
<mobile-tear-sheet>
  <ui-list>
    <ui-sub-header>最近聊天记录</ui-sub-header>
    <ui-list-item title="Mike Li">
      <ui-avatar src="/images/avatar1.jpg" slot="leftAvatar"/>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
    <ui-list-item title="Maco Mai">
      <ui-avatar src="/images/avatar2.jpg" slot="leftAvatar"/>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
    <ui-list-item title="Alex Qin">
      <ui-avatar src="/images/avatar3.jpg" slot="leftAvatar"/>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
    <ui-list-item title="Allen Qun">
      <ui-avatar src="/images/avatar4.jpg" slot="leftAvatar"/>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
    <ui-list-item title="Myron Liu">
      <ui-avatar src="/images/uicon.jpg" slot="leftAvatar"/>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
  </ui-list>
  <ui-divider/>
  <ui-list>
    <ui-sub-header>历史聊天记录</ui-sub-header>
    <ui-list-item title="Gaia Zhou">
      <ui-avatar src="/images/avatar5.jpg" slot="leftAvatar"/>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
    <ui-list-item title="Miller Wang">
      <ui-avatar src="/images/avatar6.jpg" slot="leftAvatar"/>
      <ui-icon value="chat_bubble" slot="right"/>
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
