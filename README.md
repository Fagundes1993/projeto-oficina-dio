# projeto-oficina-dio

## Criação de uma base de dados tendo como base o contexto de uma oficina.

A tabela "Clientes" armazena informações sobre os clientes da oficina mecânica.

A tabela "Veiculos" está relacionada aos clientes e armazena informações sobre os veículos dos clientes.

A tabela "Mecanicos" contém informações sobre os mecânicos da oficina.

A tabela "OrdensDeServico" está relacionada aos veículos e contém informações sobre as ordens de serviço.

A tabela "Servicos" armazena informações sobre os serviços oferecidos pela oficina.

A tabela "ServicosOS" relaciona os serviços às ordens de serviço e inclui a quantidade de cada serviço em uma ordem.

A tabela "Pecas" armazena informações sobre as peças disponíveis na oficina.

A tabela "PecasOS" relaciona as peças às ordens de serviço e inclui a quantidade de cada peça em uma ordem.

+-----------------------+
|      Clientes        |
+-----------------------+
| ClienteID (PK)       |
| Nome                 |
| Endereco             |
| Telefone             |
| Email                |
+-----------------------+
         |
         |
         v
+-----------------------+
|      Veiculos        |
+-----------------------+
| VeiculoID (PK)       |
| ClienteID (FK)       |
| Modelo               |
| Ano                  |
| Placa                |
+-----------------------+
         |
         |
         v
+-----------------------+
|     Mecanicos        |
+-----------------------+
| MecanicoID (PK)      |
| Nome                 |
| Endereco             |
| Especialidade        |
| Telefone             |
+-----------------------+
         |
         |
         v
+-----------------------+
|  OrdensDeServico     |
+-----------------------+
| OSID (PK)            |
| VeiculoID (FK)       |
| DataEmissao          |
| Valor                |
| Status               |
| DataConclusaoPrevista|
+-----------------------+
         |
         |
         v
+-----------------------+
|      Servicos        |
+-----------------------+
| ServicoID (PK)       |
| Nome                 |
| Descricao            |
| Preco                |
+-----------------------+
         |
         |
         v
+-----------------------+
|     ServicosOS       |
+-----------------------+
| ServicoOSID (PK)     |
| OSID (FK)            |
| ServicoID (FK)       |
| Quantidade           |
+-----------------------+
         |
         |
         v
+-----------------------+
|       Pecas          |
+-----------------------+
| PecaID (PK)          |
| Nome                 |
| Descricao            |
| Preco                |
+-----------------------+
         |
         |
         v
+-----------------------+
|      PecasOS         |
+-----------------------+
| PecaOSID (PK)        |
| OSID (FK)            |
| PecaID (FK)          |
| Quantidade           |
+-----------------------+
