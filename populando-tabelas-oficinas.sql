use oficina;

-- Inserir 10 clientes fictícios
INSERT INTO Clientes (ClienteID, Nome, Endereco, Telefone, Email)
VALUES
    (1, 'Cristiano Ronaldo', 'Rua Real Madrid, 123', '+34 123 456 789', 'cristiano@email.com'),
    (2, 'Sergio Ramos', 'Avenida Bernabeu, 456', '+34 987 654 321', 'sergio@email.com'),
    (3, 'Karim Benzema', 'Praça Madrid, 789', '+34 555 555 555', 'karim@email.com'),
    (4, 'Luka Modric', 'Estrada Santiago, 111', '+34 222 222 222', 'luka@email.com'),
    (5, 'Gareth Bale', 'Avenida Gales, 777', '+34 777 777 777', 'gareth@email.com'),
    (6, 'Toni Kroos', 'Rua Alemanha, 333', '+34 333 333 333', 'toni@email.com'),
    (7, 'Isco', 'Praça Espanha, 888', '+34 888 888 888', 'isco@email.com'),
    (8, 'Marcelo', 'Avenida Brasil, 444', '+34 444 444 444', 'marcelo@email.com'),
    (9, 'Thibaut Courtois', 'Estrada Bélgica, 999', '+34 999 999 999', 'thibaut@email.com'),
    (10, 'Casemiro', 'Rua Brasil, 222', '+34 222 333 444', 'casemiro@email.com');

-- Inserir 10 veículos fictícios associados aos clientes
INSERT INTO Veiculos (VeiculoID, ClienteID, Modelo, Ano, Placa)
VALUES
    (1, 1, 'Ferrari', 2022, 'ABC123'),
    (2, 1, 'Lamborghini', 2021, 'XYZ789'),
    (3, 2, 'Mercedes-Benz', 2020, 'DEF456'),
    (4, 2, 'Audi', 2019, 'GHI789'),
    (5, 3, 'BMW', 2018, 'JKL012'),
    (6, 3, 'Tesla', 2022, 'MNO345'),
    (7, 4, 'Toyota', 2020, 'PQR678'),
    (8, 5, 'Ford', 2019, 'STU901'),
    (9, 6, 'Chevrolet', 2017, 'VWX234'),
    (10, 7, 'Honda', 2016, 'YZA567');

-- Inserir 10 mecânicos fictícios
INSERT INTO Mecanicos (MecanicoID, Nome, Endereco, Especialidade, Telefone)
VALUES
    (1, 'Zinedine Zidane', 'Estádio Santiago Bernabeu', 'Mecânico Geral', '+34 111 222 333'),
    (2, 'Fernando Hierro', 'Estádio Santiago Bernabeu', 'Motor', '+34 444 555 666'),
    (3, 'Roberto Carlos', 'Estádio Santiago Bernabeu', 'Suspensão', '+34 777 888 999'),
    (4, 'Iker Casillas', 'Estádio Santiago Bernabeu', 'Freios', '+34 111 222 333'),
    (5, 'Raul', 'Estádio Santiago Bernabeu', 'Transmissão', '+34 444 555 666'),
    (6, 'Xabi Alonso', 'Estádio Santiago Bernabeu', 'Elétrica', '+34 777 888 999'),
    (7, 'Sergio Ramos', 'Estádio Santiago Bernabeu', 'Motor', '+34 111 222 333'),
    (8, 'Ferenc Puskás', 'Estádio Santiago Bernabeu', 'Suspensão', '+34 444 555 666'),
    (9, 'Fernando Redondo', 'Estádio Santiago Bernabeu', 'Freios', '+34 777 888 999'),
    (10, 'Luis Figo', 'Estádio Santiago Bernabeu', 'Transmissão', '+34 111 222 333');

-- Inserir 10 ordens de serviço fictícias associadas aos veículos
INSERT INTO OrdensDeServico (OSID, VeiculoID, DataEmissao, Valor, Status, DataConclusaoPrevista)
VALUES
    (1, 1, '2023-01-15', 1000.00, 'Em andamento', '2023-01-25'),
    (2, 2, '2023-02-10', 1500.00, 'Concluído', '2023-02-20'),
    (3, 3, '2023-03-05', 800.00, 'Em andamento', '2023-03-15'),
    (4, 4, '2023-04-20', 1200.00, 'Concluído', '2023-04-30'),
    (5, 5, '2023-05-12', 900.00, 'Em andamento', '2023-05-22'),
    (6, 6, '2023-06-08', 1100.00, 'Em andamento', '2023-06-18'),
    (7, 7, '2023-07-25', 1300.00, 'Concluído', '2023-08-04'),
    (8, 8, '2023-08-10', 950.00, 'Em andamento', '2023-08-20'),
    (9, 9, '2023-09-15', 750.00, 'Concluído', '2023-09-25'),
    (10, 10, '2023-10-05', 1600.00, 'Em andamento', '2023-10-15');

-- Inserir 10 serviços fictícios
INSERT INTO Servicos (ServicoID, Nome, Descricao, Preco)
VALUES
    (1, 'Troca de Óleo', 'Troca de óleo do motor', 50.00),
    (2, 'Reparo de Freios', 'Reparo do sistema de freios', 120.00),
    (3, 'Alinhamento de Direção', 'Alinhamento de direção do veículo', 80.00),
    (4, 'Troca de Correia Dentada', 'Substituição da correia dentada', 150.00),
    (5, 'Troca de Filtro de Ar', 'Substituição do filtro de ar', 20.00),
    (6, 'Balanceamento de Rodas', 'Balanceamento das rodas do veículo', 40.00),
    (7, 'Reparo de Motor', 'Reparo do motor do veículo', 200.00),
    (8, 'Troca de Pneus', 'Troca de pneus desgastados', 300.00),
    (9, 'Limpeza de Bicos Injetores', 'Limpeza dos bicos injetores', 60.00),
    (10, 'Troca de Bateria', 'Substituição da bateria do veículo', 80.00);

-- Inserir 10 associações de serviços com ordens de serviço
INSERT INTO ServicosOS (ServicoOSID, OSID, ServicoID, Quantidade)
VALUES
    (1, 1, 1, 1),
    (2, 1, 2, 2),
    (3, 2, 3, 1),
    (4, 2, 4, 1),
    (5, 3, 5, 1),
    (6, 4, 6, 2),
    (7, 4, 7, 1),
    (8, 5, 8, 4),
    (9, 6, 9, 1),
    (10, 7, 10, 1);

-- Inserir 10 peças fictícias
INSERT INTO Pecas (PecaID, Nome, Descricao, Preco)
VALUES
    (1, 'Filtro de Óleo', 'Filtro de óleo para troca', 10.00),
    (2, 'Pastilhas de Freio', 'Pastilhas de freio para reposição', 30.00),
    (3, 'Correia Dentada', 'Correia dentada para troca', 40.00),
    (4, 'Filtro de Ar', 'Filtro de ar para reposição', 15.00),
    (5, 'Pneu Aro 17', 'Pneu aro 17 para troca', 80.00),
    (6, 'Óleo de Motor 5W-30', 'Óleo de motor 5W-30 para troca', 20.00),
    (7, 'Bateria 60Ah', 'Bateria de 60Ah para troca', 60.00),
    (8, 'Bujão de Óleo', 'Bujão de óleo para troca', 5.00),
    (9, 'Vela de Ignição', 'Vela de ignição para troca', 8.00),
    (10, 'Limpador de Parabrisa', 'Limpador de parabrisa para reposição', 12.00);

-- Inserir 10 associações de peças com ordens de serviço
INSERT INTO PecasOS (PecaOSID, OSID, PecaID, Quantidade)
VALUES
    (1, 1, 1, 2),
    (2, 1, 2, 1),
    (3, 2, 3, 1),
    (4, 2, 4, 2),
    (5, 3, 5, 4),
    (6, 3, 6, 5),
    (7, 4, 7, 1),
    (8, 5, 8, 2),
    (9, 6, 9, 1),
    (10, 7, 10, 3);
