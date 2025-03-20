-- Tabela Pessoa
INSERT INTO Pessoa (idPessoa, Tipo_Pessoa, Nome, cpf_cnpj, rg_ie, data_abertura, data_nascimento, endereço, telefone, email) VALUES
(1, 'Física', 'João Silva', '123.456.789-00', 'MG-12.345.678', NULL, '1980-05-10', 'Rua A, 123', '(31) 99999-9999', 'joao@email.com'),
(2, 'Jurídica', 'Empresa XYZ Ltda', '12.345.678/0001-90', '123.456.789.0001', '2005-07-20', NULL, 'Av. B, 456', '(31) 88888-8888', 'contato@xyz.com'),
(3, 'Física', 'Maria Oliveira', '234.567.890-11', 'SP-23.456.789', NULL, '1992-11-22', 'Rua C, 789', '(11) 97777-7777', 'maria@email.com'),
(4, 'Jurídica', 'Tech Solutions', '34.567.890/0001-01', 'SP-987.654.321', '2010-03-15', NULL, 'Av. D, 1010', '(11) 96666-6666', 'tech@solutions.com'),
(5, 'Física', 'Carlos Mendes', '345.678.901-22', 'RJ-34.567.890', NULL, '1985-07-19', 'Rua E, 202', '(21) 95555-5555', 'carlos@email.com'),
(6, 'Jurídica', 'Alpha Corp', '45.678.901/0001-12', 'RJ-112.233.445', '2015-09-30', NULL, 'Av. F, 303', '(21) 94444-4444', 'contact@alphacorp.com'),
(7, 'Física', 'Fernanda Lima', '456.789.012-33', 'MG-45.678.901', NULL, '1990-02-14', 'Rua G, 404', '(31) 93333-3333', 'fernanda@email.com'),
(8, 'Física', 'Paulo César', '567.890.123-44', 'BA-56.789.012', NULL, '1978-06-05', 'Rua H, 505', '(71) 92222-2222', 'paulo@email.com'),
(9, 'Jurídica', 'Beta Industries', '56.789.012/0001-23', 'BA-654.321.987', '2012-12-12', NULL, 'Av. I, 606', '(71) 91111-1111', 'contact@betaindustries.com'),
(10, 'Física', 'Ana Souza', '678.901.234-55', 'RS-67.890.123', NULL, '2000-04-25', 'Rua J, 707', '(51) 90000-0000', 'ana@email.com');

-- Tabela Cliente
INSERT INTO Cliente (idCliente, Pessoa_idPessoa) VALUES
(1, 1), (2, 3), (3, 5), (4, 7), (5, 8), (6, 10);

-- Tabela Fornecedor
INSERT INTO Fornecedor (idFornecedor, Pessoa_idPessoa) VALUES
(1, 2), (2, 4), (3, 6), (4, 9);

-- Tabela Produto
INSERT INTO Produto (idProduto, Nome, Categoria, Valor) VALUES
(1, 'Notebook Dell', 'Eletrônicos', '4500.00'),
(2, 'Mouse Logitech', 'Acessórios', '150.00'),
(3, 'Teclado Mecânico', 'Acessórios', '350.00'),
(4, 'Monitor LG 24"', 'Eletrônicos', '1200.00'),
(5, 'Cadeira Gamer', 'Móveis', '850.00'),
(6, 'Webcam Full HD', 'Acessórios', '300.00'),
(7, 'Impressora HP', 'Eletrônicos', '950.00'),
(8, 'HD Externo 1TB', 'Armazenamento', '500.00'),
(9, 'SSD NVMe 1TB', 'Armazenamento', '700.00'),
(10, 'Fonte 750W', 'Componentes', '600.00');

-- Tabela Estoque
INSERT INTO Estoque (idEstoque, Local) VALUES
(1, 'Depósito Central'), (2, 'Filial Norte'), (3, 'Filial Sul');

-- Tabela Associando Produtos ao Estoque
INSERT INTO Produto_has_Estoque (quantidade, Produto_idProduto, Produto_idProduto1, Estoque_idEstoque) VALUES
(10, 1, 1, 1), (20, 2, 2, 1), (15, 3, 3, 2), (5, 4, 4, 2), (8, 5, 5, 3), (12, 6, 6, 3), (25, 7, 7, 1), (30, 8, 8, 2), (40, 9, 9, 3), (50, 10, 10, 1);

-- Tabela Fornecedor disponibilizando produtos
INSERT INTO Disponibilizando_um_produto (Produto_idProduto, Fornecedor_idFornecedor1) VALUES
(1, 1), (2, 1), (3, 2), (4, 2), (5, 3), (6, 3), (7, 4), (8, 4), (9, 4), (10, 1);

-- Tabela Pedidos
INSERT INTO Pedido (idPedido, statusPedido, Descrição, Frete, Cliente_idCliente, Total_Pedido) VALUES
(1, 'Em andamento', 'Compra de Notebook', 50.00, 1, '4550.00'),
(2, 'Concluído', 'Compra de Acessórios', 20.00, 2, '500.00'),
(3, 'Pendente', 'Setup Completo', 100.00, 3, '7450.00'),
(4, 'Cancelado', 'Pedido Cancelado', 0.00, 4, '0.00'),
(5, 'Em andamento', 'Nova Compra', 40.00, 5, '1300.00');

-- Relacionando Produtos ao Pedido
INSERT INTO Relacao_de_produto_pedido (Produto_idProduto, Pedido_idPedido, Quantidade, statusProduto) VALUES
(1, 1, '1', 'Disponível'), (2, 2, '2', 'Disponível'), (3, 3, '1', 'Aguardando Estoque'), (4, 3, '1', 'Disponível'), (5, 5, '1', 'Disponível');

-- Terceiro Vendedor
INSERT INTO Terceiro_Vendedor (idTerceiro_Vendedor, Local, Pessoa_idPessoa) VALUES
(1, 'Shopping Central', 1), (2, 'Feira de Tecnologia', 3), (3, 'Centro Comercial', 5);

-- Produtos por Vendedor Terceiro
INSERT INTO Produtos_por_Vendedor_Terceiro (Quantidade, Terceiro_Vendedor_idTerceiro_Vendedor, Produto_idProduto) VALUES
(5, 1, 1), (10, 2, 2), (7, 3, 3);

-- Pagamento do Pedido
INSERT INTO Pagamento (idPagamento, Pedido_idPedido, Pedido_Cliente_idCliente, `Forma de Pagamento`) VALUES
(1, 1, 1, 'Cartão de Crédito'), (2, 2, 2, 'Boleto'), (3, 3, 3, 'Pix'), (4, 5, 5, 'Transferência Bancária');

-- Entrega do Pedido
INSERT INTO Entrega (idEntrega, Status, CodigoRastreio, Pedido_idPedido, Pedido_Cliente_idCliente) VALUES
(1, 'Em transporte', 'BR1234567890', 1, 1), (2, 'Entregue', 'BR0987654321', 2, 2), (3, 'Aguardando Coleta', 'BR1122334455', 3, 3), (4, 'Cancelado', 'BR5544332211', 4, 4);

