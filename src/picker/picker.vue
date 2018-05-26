<template>
<div class="mu-picker">
  <picker-slot :divider="slot.divider" :content="slot.content"  :text-align="slot.textAlign" :width="slot.width" v-for="(slot, $index) in slots" :key="$index" @change="change($index, arguments)" :value="values[$index]" :values="slot.values" :visible-item-count="visibleItemCount"></picker-slot>
  <div class="mu-picker-center-highlight"></div>
</div>
</template>

<script>
import pickerSlot from './picker-slot'
export default {
  name: 'ui-picker',
  props: {
    visibleItemCount: {
      type: Number,
      default: 5
    },
    values: {
      type: Array,
      default () {
        return []
      }
    },
    slots: {
      type: Array,
      default () {
        return []
      }
    }
  },
  methods: {
    change (index, args) {
      this.$emit('change', args[0], index)
    }
  },
  components: {
    'picker-slot': pickerSlot
  }
}
</script>
