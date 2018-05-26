<template>
<transition name="mu-snackbar">
  <div class="mu-snackbar" v-clickoutside="clickOutSide" :style="{'z-index': zIndex}">
    <div class="mu-snackbar-message">
      {{message}}
    </div>
    <flat-button v-if="action" @click="handleActionClick" class="mu-snackbar-action" :color="actionColor"  rippleColor="#FFF" :rippleOpacity="0.3" secondary :label="action"/>
  </div>
</transition>
</template>

<script>
import flatButton from '../flatButton'
import {getZIndex} from '../internal/popup/utils'
import clickoutside from '../internal/clickoutside'
export default {
  name: 'ui-snackbar',
  props: {
    action: {
      type: String
    },
    actionColor: {
      type: String
    },
    message: {
      type: String
    }
  },
  data () {
    return {
      zIndex: getZIndex()
    }
  },
  methods: {
    clickOutSide () {
      this.$emit('close', 'clickOutSide')
    },
    handleActionClick () {
      this.$emit('actionClick')
      this.$emit('action-click')
    }
  },
  components: {
    'flat-button': flatButton
  },
  directives: {
    clickoutside
  }
}
</script>
