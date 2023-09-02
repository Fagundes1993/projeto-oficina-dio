use oficina;

-- Recuperações simples com SELECT Statement:

-- Recuperar todos os clientes da tabela "Clientes":
SELECT * FROM Clientes;

-- Recuperar todos os serviços da tabela "Servicos":
SELECT * FROM Servicos;

-- Filtros com WHERE Statement:

-- Recuperar os veículos de um cliente específico (por exemplo, ClienteID 1):
SELECT * FROM Veiculos WHERE ClienteID = 1;

-- Recuperar as ordens de serviço em andamento:
SELECT * FROM OrdensDeServico WHERE Status = 'Em andamento';

-- Expressões para gerar atributos derivados):

-- Calcular o valor total de uma ordem de serviço (por exemplo, OSID 1 e preço = 100):
SELECT OSID, SUM(Quantidade * 100) AS ValorTotal
	FROM ServicosOS
	WHERE OSID = 1
	GROUP BY OSID;

-- Ordenações dos dados com ORDER BY:

-- Listar os mecânicos em ordem alfabética por nome:
SELECT * FROM Mecanicos
	ORDER BY Nome ASC;

-- Listar as peças em ordem decrescente de preço:
SELECT * FROM Pecas
	ORDER BY Preco DESC;

-- Condições de filtros aos grupos – HAVING Statement:

-- Encontrar os veículos que têm mais de uma ordem de serviço em andamento:
SELECT VeiculoID, COUNT(*) AS QuantidadeOrdensEmAndamento
	FROM OrdensDeServico
	WHERE Status = 'Em andamento'
	GROUP BY VeiculoID
	HAVING COUNT(*) > 1;

-- Junções entre tabelas para fornecer uma perspectiva mais complexa dos dados:

-- Listar todas as ordens de serviço com informações do cliente e veículo associados:
SELECT OS.OSID, OS.DataEmissao, OS.Valor, OS.Status,
       C.Nome AS NomeCliente, V.Modelo AS ModeloVeiculo
	FROM OrdensDeServico AS OS
	JOIN Veiculos AS V ON OS.VeiculoID = V.VeiculoID
	JOIN Clientes AS C ON V.ClienteID = C.ClienteID;