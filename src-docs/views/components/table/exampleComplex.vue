<template>
<div>
  <ui-table :fixedFooter="fixedFooter" :fixedHeader="fixedHeader" :height="height"
    :enableSelectAll="enableSelectAll" :multiSelectable="multiSelectable"
    :selectable="selectable" :showCheckbox="showCheckbox">
    <ui-thead slot="header">
      <ui-tr>
        <ui-th tooltip="ID" :sortable="sort">ID</ui-th>
        <ui-th tooltip="名称" :sortable="sort">Name</ui-th>
        <ui-th tooltip="状态" :sortable="sort">Status</ui-th>
      </ui-tr>
    </ui-thead>
    <ui-tbody>
      <ui-tr v-for="item,index in tableData"  :key="index" :selected="item.selected">
        <ui-td>{{index + 1}}</ui-td>
        <ui-td>{{item.name}}</ui-td>
        <ui-td>{{item.status}}</ui-td>
      </ui-tr>
    </ui-tbody>
    <ui-tfoot slot="footer">
      <ui-tr>
        <ui-td>ID</ui-td>
        <ui-td>Name</ui-td>
        <ui-td>Status</ui-td>
      </ui-tr>
    </ui-tfoot>
  </ui-table>
  <div class="demo-table-settings">
    <h3>设置</h3>
    <ui-text-field v-model.lazy="height" label="table的高度"/><br/>
    <ui-switch labelLeft label="固定表头" v-model="fixedHeader"/><br/>
    <ui-switch labelLeft label="固定表尾" v-model="fixedFooter"/><br/>
    <ui-switch labelLeft label="可以被选择" v-model="selectable"/><br/>
    <ui-switch labelLeft label="可以多选" v-model="multiSelectable"/><br/>
    <ui-switch labelLeft label="可以选择全部" v-model="enableSelectAll"/><br/>
    <ui-switch labelLeft label="显示复选框" v-model="showCheckbox"/><br/>
    <ui-switch labelLeft label="排序 / Sortable" v-model="sort"/><br/>
  </div>
</div>
</template>

<script>
export default {
  data () {
    return {
      tableData: [
        {
          name: 'John Smith',
          status: 'Employed',
          selected: true
        },
        {
          name: 'Randal White',
          status: 'Unemployed'
        },
        {
          name: 'Stephanie Sanders',
          status: 'Employed',
          selected: true
        },
        {
          name: 'Steve Brown',
          status: 'Employed'
        },
        {
          name: 'Joyce Whitten',
          status: 'Employed'
        },
        {
          name: 'Samuel Roberts',
          status: 'Employed'
        },
        {
          name: 'Adam Moore',
          status: 'Employed'
        }
      ],
      fixedHeader: true,
      fixedFooter: true,
      selectable: true,
      multiSelectable: true,
      enableSelectAll: false,
      showCheckbox: true,
      height: '300px',
      sort: false
    }
  }
}
</script>

<style lang="css">
.demo-table-settings{
  width: 200px;
  overflow: hidden;
  margin: 20px auto 0px;
}
</style>
