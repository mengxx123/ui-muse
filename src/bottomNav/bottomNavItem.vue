<template>
  <abstract-button :href="href" :to="to" :tag="tag" :activeClass="activeClass"
    :event="event" :exact="exact" :append="append" :replace="replace"
    :disableTouchRipple="shift" class="mu-buttom-item" :class="{'mu-bottom-item-active': active}"
    :center-ripple="false" wrapperClass="mu-buttom-item-wrapper" @click.native="handleClick">
    <icon v-if="icon" class="mu-bottom-item-icon" :class="iconClass" :value="icon"></icon>
    <slot></slot>
    <span v-if="title" class="mu-bottom-item-text" :class="titleClass">{{title}}</span>
  </abstract-button>
</template>

<script>
import abstractButton from '../internal/abstractButton'
import routerMixin from '../internal/routerMixin'
import icon from '../icon'
import {isNotNull} from '../utils'
export default {
  name: 'ui-bottom-nav-item',
  mixins: [routerMixin],
  props: {
    icon: {
      type: String,
      default: ''
    },
    iconClass: {
      type: [String, Object, Array]
    },
    title: {
      type: String,
      default: ''
    },
    titleClass: {
      type: [String, Object, Array]
    },
    href: {
      type: String
    },
    value: {}
  },
  data () {
    return {
      bottomNav: null
    }
  },
  created () {
    this.isBottomNavItem = true
  },
  computed: {
    active () {
      return this.bottomNav && isNotNull(this.value) && this.bottomNav.value === this.value
    },
    shift () {
      return this.bottomNav && this.bottomNav.shift
    }
  },
  methods: {
    handleClick () {
      if (this.bottomNav && this.bottomNav.handleItemClick) this.bottomNav.handleItemClick(this.value)
    }
  },
  mounted () {
    let children = this.$parent.$children
    for (let i = 0; i < children.length; i++) {
      if (children[i].$el === this.$el) {
        this.index = i
        break
      }
    }
  },
  components: {
    'abstract-button': abstractButton,
    icon
  }
}
</script>

