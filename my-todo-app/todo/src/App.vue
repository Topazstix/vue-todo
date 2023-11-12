<template>
  <div id="app">
    <TodoList />
    <button @click="toggleDarkMode">Dark Mode</button>
  </div>
</template>

<script>
import TodoList from './components/TodoList.vue';

export default {
  name: 'App',
  components: {
    TodoList
  },
  // Darkmode toggle and state
  data() {
    return {
      darkMode: false,
    };
  },
  // Set methods for darkmode
  methods: {
    toggleDarkMode() {
      this.darkMode = !this.darkMode;
      if (this.darkMode) {
        document.documentElement.classList.add('dark');
      } else {
        document.documentElement.classList.remove('dark');
      }
    },
  },
};
</script>