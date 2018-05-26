<template>
  <ui-paper style="max-width: 376px; ">
    <ui-bottom-nav :value="bottomNav" shift @change="handleChange">
      <ui-bottom-nav-item value="movies" title="Movies" icon="ondemand_video"/>
      <ui-bottom-nav-item value="music" title="Music" icon="music_note"/>
      <ui-bottom-nav-item value="books" title="Books" icon="books"/>
      <ui-bottom-nav-item value="pictures" title="Pictures" icon="photo"/>
    </ui-bottom-nav>
  </ui-paper>

</template>

<script>
export default {
  data () {
    return {
      bottomNav: 'movies',
      bottomNavColor: 'movies'
    }
  },
  methods: {
    handleChange (val) {
      this.bottomNav = val
    }
  }
}
</script>
