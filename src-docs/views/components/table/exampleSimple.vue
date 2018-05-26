<template>
<div>
  <ui-raised-button label="unselect" @click="unselect"/>
  <ui-table multiSelectable enableSelectAll ref="table">
    <ui-thead>
      <ui-tr>
        <ui-th>ID</ui-th>
        <ui-th>Name</ui-th>
        <ui-th>Status</ui-th>
      </ui-tr>
    </ui-thead>
    <ui-tbody>
      <ui-tr>
        <ui-td>1</ui-td>
        <ui-td>John Smith</ui-td>
        <ui-td>Employed</ui-td>
      </ui-tr>
      <ui-tr>
        <ui-td>2</ui-td>
        <ui-td>Randal White</ui-td>
        <ui-td>Unemployed</ui-td>
      </ui-tr>
      <ui-tr>
        <ui-td>3</ui-td>
        <ui-td>Stephanie Sanders</ui-td>
        <ui-td>Employed</ui-td>
      </ui-tr>
      <ui-tr>
        <ui-td>4</ui-td>
        <ui-td>Steve Brown</ui-td>
        <ui-td>Employed</ui-td>
      </ui-tr>
    </ui-tbody>
  </ui-table>
</div>
</template>
<script>
export default {
  methods: {
    unselect () {
      this.$refs.table.unSelectAll()
    }
  }
}
</script>
