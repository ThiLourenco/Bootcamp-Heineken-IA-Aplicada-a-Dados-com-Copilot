CREATE SCHEMA IF NOT EXISTS `OS` DEFAULT CHARACTER SET UTF8MB4 ;

USE `OS` ;

CREATE TABLE Cliente (
    idCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    CPF VARCHAR(14),
    Telefone VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE Veiculos (
    idVeiculo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Modelo VARCHAR(50),
    Placa VARCHAR(10),
    Ano VARCHAR(4),
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Mecanicos (
    idMecanico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(150),
    Especialidade VARCHAR(50)
);

CREATE TABLE Equipe (
    idEquipe INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Equipe_Mecanicos (
    idEquipe INT,
    idMecanico INT,
    PRIMARY KEY (idEquipe, idMecanico),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
    FOREIGN KEY (idMecanico) REFERENCES Mecanicos(idMecanico)
);

CREATE TABLE Servicos (
    idServico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Descricao VARCHAR(100),
    Valor DECIMAL(10, 2)
);

CREATE TABLE Pecas (
    idPeca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Descricao VARCHAR(100),
    Valor DECIMAL(10, 2)
);

CREATE TABLE OrdemServico (
    idOrdemServico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TipoOrdem VARCHAR(50),
    Status VARCHAR(20),
    dataEmissao DATE,
    dataPrevisaoConclusao DATE,
    idVeiculo INT,
    idEquipe INT,
    Autorizado TINYINT(1),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculos(idVeiculo),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
);

CREATE TABLE OrdemServico_has_Servicos (
    idOrdemServico INT,
    idServico INT,
    PRIMARY KEY (idOrdemServico, idServico),
    FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico),
    FOREIGN KEY (idServico) REFERENCES Servicos(idServico)
);

CREATE TABLE OrdemServico_has_Pecas (
    idOrdemServico INT,
    idPeca INT,
    PRIMARY KEY (idOrdemServico, idPeca),
    FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico),
    FOREIGN KEY (idPeca) REFERENCES Pecas(idPeca)
);


