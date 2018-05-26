<template>
<transition name="mu-toast">
  <div class="mu-toast" v-clickoutside="clickOutSide" :style="{'z-index': zIndex}">
    {{message}}
  </div>
</transition>
</template>

<script>
import {getZIndex} from '../internal/popup/utils'
import clickoutside from '../internal/clickoutside'
export default {
  name: 'ui-toast',
  props: {
    message: {
      type: String
    }
  },
  methods: {
    clickOutSide () {
      this.$emit('close', 'clickOutSide')
    }
  },
  data () {
    return {
      zIndex: getZIndex()
    }
  },
  directives: {
    clickoutside
  }
}
</script>
