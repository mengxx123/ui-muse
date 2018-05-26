<template>
<span class="mu-step-label" :class="{'active': active, 'completed': completed, 'disabled': disabled}">
  <span class="mu-step-label-icon-container" v-if="num || ($slots.icon && $slots.length > 0)">
    <slot name="icon">
      <svg v-if="completed" class="mu-step-label-icon" viewBox="0 0 24 24">
        <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
      </svg>
      <div v-if="!completed" class="mu-step-label-circle">
        {{num}}
      </div>
    </slot>
  </span>
  <slot></slot>
</span>
</template>

<script>
export default {
  name: 'ui-step-label',
  props: {
    active: {
      type: Boolean
    },
    completed: {
      type: Boolean
    },
    disabled: {
      type: Boolean
    },
    num: {
      type: [String, Number]
    }
  }
}
</script>
