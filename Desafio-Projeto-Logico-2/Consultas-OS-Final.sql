-- Recuperação todos os clientes
SELECT * FROM Cliente;

-- Recupera todos os veiculos com ano maior que 2015
SELECT * FROM Veiculos WHERE Ano > '2015';

-- Adicione um valor de 10% de imposto sobre o valor
SELECT Descricao, Valor * 1.1 AS ValorComImposto FROM Servicos;

-- Recupera a listagem de toda ordem de serviço ordenado pela data de emissão
SELECT * FROM OrdemServico ORDER BY dataEmissao DESC;

-- Recupera as ordens de serviço que possuem mais de um serviço associado, agrupando pelo nome do cliente e mostrando o total de serviços em cada ordem.
SELECT O.idOrdemServico, C.Nome, COUNT(S.idServico) AS TotalServicos
FROM OrdemServico O
inner JOIN Veiculos V ON O.idVeiculo = V.idVeiculo
inner JOIN Cliente C ON V.idCliente = C.idCliente
inner JOIN OrdemServico_has_Servicos OS ON O.idOrdemServico = OS.idOrdemServico
inner JOIN Servicos S ON OS.idServico = S.idServico
GROUP BY O.idOrdemServico, C.Nome
HAVING COUNT(S.idServico) > 1;

-- Listar as ordens de serviço com peças associadas
SELECT O.idOrdemServico, P.Descricao, P.Valor
FROM OrdemServico O
inner JOIN OrdemServico_has_Pecas OP ON O.idOrdemServico = OP.idOrdemServico
inner JOIN Pecas P ON OP.idPeca = P.idPeca
ORDER BY O.idOrdemServico;
