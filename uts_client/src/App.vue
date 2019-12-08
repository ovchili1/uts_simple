<template>
  <div id="app">
    <Navbar />
    <router-view/>
  </div>
</template>

<style lang="scss">
</style>

<script>
import Navbar from '@/components/Navbar'
// @ is an alias to /src

export default {
  name: 'App',
  components: {
    Navbar
  }
}
</script>
