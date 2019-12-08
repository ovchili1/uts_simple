<template>
  <b-navbar toggleable="lg" type="dark" class="nav">
    <b-navbar-brand to="/">NavBar</b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav>
        <b-nav-item to="/about">About</b-nav-item>
      </b-navbar-nav>

      <b-navbar-nav class="ml-auto">
         <b-nav-item to="/signin">
          Sign in
        </b-nav-item>
        <b-nav-item to="/signup">
          Sign up
        </b-nav-item>
      </b-navbar-nav>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <b-nav-item-dropdown right>
          <!-- Using 'button-content' slot -->
          <template v-slot:button-content>
            User
          </template>
          <b-dropdown-item to="/profile">Profile</b-dropdown-item>
          <b-dropdown-item @click.prevent="signout">Sign Out</b-dropdown-item>
        </b-nav-item-dropdown>
      </b-navbar-nav>
    </b-collapse>
  </b-navbar>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'Navbar',
  data: function () {
    return {
      currentUser: ''
    }
  },
  methods: {
    signout () {
      this.currentUser = []
      alert('You are sign out')
    }
  }
}
</script>

<style scope>
.nav{
  background:#3D5AFE;
}
</style>
