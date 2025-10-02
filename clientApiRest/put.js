// PUT usando Fetch
// fetch('http://localhost:8081/api/produtos/1', {
//   method: 'PUT',
//   headers: { 'Content-Type': 'application/json' },
//   body: JSON.stringify({ nome: 'Produto Atualizado', preco: 12.0, categoriaId: 1 })
// })
//   .then(res => res.json())
//   .then(data => console.log('PUT produto (fetch):', data));

// PUT usando Axios
const axios = require('axios');
axios.put('http://localhost:8081/api/produtos/60', {
  nome: 'Produto Atualizado',
  preco: 12.0,
  categoriaId: 1
})
  .then(res => console.log('PUT produto (axios):', res.data));
