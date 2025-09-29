-- =====================================================
-- DADOS INICIAIS PARA TESTE DA API REST
-- =====================================================

-- Inserindo categorias
INSERT INTO categorias (nome, descricao) VALUES ('Eletrônicos', 'Produtos eletrônicos e tecnologia');
INSERT INTO categorias (nome, descricao) VALUES ('Roupas', 'Vestuário e acessórios de moda');
INSERT INTO categorias (nome, descricao) VALUES ('Casa e Jardim', 'Produtos para casa e decoração');
INSERT INTO categorias (nome, descricao) VALUES ('Livros', 'Livros e material de leitura');
INSERT INTO categorias (nome, descricao) VALUES ('Esportes', 'Equipamentos esportivos e fitness');
INSERT INTO categorias (nome, descricao) VALUES ('Alimentação', 'Produtos alimentícios e bebidas');
INSERT INTO categorias (nome, descricao) VALUES ('Beleza', 'Cosméticos e produtos de beleza');
INSERT INTO categorias (nome, descricao) VALUES ('Automóveis', 'Peças e acessórios automotivos');
INSERT INTO categorias (nome, descricao) VALUES ('Brinquedos', 'Brinquedos e jogos infantis');
INSERT INTO categorias (nome, descricao) VALUES ('Música', 'Instrumentos musicais e áudio');

-- =====================================================
-- PRODUTOS CATEGORIA: ELETRÔNICOS (ID: 1)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Smartphone Samsung Galaxy S24', 'Smartphone com 256GB, câmera 108MP, 5G', 2899.99, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('iPhone 15 Pro Max', 'iPhone com 512GB, chip A17 Pro, câmera tripla', 8999.00, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Notebook Dell Inspiron 15', 'Notebook Intel i7, 16GB RAM, SSD 512GB', 3500.00, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('MacBook Air M2', 'MacBook com chip M2, 8GB RAM, SSD 256GB', 7999.00, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Smart TV Samsung 55"', 'Smart TV 4K UHD, 55 polegadas, Tizen OS', 2299.99, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Tablet iPad 10ª Geração', 'iPad com tela 10.9", chip A14 Bionic', 2499.00, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Fone JBL Tune 760NC', 'Fone bluetooth com cancelamento de ruído', 299.99, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Echo Dot 5ª Geração', 'Smart speaker Alexa com som premium', 349.00, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Carregador Portátil 20000mAh', 'Power bank com carregamento rápido', 159.90, NOW(), 1);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Webcam Logitech C920', 'Webcam Full HD 1080p para streaming', 449.99, NOW(), 1);

-- =====================================================
-- PRODUTOS CATEGORIA: ROUPAS (ID: 2)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Camiseta Polo Lacoste', 'Camiseta polo masculina azul marinho', 289.90, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Jeans Skinny Feminino', 'Calça jeans skinny stretch azul escuro', 159.99, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Vestido Floral Verão', 'Vestido midi floral para verão', 199.90, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Blazer Social Masculino', 'Blazer slim fit preto social', 399.00, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Tênis Nike Air Force', 'Tênis Nike Air Force 1 branco', 699.99, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Camisa Social Branca', 'Camisa social masculina branca algodão', 129.90, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Saia Plissada Midi', 'Saia plissada midi em crepe', 149.90, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Moletom com Capuz', 'Moletom unissex com capuz cinza', 119.90, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Bota Coturno Feminina', 'Bota coturno preta de couro', 249.99, NOW(), 2);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Shorts Jeans Destroyed', 'Shorts jeans destroyed feminino', 89.90, NOW(), 2);

-- =====================================================
-- PRODUTOS CATEGORIA: CASA E JARDIM (ID: 3)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Mesa de Centro Madeira', 'Mesa de centro em madeira maciça 1,20m', 599.00, NOW(), 3);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Sofá 3 Lugares Cinza', 'Sofá retrátil e reclinável cinza', 1899.99, NOW(), 3);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Jogo de Panelas Inox', 'Conjunto 5 peças panelas inox', 299.90, NOW(), 3);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Luminária de Chão LED', 'Luminária de chão LED regulável', 189.90, NOW(), 3);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Vaso Decorativo Grande', 'Vaso decorativo cerâmica 60cm', 149.90, NOW(), 3);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Cortina Blackout Sala', 'Cortina blackout para sala 2,80x1,80m', 199.99, NOW(), 3);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Conjunto Jogo Americano', 'Jogo americano 6 peças com guardanapos', 79.90, NOW(), 3);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Tapete Sala 2x1,5m', 'Tapete para sala estampa geométrica', 259.90, NOW(), 3);

-- =====================================================
-- PRODUTOS CATEGORIA: LIVROS (ID: 4)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('O Pequeno Príncipe', 'Clássico da literatura mundial', 29.90, NOW(), 4);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Clean Code', 'Livro sobre código limpo - Robert Martin', 89.90, NOW(), 4);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Dom Casmurro', 'Romance de Machado de Assis', 24.90, NOW(), 4);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Java: Como Programar', 'Livro completo sobre programação Java', 159.90, NOW(), 4);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('1984 - George Orwell', 'Distopia clássica de George Orwell', 34.90, NOW(), 4);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Algoritmos e Estruturas de Dados', 'Livro técnico de algoritmos', 119.90, NOW(), 4);

-- =====================================================
-- PRODUTOS CATEGORIA: ESPORTES (ID: 5)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Bola de Futebol Nike', 'Bola oficial Nike tamanho padrão', 129.90, NOW(), 5);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Halteres 10kg Par', 'Par de halteres emborrachados 10kg', 199.99, NOW(), 5);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Esteira Ergométrica', 'Esteira elétrica dobrável 110v', 1299.00, NOW(), 5);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Raquete de Tênis Wilson', 'Raquete profissional Wilson Pro', 899.90, NOW(), 5);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Bicicleta Mountain Bike', 'MTB aro 29 com 21 marchas', 1899.99, NOW(), 5);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Kit Proteção Skate', 'Kit proteção completo para skate', 89.90, NOW(), 5);

-- =====================================================
-- PRODUTOS CATEGORIA: ALIMENTAÇÃO (ID: 6)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Café Especial 500g', 'Café gourmet torrado e moído', 24.90, NOW(), 6);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Azeite Extra Virgem', 'Azeite português extra virgem 500ml', 39.90, NOW(), 6);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Mel Orgânico 300g', 'Mel puro orgânico flores silvestres', 18.90, NOW(), 6);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Vinho Tinto Reserva', 'Vinho tinto seco safra 2020', 89.90, NOW(), 6);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Chocolate 70% Cacau', 'Chocolate amargo premium 100g', 12.90, NOW(), 6);

-- =====================================================
-- PRODUTOS CATEGORIA: BELEZA (ID: 7)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Perfume Feminino 100ml', 'Fragrância floral francesa', 299.90, NOW(), 7);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Shampoo Hidratante', 'Shampoo para cabelos ressecados 400ml', 29.90, NOW(), 7);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Base Líquida FPS 30', 'Base líquida com proteção solar', 89.90, NOW(), 7);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Kit Maquiagem Completo', 'Kit com 20 itens de maquiagem', 199.90, NOW(), 7);

-- =====================================================
-- PRODUTOS CATEGORIA: AUTOMÓVEIS (ID: 8)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Pneu Aro 15 Michelin', 'Pneu radial 185/65 R15', 389.90, NOW(), 8);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Óleo Motor 5W30', 'Óleo sintético para motor 1L', 45.90, NOW(), 8);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Capa de Banco Universal', 'Capa protetora para banco de carro', 79.90, NOW(), 8);

-- =====================================================
-- PRODUTOS CATEGORIA: BRINQUEDOS (ID: 9)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('LEGO Classic 500 peças', 'Kit LEGO para construção criativa', 199.90, NOW(), 9);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Boneca Barbie Princesa', 'Boneca Barbie com vestido de princesa', 89.90, NOW(), 9);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Carrinho Hot Wheels Pack', 'Pack com 5 carrinhos Hot Wheels', 49.90, NOW(), 9);

-- =====================================================
-- PRODUTOS CATEGORIA: MÚSICA (ID: 10)
-- =====================================================
INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Violão Clássico Nylon', 'Violão clássico cordas nylon', 299.90, NOW(), 10);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Teclado Musical 61 Teclas', 'Teclado eletrônico com 61 teclas', 899.90, NOW(), 10);

INSERT INTO produtos (nome, descricao, preco, data_cadastro, categoria_id) VALUES 
('Microfone Condensador', 'Microfone profissional para estúdio', 599.90, NOW(), 10);