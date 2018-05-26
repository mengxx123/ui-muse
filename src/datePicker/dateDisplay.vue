<template>
<div class="mu-date-display" :class="displayClass">
  <div class="mu-date-display-year" :class="{'disabled': disableYearSelection}" @click="handleSelectYear">
    <transition :name="'mu-date-display-' +  slideType" v-for="displayDate, index in displayDates" :key="index">
      <div class="mu-date-display-slideIn-wrapper" :key="displayDate.getFullYear()">
        <div class="mu-date-display-year-title">
          {{displayDate.getFullYear()}}
        </div>
      </div>
    </transition>
  </div>
  <div class="mu-date-display-monthday" @click="handleSelectMonth">
    <transition :name="'mu-date-display-' +  slideType" v-for="displayDate, index in displayDates" :key="index">
      <div class="mu-date-display-slideIn-wrapper" :key="dateTimeFormat.formatDisplay(displayDate)" >
        <div class="mu-date-display-monthday-title">
          {{dateTimeFormat.formatDisplay(displayDate)}}
        </div>
      </div>
    </transition>
  </div>
</div>
</template>

<script>
export default {
  props: {
    dateTimeFormat: {
      type: Object
    },
    disableYearSelection: {
      type: Boolean,
      default: false
    },
    monthDaySelected: {
      type: Boolean,
      default: true
    },
    selectedDate: {
      type: Date
    }
  },
  data () {
    return {
      displayDates: [this.selectedDate],
      slideType: 'next'
    }
  },
  computed: {
    selectedYear () {
      return !this.monthDaySelected
    },
    displayClass () {
      return {
        'selected-year': this.selectedYear
      }
    }
  },
  methods: {
    replaceSelected (date) {
      let oldDate = this.displayDates[0]
      this.slideType = date.getTime() > oldDate.getTime() ? 'next' : 'prev'
      this.displayDates.push(date)
      this.displayDates.splice(0, 1)
    },
    handleSelectYear () {
      if (!this.disableYearSelection) this.$emit('selectYear')
    },
    handleSelectMonth () {
      this.$emit('selectMonth')
    }
  },
  watch: {
    selectedDate (val) {
      this.replaceSelected(val)
    }
  }
}
</script>
