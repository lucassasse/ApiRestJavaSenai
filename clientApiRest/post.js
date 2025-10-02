// POST usando Fetch
// fetch('http://localhost:8081/api/produtos', {
//   method: 'POST',
//   headers: { 'Content-Type': 'application/json' },
//   body: JSON.stringify({ nome: 'Produto Teste', preco: 10.5, categoriaId: 1 })
// })
//   .then(res => res.json())
//   .then(data => console.log('POST produto (fetch):', data));

// POST usando Axios
const axios = require('axios');
axios.post('http://localhost:8081/api/produtos', {
  nome: 'Produto Teste',
  preco: 10.5,
  categoriaId: 2
})
  .then(res => console.log('POST produto (axios):', res.data));
