<template>
    <div class="filter-box">
      <div class="input-group">
        <input type="text" class="form-control" v-model="filterText" @input="handleFilterChange" placeholder="Filter...">
        <div class="input-group-append">
          <span class="input-group-text"><i class="bi bi-search"></i></span>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: 'FilterBox',
    data() {
      return {
        filterText: ''
      };
    },
    methods: {
      handleFilterChange() {
        this.$emit('filter-change', this.filterText);
      }
    }
  };
  </script>
  
  <style scoped>
  
  .filter-box {
    position: fixed;
    top: 20px; /* Adjust the distance from the top */
    right: 20px; /* Adjust the distance from the right */
    z-index: 999; /* Ensure that the filter box is at the top */
    width: 250px; /* Custom width for the filter box */
  }
  
  /* custom for filter box */
  .input-group {
    width: 100%;
  }
  
  /* search icon */
  .input-group-text {
    cursor: pointer;
  }
  </style>
  