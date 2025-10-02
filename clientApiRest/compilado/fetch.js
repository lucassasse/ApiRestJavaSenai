// Exemplo de requisições usando Fetch

const API_URL = 'http://localhost:8081';

// GET
fetch(`${API_URL}/produtos`)
  .then(res => res.json())
  .then(data => console.log('GET produtos:', data));

// POST
fetch(`${API_URL}/produtos`, {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify(
    { 
        nome: 'Produto Teste', 
        preco: 10.5, 
        categoriaId: 1 
    }
)
})
  .then(res => res.json())
  .then(data => console.log('POST produto:', data));

// PUT
fetch(`${API_URL}/produtos/1`, {
  method: 'PUT',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify(
    { 
        nome: 'Produto Atualizado', 
        preco: 12.0, 
        categoriaId: 1 
    })
})
  .then(res => res.json())
  .then(data => console.log('PUT produto:', data));

// DELETE
fetch(`${API_URL}/produtos/1`, {
  method: 'DELETE'
})
  .then(res => console.log('DELETE produto:', res.status));
