# API REST - Gerenciamento de Produtos e Categorias

Desenvolvimento de API REST, como Estudo de Caso para Vaga de Especialista de Ensiono no SENAI-SC.
Aplicação desenvolvido em Java com Spring Boot, para gerenciamento de produtos e suas respectivas categorias, assemelhando-se a um "sistema de estoque" simples.
Utilização de dados mokados.

## Tecnologias Utilizadas

- Java 21
- Spring Boot 3.5.6
- Spring Data JPA
- Banco H2 (em memória) - Não utilizado anteriormente (utilizei de IA para auxiliar a estruturar esta parte)
- Lombok - Biblioteca de recursos java, para simplificação de código
- Maven - Gerenciador de pacotes
- Extra: IA (ChatGPT) para auxílio para utilização do Banco H2, assim como a respectiva criação dos dados mokados

## Para Executar

1. Clone o repositório
2. cd ./apiRest
3. Execute o comando: `.\mvnw.cmd spring-boot:run` (usa o Maven incluído no projeto)
   - Alternativa: `mvn spring-boot:run` (apenas se tiver Maven instalado globalmente)
4. A aplicação estará disponível em: `http://localhost:8080/api/...`
5. Console do H2: `http://localhost:8080/h2-console`
   - URL: `jdbc:h2:mem:testdb`
   - Usuário: `sa`
   - Senha: (deixar em branco)

## Endpoints da API (Solicitei para a IA criar uma lista para facilitar e agilizar as instruções)

Pode-se utilizar o navegador para acessar as endpois de consulta e delete.
Para criação e artrualização de dados, utilizar de ferramentas como o Postman ou Insomnia.

### Categorias
- **GET** `http://localhost:8080/api/categorias` - Listar todas as categorias
- **GET** `http://localhost:8080/api/categorias/{id}` - Buscar categoria por ID
- **POST** `http://localhost:8080/api/categorias` - Criar nova categoria
- **PUT** `http://localhost:8080/api/categorias/{id}` - Atualizar categoria
- **DELETE** `http://localhost:8080/api/categorias/{id}` - Excluir categoria

### Produtos
- **GET** `http://localhost:8080/api/produtos` - Listar todos os produtos
- **GET** `http://localhost:8080/api/produtos/{id}` - Buscar produto por ID
- **GET** `http://localhost:8080/api/produtos/categoria/{categoriaId}` - Produtos por categoria
- **POST** `http://localhost:8080/api/produtos` - Criar novo produto
- **PUT** `http://localhost:8080/api/produtos/{id}` - Atualizar produto
- **DELETE** `http://localhost:8080/api/produtos/{id}` - Excluir produto

#### Exemplo de teste rápido:
```bash
# Listar categorias
curl http://localhost:8080/api/categorias

# Criar categoria
curl -X POST http://localhost:8080/api/categorias -H "Content-Type: application/json" -d "{\"nome\":\"Eletrônicos\",\"descricao\":\"Produtos eletrônicos\"}"
```

## Dados Iniciais (Gerados por IA)
## Dados mokados, pois o projeto utiliza "Banco H2"
## Por serem dados mokados, estes são "reiniciados" a cada nova execução da aplicação

A aplicação já vem com categorias e produtos pré-cadastrados para testes.
Dados gerados automaticamente por questões praticas e pelo tempo reduzido para realização do projeto.
Os dados podem ser encontrados em ./src/main/resources/data.sql