// Exemplo de requisições usando Axios

const axios = require('axios');
const API_URL = 'http://localhost:8081';

// GET
axios.get(`${API_URL}/produtos`)
  .then(res => console.log('GET produtos:', res.data));

// POST
axios.post(`${API_URL}/produtos`, {
  nome: 'Produto Teste',
  preco: 10.5,
  categoriaId: 1
})
  .then(res => console.log('POST produto:', res.data));

// PUT
axios.put(`${API_URL}/produtos/1`, {
  nome: 'Produto Atualizado',
  preco: 12.0,
  categoriaId: 1
})
  .then(res => console.log('PUT produto:', res.data));

// DELETE
axios.delete(`${API_URL}/produtos/1`)
  .then(res => console.log('DELETE produto:', res.status));
