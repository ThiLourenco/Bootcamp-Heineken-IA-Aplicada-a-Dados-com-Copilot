USE `OS` ;

INSERT INTO Cliente (Nome, CPF, Telefone, Email) VALUES
('João Silva', '111.111.111-11', '11999999999', 'joao@email.com'),
('Maria Oliveira', '222.222.222-22', '21999999999', 'maria@email.com'),
('Carlos Souza', '333.333.333-33', '31999999999', 'carlos@email.com'),
('Ana Pereira', '444.444.444-44', '41999999999', 'ana@email.com'),
('Roberto Lima', '555.555.555-55', '51999999999', 'roberto@email.com'),
('Fernanda Costa', '666.666.666-66', '61999999999', 'fernanda@email.com'),
('Luciana Rocha', '777.777.777-77', '71999999999', 'luciana@email.com'),
('Ricardo Alves', '888.888.888-88', '81999999999', 'ricardo@email.com'),
('Patricia Gomes', '999.999.999-99', '91999999999', 'patricia@email.com'),
('Paulo Mendes', '000.000.000-00', '10199999999', 'paulo@email.com');

INSERT INTO Veiculos (Modelo, Placa, Ano, idCliente) VALUES
('Gol', 'ABC-1234', '2015', 1),
('Palio', 'DEF-5678', '2012', 2),
('Civic', 'GHI-9101', '2018', 3),
('Corolla', 'JKL-1121', '2020', 4),
('Uno', 'MNO-3141', '2010', 5),
('Fiesta', 'PQR-5161', '2016', 6),
('HB20', 'STU-7181', '2019', 7),
('Ka', 'VWX-9202', '2014', 8),
('Cruze', 'YZA-1123', '2017', 9),
('Onix', 'BCD-2234', '2021', 10);

INSERT INTO Mecanicos (Nome, Endereco, Especialidade) VALUES
('Carlos Mecânico', 'Rua A, 123', 'Motor'),
('José das Peças', 'Rua B, 456', 'Suspensão'),
('Ana Diagnóstico', 'Rua C, 789', 'Elétrica'),
('Roberto Freios', 'Rua D, 101', 'Freios'),
('Marcos Pneu', 'Rua E, 202', 'Pneus'),
('Lucia Ar', 'Rua F, 303', 'Ar Condicionado'),
('Fernando Turbo', 'Rua G, 404', 'Turbo'),
('Juliana Tinta', 'Rua H, 505', 'Pintura'),
('Ricardo Som', 'Rua I, 606', 'Som'),
('Patricia Luz', 'Rua J, 707', 'Iluminação');


INSERT INTO Equipe VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO Equipe_Mecanicos VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10);

INSERT INTO Servicos (Descricao, Valor) VALUES
('Troca de óleo', 150.00),
('Alinhamento', 100.00),
('Balanceamento', 80.00),
('Revisão Completa', 500.00),
('Troca de Filtro', 120.00),
('Reparo Elétrico', 300.00),
('Troca de Pneu', 250.00),
('Limpeza de Bico', 200.00),
('Revisão de Freios', 180.00),
('Troca de Bateria', 400.00);

INSERT INTO Pecas (Descricao, Valor) VALUES
('Filtro de Óleo', 50.00),
('Pneu 175/70', 300.00),
('Pastilha de Freio', 150.00),
('Bateria 60Ah', 450.00),
('Vela de Ignição', 70.00),
('Correia Dentada', 200.00),
('Amortecedor', 500.00),
('Radiador', 600.00),
('Bomba de Combustível', 350.00),
('Farol Dianteiro', 250.00);


INSERT INTO OrdemServico (TipoOrdem, Status, dataEmissao, dataPrevisaoConclusao, idVeiculo, idEquipe, Autorizado) VALUES
('Revisão', 'Concluído', '2024-01-01', '2024-01-02', 1, 1, 1),
('Troca de Peças', 'Pendente', '2024-01-03', '2024-01-04', 2, 2, 0),
('Alinhamento', 'Concluído', '2024-01-05', '2024-01-06', 3, 3, 1),
('Pintura', 'Em Andamento', '2024-01-07', '2024-01-08', 4, 4, 1),
('Revisão Completa', 'Pendente', '2024-01-09', '2024-01-10', 5, 5, 0);

INSERT INTO OrdemServico_has_Servicos (idOrdemServico, idServico) VALUES
(1, 1), (1, 2), (1, 3), -- Ordem 1 com 3 serviços
(2, 4), (2, 5), -- Ordem 2 com 2 serviços
(3, 6), -- Ordem 3 com 1 serviço
(4, 7), (4, 8), (4, 9), (4, 10), -- Ordem 4 com 4 serviços
(5, 1), (5, 2); -- Ordem 5 com 2 serviços


INSERT INTO OrdemServico_has_Pecas (idOrdemServico, idPeca) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
(3, 6), (4, 7), (4, 8), (5, 9), (5, 10);