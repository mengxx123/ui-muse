<template>
<div class="mu-time-display">
  <div class="mu-time-display-text">
    <div class="mu-time-display-affix"></div>
    <div class="mu-time-display-time">
      <span class="mu-time-display-clickable" @click="handleSelectHour" :class="{'inactive': mode === 'minute'}">{{sanitizeTime[0]}}</span>
      <span>:</span>
      <span class="mu-time-display-clickable" @click="handleSelectMin" :class="{'inactive': mode === 'hour'}">{{sanitizeTime[1]}}</span>
    </div>
    <div class="mu-time-display-affix">
      <div v-if="format === 'ampm'" @click="handleSelectAffix('pm')"  class="mu-time-display-clickable" :class="{'inactive': affix === 'am'}">
        PM
      </div>
      <div v-if="format === 'ampm'" @click="handleSelectAffix('am')"  class="mu-time-display-clickable mu-time-display-affix-top" :class="{'inactive': affix === 'pm'}">
        AM
      </div>
    </div>
  </div>
</div>
</template>

<script>
export default {
  props: {
    affix: {
      type: String,
      default: '',
      validator (val) {
        return ['', 'pm', 'am'].indexOf(val) !== -1
      }
    },
    format: {
      type: String,
      validator (val) {
        return val && ['ampm', '24hr'].indexOf(val) !== -1
      }
    },
    mode: {
      type: String,
      default: 'hour',
      validator (val) {
        return ['hour', 'minute'].indexOf(val) !== -1
      }
    },
    selectedTime: {
      type: Date,
      default () {
        return new Date()
      },
      required: true
    }
  },
  methods: {
    handleSelectAffix (affix) {
      this.$emit('selectAffix', affix)
    },
    handleSelectHour () {
      this.$emit('selectHour')
    },
    handleSelectMin () {
      this.$emit('selectMin')
    }
  },
  computed: {
    sanitizeTime () {
      let hour = this.selectedTime.getHours()
      let min = this.selectedTime.getMinutes().toString()

      if (this.format === 'ampm') {
        hour %= 12
        hour = hour || 12
      }

      hour = hour.toString()
      if (hour.length < 2) hour = `0${hour}`
      if (min.length < 2) min = `0${min}`

      return [hour, min]
    }
  }
}
</script>
