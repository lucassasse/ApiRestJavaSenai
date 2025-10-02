// GET usando Fetch
// fetch('http://localhost:8081/api/produtos')
//   .then(res => res.json())
//   .then(data => console.log('GET produtos (fetch):', data));

// GET usando Axios
const axios = require('axios');
axios.get('http://localhost:8081/api/produtos')
  .then(res => console.log('GET produtos (axios):', res.data));
