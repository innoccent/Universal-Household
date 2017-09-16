<template>
  <div id="app">
    <img src="./assets/logo.png">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'app'
}
</script>

<style>
* {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  color: #333;
  background-color: #ececec;
  padding:0;
  margin:0;
  list-style: none;
  text-decoration: none;
  box-sizing: border-box;
}
</style>
