-- criação do banco de dados para o cenário da oficina

-- Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica
-- Clientes levam veículos à oficina mêcanica para serem consertados ou para passarem por revisões periódicas
-- Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
-- Os mecânicos possuem código, nome, endereço e especialidade
-- Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.
-- Uma OS pode ser composta por vários serviços e um mesmo serviço pode estar contido em mais de uma OS.
-- Uma OS pode ter vários tipos de peça e uma peça pode estar presente em mais de uma OS

create database oficina;
use oficina;

-- Tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

-- Tabela de Veículos
CREATE TABLE Veiculos (
    VeiculoID INT PRIMARY KEY,
    ClienteID INT,
    Modelo VARCHAR(100),
    Ano INT,
    Placa VARCHAR(20),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Tabela de Mecânicos
CREATE TABLE Mecanicos (
    MecanicoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Especialidade VARCHAR(100),
    Telefone VARCHAR(20)
);

-- Tabela de Ordens de Serviço
CREATE TABLE OrdensDeServico (
    OSID INT PRIMARY KEY,
    VeiculoID INT,
    DataEmissao DATE,
    Valor DECIMAL(10, 2),
    Status VARCHAR(50),
    DataConclusaoPrevista DATE,
    FOREIGN KEY (VeiculoID) REFERENCES Veiculos(VeiculoID)
);

-- Tabela de Serviços
CREATE TABLE Servicos (
    ServicoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao TEXT,
    Preco DECIMAL(10, 2)
);

-- Tabela de Serviços em Ordens de Serviço
CREATE TABLE ServicosOS (
    ServicoOSID INT PRIMARY KEY,
    OSID INT,
    ServicoID INT,
    Quantidade INT,
    FOREIGN KEY (OSID) REFERENCES OrdensDeServico(OSID),
    FOREIGN KEY (ServicoID) REFERENCES Servicos(ServicoID)
);

-- Tabela de Peças
CREATE TABLE Pecas (
    PecaID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao TEXT,
    Preco DECIMAL(10, 2)
);

-- Tabela de Peças em Ordens de Serviço
CREATE TABLE PecasOS (
    PecaOSID INT PRIMARY KEY,
    OSID INT,
    PecaID INT,
    Quantidade INT,
    FOREIGN KEY (OSID) REFERENCES OrdensDeServico(OSID),
    FOREIGN KEY (PecaID) REFERENCES Pecas(PecaID)
);