<template>
  <div class="state-list">
    <div class="panel-left">
      <h3>State List</h3>
      <ul class="list-group">
        <li v-for="state in states" :key="state.id" 
            :class="{ 'list-group-item': true, 'selected': state.id === selectedStateId }"
            >
          {{ state.name }}
        </li>
      </ul>
    </div>
    <div class="panel-right">
      <h3>State List (Right Panel)</h3>
      <ul class="list-group">
        <li v-for="state in filteredStates" :key="state.id" 
            :class="{ 'list-group-item': true, 'selected': state.id === selectedStateId }"
            @click="handleSingleClick(state)" @dblclick="handleDoubleClick(state)">
          {{ state.name }}
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: 'StateList',
  props: {
    states: Array,
    filteredStates: Array,
    selectedStateId: Number
  },
  methods: {
    handleSingleClick(state) {      
      this.$emit('single-click', state); 
    },    
    handleDoubleClick(state) {      
      this.$emit('double-click', state);        
    }
  }
};
</script>

<style scoped>
.state-list {
  display: flex;
  justify-content: center;
}

.panel-left, .panel-right {
  flex: 1;
  padding: 10px;
  overflow-y: auto; /* Enable vertical scrolling */
  max-height: calc(100vh - 100px); /* Limit the height of the panel */
  max-width: 400px;
}

h3 {
  font-size: 1.2em;
  margin-bottom: 10px;
}

.list-group {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.list-group-item {
  cursor: pointer;
  padding: 10px;
  margin-bottom: 5px;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

.list-group-item:hover {
  background-color: #d6d0d0; /* Light gray background on hover */
}

.list-group-item.active {
  background-color: #8b8787;
  color: white;
}

.list-group-item.hovered {
  background-color: #e9ecef;
}

.selected {
  background-color: #d6d0d0; /* Blue background for selected row */  
}
</style>
