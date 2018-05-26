<template>
  <ui-pagination :total="total" :current="current" @pageChange="handleClick">
  </ui-pagination>
</template>

<script>
export default{
  data () {
    return {
      total: 50,
      current: 1
    }
  },
  methods: {
    handleClick (newIndex) {
    }
  }
}
</script>
