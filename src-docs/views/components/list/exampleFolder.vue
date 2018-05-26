<template>
<mobile-tear-sheet>
  <ui-list>
    <ui-sub-header inset>Folders</ui-sub-header>
    <ui-list-item title="Photos" describeText="Jan 9, 2014">
      <ui-avatar icon="folder" slot="leftAvatar"/>
      <ui-icon value="info" slot="right"/>
    </ui-list-item>
    <ui-list-item title="Recipes" describeText="Jan 17, 2014">
      <ui-avatar icon="folder" slot="leftAvatar"/>
      <ui-icon value="info" slot="right"/>
    </ui-list-item>
    <ui-list-item title="Work" describeText="Jan 28, 2014">
      <ui-avatar icon="folder" slot="leftAvatar"/>
      <ui-icon value="info" slot="right"/>
    </ui-list-item>
  </ui-list>
  <ui-divider inset/>
  <ui-list>
    <ui-sub-header inset>Files</ui-sub-header>
    <ui-list-item title="Vacation itinerary" describeText="Jan 20, 2014">
      <ui-avatar icon="assignment" backgroundColor="blue" slot="leftAvatar" />
      <ui-icon value="info" slot="right"/>
    </ui-list-item>
    <ui-list-item title="Kitchen remodel" describeText="Jan 10, 2014">
      <ui-avatar icon="insert_chart" backgroundColor="yellow600" slot="leftAvatar" />
      <ui-icon value="info" slot="right"/>
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
