<template>
  <div class="mu-text-field-hint" :class="{'show': show}">
    {{text}}
  </div>
</template>

<script>
export default {
  props: {
    text: {
      type: String
    },
    show: {
      type: Boolean,
      default: true
    }
  }
}
</script>
