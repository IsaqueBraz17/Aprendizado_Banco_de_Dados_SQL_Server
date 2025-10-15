-- Criação de tabela com várias constraints

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,                  -- 🔑 PRIMARY KEY: identifica unicamente cada linha
    CPF CHAR(11) UNIQUE,                        -- 🆔 UNIQUE: garante que o CPF não se repita
    Nome VARCHAR(100) NOT NULL,                 -- NOT NULL: obriga preenchimento
    Idade INT CHECK (Idade >= 18),              -- ✅ CHECK: valida regras (maior de idade)
    Estado CHAR(2) DEFAULT 'SP'                 -- 🏷️ DEFAULT: valor padrão se não for informado
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,                   -- 🔑 PRIMARY KEY
    ClienteID INT,                              -- 🔗 FOREIGN KEY: referência à tabela Clientes
    Valor MONEY CHECK (Valor > 0),              -- ✅ CHECK: valor positivo
    DataPedido DATE DEFAULT GETDATE(),          -- 🏷️ DEFAULT: data atual
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID) -- 🔗 FOREIGN KEY
);