<script>
import {isPc} from '../utils'
export default {
  props: {
    selected: {
      type: Boolean,
      default: false
    },
    date: {
      type: Date
    },
    disabled: {
      type: Boolean,
      default: false
    }
  },
  data () {
    return {
      hover: false
    }
  },
  computed: {
    isNow () {
      const now = new Date()
      return this.date && this.date.getYear() === now.getYear() && this.date.getMonth() === now.getMonth() && this.date.getDate() === now.getDate()
    },
    dayButtonClass () {
      return {
        selected: this.selected,
        hover: this.hover,
        'mu-day-button': true,
        disabled: this.disabled,
        now: this.isNow
      }
    }
  },
  methods: {
    handleHover () {
      if (isPc() && !this.disabled) this.hover = true
    },
    handleHoverExit () {
      this.hover = false
    },
    handleClick (event) {
      this.$emit('click', event)
    }
  },
  render (h) {
    return this.date ? h('button', {
      class: this.dayButtonClass,
      on: {
        mouseenter: this.handleHover,
        mouseleave: this.handleHoverExit,
        click: this.handleClick
      },
      domProps: {
        disabled: this.disabled
      }
    }, [
      h('div', {class: 'mu-day-button-bg'}),
      h('span', {
        class: 'mu-day-button-text',
        domProps: {
          innerHTML: this.date.getDate()
        }
      })
    ]) : h('span', {class: 'mu-day-empty'})
  }
}
</script>
