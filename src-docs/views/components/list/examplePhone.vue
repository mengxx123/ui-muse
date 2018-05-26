<template>
<mobile-tear-sheet>
  <ui-list>
    <ui-list-item title="(+86) 88977296" describeText="电话">
      <ui-icon value="call" color="indigo" slot="left"/>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
    <ui-list-item title="(+86) 87495750" describeText="工作电话" inset>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
  </ui-list>
  <ui-divider inset/>
  <ui-list>
    <ui-list-item title="mike.io@example.com" describeText="电子邮箱">
      <ui-icon value="email" color="indigo" slot="left"/>
      <ui-icon value="chat_bubble" slot="right"/>
    </ui-list-item>
    <ui-list-item title="myron.io@example.com" describeText="工作邮箱" inset>
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
