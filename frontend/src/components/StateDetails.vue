<template>
    <div class="state-details-container">
      <div class="card">
        <div class="card-body">
          <div v-if="selectedState">
            <h5 class="card-header bg-primary text-white">{{ selectedState.name }}</h5>
            <div class="info-item">
              <strong>Overall Population:</strong>
              <span>{{ selectedState.population }}</span>
            </div>
            <div class="info-item">
              <strong>Number of Counties:</strong>
              <span>{{ selectedState.counties }}</span>
            </div>
            <ul class="list-group">
              <li v-for="county in stateDetails" :key="county.id" class="list-group-item d-flex justify-content-between align-items-center">
                <span>{{ county.name }}</span>
                <span class="badge bg-info">{{ county.population }}</span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center">
                <strong>Total Population: </strong>
                <span class="badge bg-info">{{ totalPopulation }}</span>
              </li>
            </ul>
            <br>
            <p v-if="selectedState" class="record-status">
              {{ isCountySumEqual ? 'Sum of County Populations Matches State Record' : 'Sum of County Populations Does Not Match State Record' }}
            </p>
          </div>
          <div v-else>
            <p class="no-state-selected">Select a state to view details</p>
          </div>
        </div>
      </div>
    </div>
</template>
  
<script>
export default {
    name: 'StateDetails',
    props: {
      selectedState: null
    },
    data() {
      return {
        stateDetails: [] // State details
      };
    },
    computed: {
      isCountySumEqual() {
      if (!this.selectedState ) {
        return false;
      }
      const sumOfCountyPopulations = this.stateDetails.reduce((total, county) => total + county.population, 0);
      console.log("sumOfCountyPopulations " + sumOfCountyPopulations)
      return sumOfCountyPopulations === this.selectedState.population;
    },
    totalPopulation() {
      if (!this.stateDetails) return 0;

      return this.stateDetails.reduce((total, county) => total + county.population, 0);
    }
  },
  created() {    
    this.fetchStateDetails(); // Call fetchStateDetails when the component is created
  },
  watch: {
      selectedState: {
          immediate: true,
          handler() {
              this.fetchStateDetails(); // No newVal is passed as an argument
          }
      }
  },
methods: {
    async fetchStateDetails() { 
        const newVal = this.selectedState.id;
        console.log("newVal " + newVal)
        if (newVal !== null) {
            try {
                const response = await fetch(process.env.VUE_APP_API_URL+`/api/states/${newVal}`);
                if (!response.ok) {
                    throw new Error('Failed to fetch state details');
                }
                this.stateDetails = await response.json();
            } catch (error) {
                console.error(error);
            }
        } else {
            this.stateDetails = null;
        }
    }
}

  };
  </script>
  
  
  <style scoped>
  
  .state-details-container {
    display: flex;
    justify-content: center;
    align-items: flex-start;
    height: 100vh;
    margin-top: 50px;
  }
  
  .card {
    max-width: 500px;
    border: none;
    border-radius: 10px;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
  }
  
  .card-header {
    border-radius: 10px 10px 0 0;
  }
  
  .list-group {
    margin-top: 20px;
  }
  
  .list-group-item {
    border: none;
  }
  
  .bg-primary {
    background-color: #007bff !important;
  }
  
  .text-primary {
    color: #007bff !important;
  }
  
  .bg-info {
    background-color: #17a2b8 !important;
  }
  
  .text-success {
    color: #28a745 !important;
  }
  
  .text-danger {
    color: #dc3545 !important;
  }
  </style>
  