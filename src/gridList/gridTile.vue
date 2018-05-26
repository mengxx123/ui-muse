<template>
<div :style="style">
  <div class="mu-grid-tile" :class="tileClass">
    <slot></slot>
    <div class="mu-grid-tile-titlebar" :class="titleBarClass">
      <div class="mu-grid-tile-title-container">
        <div class="mu-grid-tile-title">
          <slot name="title">
            {{title}}
          </slot>
        </div>
        <div class="mu-grid-tile-subtitle">
          <slot name="subTitle">
            {{subTitle}}
          </slot>
        </div>
      </div>
      <div class="mu-grid-tile-action">
        <slot name="action"></slot>
      </div>
    </div>
  </div>
</div>
</template>

<script>
export default {
  name: 'ui-grid-tile',
  props: {
    actionPosition: {
      type: String,
      default: 'right',
      validator (val) {
        return ['left', 'right'].indexOf(val) !== -1
      }
    },
    cols: {
      type: Number,
      default: 1
    },
    rows: {
      type: Number,
      default: 1
    },
    title: {
      type: String
    },
    subTitle: {
      type: String
    },
    titlePosition: {
      type: String,
      default: 'bottom',
      validator (val) {
        return ['top', 'bottom'].indexOf(val) !== -1
      }
    },
    titleBarClass: {
      type: [String, Array, Object]
    }
  },
  computed: {
    tileClass () {
      let classArr = []
      if (this.titlePosition === 'top') classArr.push('top')
      if (this.actionPosition === 'left') classArr.push('action-left')
      if (this.$slots && this.$slots.title && this.$slots.subTitle &&
        this.$slots.title.length > 0 && this.$slots.subTitle.length > 0) {
        classArr.push('multiline')
      }
      return classArr
    },
    style () {
      return {
        width: (this.cols / this.$parent.cols * 100) + '%',
        padding: (this.$parent.padding / 2) + 'px',
        height: (this.$parent.cellHeight * this.rows) + 'px'
      }
    }
  }
}
</script>
