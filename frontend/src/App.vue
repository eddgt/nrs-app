<template>
  <div id="app">
    <FilterBox @filter-change="handleFilterChange" />
    <StateList :states="states" :filteredStates="filteredStates" :selectedStateId="selectedStateId" @double-click="handleDoubleClick" @single-click="handleSingleClick" />
    <StateDetails v-if="selectedState" :selectedState="selectedState" />
  </div>
</template>

<script>
import 'bootstrap-icons/font/bootstrap-icons.css';
import 'bootstrap/dist/css/bootstrap.css';
import StateList from './components/StateList.vue';
import StateDetails from './components/StateDetails.vue';
import FilterBox from './components/FilterBox.vue';
import axios from 'axios';

export default {
  name: 'App',
  components: {
    StateList,
    StateDetails,
    FilterBox
  },
  data() {
    return {
      states: [],
      selectedState: null,
      selectedStateId: null, 
      filterText: ''
    };
  },
  mounted() {
    this.fetchStates();
  },
  methods: {
    async fetchStates() {
      try {
        const response = await axios.get(process.env.VUE_APP_API_URL+'/api/states');
        this.states = response.data;
      } catch (error) {
        console.error('Error fetching states:', error);
      }
    },
    handleSingleClick(state) { 
      this.selectedStateId = state.id;
      this.selectedState = state; 
    },
    handleDoubleClick(state) {
      this.selectedState = state; 
    },
    handleFilterChange(filterText) {
      this.filterText = filterText.toLowerCase(); 
    }
  },
  computed: {
    filteredStates() {      
      return this.states.filter(state =>
        state.name.toLowerCase().includes(this.filterText)
      );
    }
  }
};
</script>


<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

body {
  background-color: rgb(246, 251, 252);
}
</style>
