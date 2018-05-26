<template>
  <span>
    <a :href="href" v-if="href" :class="linkClass">
      <slot></slot>
    </a>
    <span v-else :class="currentClass">
      <slot></slot>
    </span>
    <span v-if="href" :class="separatorClass">
      {{this.separator}}
    </span>
  </span>
</template>
<script>
const cssPrefix = 'mu-breadcrumb-item'
export default {
  name: 'ui-breadcrumb-item',
  data () {
    return {
      separator: ''
    }
  },
  props: {
    href: {
      type: String,
      default: ''
    }
  },
  computed: {
    separatorClass () {
      return `${cssPrefix}-separator`
    },
    linkClass () {
      return `${cssPrefix}-link`
    },
    currentClass () {
      return `${cssPrefix}-current`
    }
  }
}
</script>
