<template>
  <span>
    <transition name="mu-dialog-slide" @after-enter="show()" @after-leave="hide()">
      <div class="mu-dialog-wrapper" @click="handleWrapperClick" v-if="open" ref="popup" :style="{'z-index': zIndex}">
        <div class="mu-dialog" ref="dialog" :class="dialogClass">
          <h3 class="mu-dialog-title" v-if="showTitle" ref="title" :class="headerClass">
            <slot name="title">
              {{title}}
            </slot>
          </h3>
          <div class="mu-dialog-body " :style="bodyStyle" :class="bodyClass" ref="elBody">
            <slot></slot>
          </div>
          <div class="mu-dialog-actions" v-if="showFooter" ref="footer" :class="footerClass">
            <slot name="actions"></slot>
          </div>
        </div>
      </div>
    </transition>
  </span>
</template>

<script>
import Popup from '../internal/popup'
import PopupManager from '../internal/popup/manager'
import {convertClass} from '../utils'
export default {
  mixins: [Popup],
  name: 'ui-dialog',
  props: {
    dialogClass: {
      type: [String, Array, Object]
    },
    title: {
      type: String
    },
    titleClass: {
      type: [String, Array, Object]
    },
    bodyClass: {
      type: [String, Array, Object]
    },
    actionsContainerClass: {
      type: [String, Array, Object]
    },
    scrollable: {
      type: Boolean,
      default: false
    }
  },
  computed: {
    bodyStyle () {
      return {
        'overflow-x': 'hidden',
        'overflow-y': this.scrollable ? 'auto' : 'hidden',
        '-webkit-overflow-scrolling': 'touch'
      }
    },
    showTitle () {
      return this.title || (this.$slots && this.$slots.title && this.$slots.title.length > 0)
    },
    showFooter () {
      return this.$slots && this.$slots.actions && this.$slots.actions.length > 0
    },
    headerClass () {
      const {scrollable} = this
      const classNames = []
      if (scrollable) classNames.push('scrollable')
      return classNames.concat(convertClass(this.titleClass))
    },
    footerClass () {
      const {scrollable} = this
      const classNames = []
      if (scrollable) classNames.push('scrollable')
      return classNames.concat(convertClass(this.actionsContainerClass))
    }
  },
  mounted () {
    this.setMaxDialogContentHeight()
  },
  updated () {
    this.$nextTick(() => {
      this.setMaxDialogContentHeight()
    })
  },
  methods: {
    handleWrapperClick (e) {
      const wrapperEl = this.$refs.popup
      if (wrapperEl === e.target) PopupManager.handleOverlayClick()
    },
    setMaxDialogContentHeight () {
      const dialogEl = this.$refs.dialog
      if (!dialogEl) return
      if (!this.scrollable) {
        dialogEl.style.maxHeight = ''
        return
      }

      let maxDialogContentHeight = window.innerHeight - 2 * 64
      const { footer, title, elBody } = this.$refs
      if (footer) maxDialogContentHeight -= footer.offsetHeight
      if (title) maxDialogContentHeight -= title.offsetHeight
      if (elBody) {
        let maxBodyHeight = maxDialogContentHeight
        if (footer) maxBodyHeight -= footer.offsetHeight
        if (title) maxBodyHeight -= title.offsetHeight
        elBody.style.maxHeight = maxBodyHeight + 'px'
      }
      dialogEl.style.maxHeight = maxDialogContentHeight + 'px'
    },
    show () {
      this.$emit('show')
    },
    hide () {
      this.$emit('hide')
    }
  },
  watch: {
    open (newValue) {
      if (!newValue) return
      this.$nextTick(() => {
        this.setMaxDialogContentHeight()
      })
    }
  }
}
</script>
