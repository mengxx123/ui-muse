<template>
  <div class="mu-step-content"  :class="{'last': last}">
    <div style="position: relative; overflow: hidden; height: 100%;">
      <expand-transition>
        <div class="mu-step-content-inner" ref="inner" v-if="active">
          <slot></slot>
        </div>
      </expand-transition>
    </div>
</div>
</template>

<script>
import expandTransition from '../internal/expandTransition'
export default {
  name: 'ui-step-content',
  props: {
    active: {
      type: Boolean
    },
    last: {
      type: Boolean
    }
  },
  components: {
    'expand-transition': expandTransition
  }
}
</script>
