USE `mydb`;

-- Quantos pedidos foram feitos por cada cliente?
SELECT c.idCliente, p.Nome, COUNT(pe.idPedido) AS TotalPedidos
FROM Cliente c
JOIN Pessoa p ON c.Pessoa_idPessoa = p.idPessoa
LEFT JOIN Pedido pe ON c.idCliente = pe.Cliente_idCliente
GROUP BY c.idCliente, p.Nome;

-- Qual relação dos fornecedores?
select p.Nome, cpf_cnpj as CNPJ, p.endereço as Endereço, p.telefone, p.email
from Fornecedor f
join Pessoa p on p.idPessoa = f.Pessoa_idPessoa;

-- Algum vendedor também é fornecedor?
SELECT p.idPessoa, p.Nome
FROM Pessoa p
JOIN Terceiro_Vendedor tv ON p.idPessoa = tv.Pessoa_idPessoa
JOIN Fornecedor f ON p.idPessoa = f.Pessoa_idPessoa;

-- Qual relação de pessoa Jurídi?
SELECT p.idPessoa, p.Nome, p.cpf_cnpj as CNPJ, p.endereço, p.telefone 
from Pessoa p
where Tipo_Pessoa = 'Juridica';

-- Qual relação de pessoa Física?
SELECT p.idPessoa, p.Nome, p.cpf_cnpj as CPF, p.endereço, p.telefone 
from Pessoa p
where Tipo_Pessoa = 'Física';

-- Qual relação de produtos fornecedores e estoques ?
SELECT pr.Nome AS Produto, f.idFornecedor, e.Local, phe.quantidade
FROM Produto pr
JOIN Disponibilizando_um_produto dp ON pr.idProduto = dp.Produto_idProduto
JOIN Fornecedor f ON dp.Fornecedor_idFornecedor1 = f.idFornecedor
JOIN Produto_has_Estoque phe ON pr.idProduto = phe.Produto_idProduto
JOIN Estoque e ON phe.Estoque_idEstoque = e.idEstoque;

-- Relação de nomes dos fornecedores e nomes dos produtos.
SELECT f.idFornecedor, p.Nome AS Fornecedor, pr.Nome AS Produto
FROM Fornecedor f
JOIN Pessoa p ON f.Pessoa_idPessoa = p.idPessoa
JOIN Disponibilizando_um_produto dp ON f.idFornecedor = dp.Fornecedor_idFornecedor1
JOIN Produto pr ON dp.Produto_idProduto = pr.idProduto;

-- Relação de Pedidos em andamento por cliente.
select pd.idPedido, pd.statusPedido, p.Nome, pd.Total_Pedido, pd.Frete, p.endereço, p.telefone, p.email
from Pedido pd
inner join Cliente c on pd.Cliente_idCliente = c.idCliente
inner join Pessoa p on c.Pessoa_idPessoa = p.idPessoa
where statusPedido = 'Em andamento'
order by 2;

-- Relação de Pedidos concluído por cliente.
select pd.idPedido, pd.statusPedido, p.Nome, pd.Total_Pedido, pd.Frete, pgt.forma_pagamento, p.endereço, p.telefone, p.email
from Pedido pd
inner join Cliente c on pd.Cliente_idCliente = c.idCliente
inner join Pessoa p on c.Pessoa_idPessoa = p.idPessoa
inner join Pagamento pgt on pd.idPedido = pgt.Pedido_idPedido
where statusPedido = 'Concluído'
order by 2;

-- Relação de entrega pedido por status?
select pd.idPedido, pd.statusPedido, p.Nome, pd.Total_Pedido, pd.Frete,e.status, e.CodigoRastreio, p.endereço, p.telefone, p.email
from Pedido pd
inner join Cliente c on pd.Cliente_idCliente = c.idCliente
inner join Pessoa p on c.Pessoa_idPessoa = p.idPessoa
inner join Entrega e on pd.idPedido = e.Pedido_Cliente_idCliente;
