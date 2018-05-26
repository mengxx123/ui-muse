<template>
  <div class="mu-avatar" @click="handleClick" :style="avatarStyle">
    <div class="mu-avatar-inner">
      <icon v-if="icon" :value="icon" :size="iconSize" :class="iconClass"></icon>
      <img :src="src" v-if="src" :class="imgClass" />
      <slot></slot>
    </div>
  </div>
</template>

<script>
import icon from '../icon'
import {getColor} from '../utils'
export default {
  name: 'ui-avatar',
  props: {
    backgroundColor: {
      type: String,
      default: ''
    },
    color: {
      type: String,
      default: ''
    },
    icon: {
      type: String,
      default: ''
    },
    iconClass: {
      type: [String, Object, Array]
    },
    src: {
      type: String,
      default: ''
    },
    imgClass: {
      type: [String, Object, Array]
    },
    size: {
      type: Number
    },
    iconSize: {
      type: Number
    }
  },
  computed: {
    avatarStyle () {
      return {
        width: this.size ? this.size + 'px' : '',
        height: this.size ? this.size + 'px' : '',
        color: getColor(this.color),
        'background-color': getColor(this.backgroundColor)
      }
    }
  },
  methods: {
    handleClick () {
      this.$emit('click')
    }
  },
  created () {
    this._isAvatar = true
  },
  components: {
    icon
  }
}
</script>
