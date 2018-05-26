<template>
<mobile-tear-sheet>
  <ui-list>
    <ui-list-item title="Sent mail">
      <ui-icon slot="left" value="send"/>
    </ui-list-item>
    <ui-list-item title="Drafts">
      <ui-icon slot="left" value="drafts"/>
    </ui-list-item>
    <ui-list-item title="Inbox" toggleNested>
      <ui-icon slot="left" value="inbox"/>
      <ui-list-item slot="nested" title="Starred">
        <ui-icon slot="left" value="grade"/>
      </ui-list-item>
      <ui-list-item slot="nested" disabled title="Sent mail" toggleNested>
        <ui-icon slot="left" value="send"/>
        <ui-list-item title="Drafts" slot="nested">
          <ui-icon slot="left" value="drafts"/>
        </ui-list-item>
      </ui-list-item>
      <ui-list-item slot="nested" title="Inbox" toggleNested>
        <ui-icon slot="left" value="inbox"/>
        <ui-list-item title="Drafts" slot="nested">
          <ui-icon slot="left" value="drafts"/>
        </ui-list-item>
      </ui-list-item>
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
