<template>
  <th class="mu-th" @mouseenter="showTooltip" @mouseleave="hideTooltip" @click="sort()" :id="thId">
    <div class="mu-th-wrapper" ref="wrapper">
      <slot></slot>
      <span v-if="sortable" class="mu-caret-wrapper">
         <i class="mu-arrow-down" :style="arrowDownStyle"></i>
         <i class="mu-arrow-up" :style="arrowUpStyle"></i>
      </span>
      <tooltip v-if="tooltip" :trigger="tooltipTrigger" :verticalPosition="verticalPosition" :horizontalPosition="horizontalPosition" :show="tooltipShown" :label="tooltip" :touch="touch"></tooltip>
    </div>
  </th>
</template>

<script>
import tooltip from '../tooltip'
let uuid = 0
export default {
  name: 'ui-th',
  props: {
    tooltip: {
      type: String
    },
    tooltipPosition: {
      type: String,
      default: 'bottom-right'
    },
    touch: {
      type: Boolean,
      default: false
    },
    sortable: {
      type: Boolean,
      default: false
    }
  },
  data () {
    return {
      tooltipShown: false,
      tooltipTrigger: null,
      isSorted: false,
      sortDir: null,
      thId: `mu-th-${uuid++}`
    }
  },
  mounted () {
    this.tooltipTrigger = this.$refs.wrapper
  },
  computed: {
    verticalPosition () {
      const tooltipPosition = this.tooltipPosition.split('-')
      return tooltipPosition[0]
    },
    horizontalPosition () {
      const tooltipPosition = this.tooltipPosition.split('-')
      return tooltipPosition[1]
    },
    arrowUpStyle () {
      if (this.isSorted && this.sortDir === 'asc') {
        return {
          borderBottom: '5px solid black',
          bottom: '18px'
        }
      } else if (this.sortDir === 'dsc') {
        return {
          display: 'none'
        }
      }
      return {
        borderBottom: '5px solid grey',
        top: '15px'
      }
    },
    arrowDownStyle () {
      if (this.isSorted && this.sortDir === 'dsc') {
        return {
          borderTop: '5px solid black',
          bottom: '18px'
        }
      } else if (this.sortDir === 'asc') {
        return {
          display: 'none'
        }
      }
      return {
        borderTop: '5px solid grey',
        bottom: '15px'
      }
    }
  },
  methods: {
    showTooltip () {
      this.tooltipShown = true
    },
    hideTooltip () {
      this.tooltipShown = false
    },
    sort () {
      if (this.sortable) {
        if (this.sortDir === null) {
          this.isSorted = true
          this.sortDir = 'asc'
        } else if (this.sortDir === 'asc') {
          this.isSorted = true
          this.sortDir = 'dsc'
        } else {
          this.isSorted = false
          this.sortDir = null
        }
        this.$parent.handleSort(document.getElementById(this.thId).cellIndex, this.sortDir)
      }
    }
  },
  components: {
    tooltip
  }
}
</script>

