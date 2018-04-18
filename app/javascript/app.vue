<template>
  <div id="app">
    <p>{{ message }}</p>
    <p v-if="showFancyMessage">FancyMessage</p>
    <button @click="fancyStuff">Button</button>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!",
      showFancyMessage: false
    }
  },
  methods: {
    fancyStuff() {
      this.showFancyMessage = !this.showFancyMessage;
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
