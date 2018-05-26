<template>
<mobile-tear-sheet>
  <ui-list :value="value" @change="handleChange">
    <ui-list-item :value="1" title="Mike Li">
      <ui-avatar src="/images/avatar1.jpg" slot="leftAvatar"/>
    </ui-list-item>
    <ui-list-item  :value="2" title="Maco Mai" inset toggleNested>
      <ui-avatar src="avatar2" slot="leftAvatar"/>
      <ui-list-item :value="3"  title="Myron Liu" slot="nested">
        <ui-avatar src="/images/uicon.jpg" slot="leftAvatar"/>
      </ui-list-item>
      <ui-list-item :value="4" title="Gaia Zhou" slot="nested" inset>
        <ui-avatar src="/images/avatar5.jpg" slot="leftAvatar"/>
      </ui-list-item>
      <ui-list-item :value="5"  title="Miller Wang" slot="nested" inset>
        <ui-avatar src="/images/avatar6.jpg" slot="leftAvatar"/>
      </ui-list-item>
    </ui-list-item>
    <ui-list-item :value="6" title="Alex Qin" inset>
      <ui-avatar src="/images/avatar3.jpg" slot="leftAvatar"/>
    </ui-list-item>
    <ui-list-item :value="7" title="Allen Qun" inset>
      <ui-avatar src="/images/avatar4.jpg" slot="leftAvatar"/>
    </ui-list-item>
  </ui-list>
</mobile-tear-sheet>
</template>

<script>
import mobileTearSheet from '../../../components/mobileTearSheet'
export default {
  data () {
    return {
      value: 1
    }
  },
  methods: {
    handleChange (val) {
      this.value = val
    }
  },
  components: {
    'mobile-tear-sheet': mobileTearSheet
  }
}
</script>
