
MISSÃO PRATICA 

ACESSAR 
sqlcmd -S tcp:logi-move.database.windows.net,1433 -d LogiMove -U fullstack -P 'Fer1210.' -N -l 30


CRIAR TABELA DE MOTORISTAS 'DRIVERS'
CREATE TABLE Drivers ( DriverID INT PRIMARY KEY, Nome VARCHAR(100), CNH VARCHAR(20), Endereço VARCHAR(200), Contato VARCHAR(50));

INSERIR DADOS DO MOTORISTA
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) 
VALUES (1, 'João Silva', '1234567890', 'Rua A, 123', 'joao@email.com');

INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) 
VALUES (2, 'Maria Santos', '0987654321', 'Avenida B, 456', 'maria@email.com');

INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) 
VALUES (3, 'Julia Reis', '58963798333', 'Rua das Amoras, 16', 'julia@email.com');

CONSULTAR 
SELECT * FROM Drivers;


**************************************************************************************************************************************

CRIAR TABELA DE CLIENTES 'CLIENTS'
CREATE TABLE Clients (ClientID INT PRIMARY KEY, Nome VARCHAR(100), Empresa VARCHAR(100), Endereço VARCHAR(200), Contato VARCHAR(50));

INSERIR DADOS DO CLIENTES
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) 
VALUES (4, 'Empresa Buzz', 'Carlos Oliveira', 'Rua Capitão Gomes, 789', 'carlos@buzz.com');

INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato)
VALUES (5, 'Empresa Dias Correias', 'Ana Souza', 'Avenida Dias Correias, 321', 'ana@dc.com');

INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato)
VALUES (6, 'Grupo AWS', 'Pamela Vargas', 'Rodovia dos Bandeirantes, s/n - Km 19', 'pamela@aws.com');

CONSULTAR 
SELECT * FROM DrivClients;

**************************************************************************************************************************************

CRIAR TABELA DE PEDIDOS 'ORDERS'
CREATE TABLE Orders (OrderID INT PRIMARY KEY, ClientID INT, DriverID INT, DetalhesPedido TEXT, DataEntrega DATE, Status VARCHAR(50), FOREIGN KEY (ClientID) REFERENCES Clients(ClientID), FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID));

INSERIR DADOS DO PEDIDO
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) 
VALUES (10, 5, 1, 'Detalhes do pedido: As caixas devem ser separadas em lotes.', '2024-06-10', 'Aguardando');
VALUES (20, 4, 3, 'Detalhes do pedido: Produtos frageis CUIDADO.', '2024-07-01', 'Em andamento');
VALUES (30, 6, 2, 'Detalhes do pedido: Identificar lotes de acordo com galpão de entrega.', '2024-08-23', 'Pendente');


CONSULTAR 
SELECT * FROM Orders;