<!-- Utilizing the tailwind CSS framework for styling/responsiveness -->
<template>
  <div class="flex flex-col items-center justify-center min-h-screen bg-gray-100 dark:bg-gray-800">
    <div class="w-full max-w-md p-4 bg-white rounded shadow-md dark:bg-gray-700">
      <h2 class="text-2xl font-bold mb-3 text-gray-800 dark:text-gray-100">The Giga Latemans Todo List</h2>
      
      <button class="px-4 py-2 text-white bg-black rounded hover:bg-white hover:text-black" @click="toggleDarkMode">Dark Mode</button>
      
      <div class="mb-4">
        <input class="w-full p-2 border rounded shadow-inner" v-model="newTask" @keyup.enter="addTask" placeholder="Add a new task" />
      </div>
      <ul>
        <li v-for="(task, index) in tasks" :key="index" class="flex justify-between items-center p-2 mb-2 bg-gray-200 rounded shadow dark:bg-gray-600">
          {{ task }}
          <button class="px-4 py-2 text-white bg-red-500 rounded hover:bg-red-700" @click="deleteTask(index)">Delete</button>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  // Instantiate the data for storing and amending tasks
  data() {
    return {
      newTask: '',
      // Set default excuse for being late
      tasks: [
        'This assignment is late because of cats (not really but im blaming them anyway)',
      ],
      darkMode: false,
    };
  },
  // Define methods for interacting with the application
  // ie, add and delete given tasks
  methods: {
    addTask() {
      // Sanitize empty entries from being submitted
      if (this.newTask.trim() !== '') {
        this.tasks.push(this.newTask);
        this.newTask = '';
      }
    },
    // Delete THIS 
    deleteTask(index) {
      this.tasks.splice(index, 1);
    },
    toggleDarkMode() {
      this.darkMode = !this.darkMode;
      if (this.darkMode) {
        document.documentElement.classList.add('dark');
      } else {
        document.documentElement.classList.remove('dark');
      }
    },
  }
};
</script>
