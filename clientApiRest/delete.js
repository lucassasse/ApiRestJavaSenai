// DELETE usando Fetch
// fetch('http://localhost:8081/api/produtos/1', {
//   method: 'DELETE'
// })
//   .then(res => console.log('DELETE produto (fetch):', res.status));

// DELETE usando Axios
const axios = require('axios');
axios.delete('http://localhost:8081/api/produtos/60')
  .then(res => console.log('DELETE produto (axios):', res.status));
