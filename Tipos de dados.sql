-- Principais tipos de dados no SQL Server

CREATE TABLE TiposDeDados (
    -- 🧮 Tipos Numéricos Inteiros
    NumeroTinyInt TINYINT,       -- 1 byte, valores de 0 a 255
    NumeroSmallInt SMALLINT,     -- 2 bytes, valores de -32.768 a 32.767
    NumeroInt INT,               -- 4 bytes, valores de -2.147.483.648 a 2.147.483.647
    NumeroBigInt BIGINT,         -- 8 bytes, valores de -9.223.372.036.854.775.808 a 9.223.372.036.854.775.807

    -- 🔢 Tipos Numéricos Decimais e de Ponto Flutuante
    NumeroDecimal DECIMAL(10,2), -- 5 a 17 bytes, depende da precisão
    NumeroNumeric NUMERIC(10,2), -- igual ao DECIMAL
    NumeroFloat FLOAT,           -- 4 ou 8 bytes, depende da precisão
    NumeroReal REAL,             -- 4 bytes, menor precisão que FLOAT

    -- 📝 Tipos de Texto
    TextoChar CHAR(10),          -- 10 bytes fixos
    TextoVarchar VARCHAR(50),    -- até 50 bytes, variável
    TextoText TEXT,              -- até 2 GB, obsoleto (use VARCHAR(MAX))

    -- 📅 Tipos de Data e Hora
    DataSimples DATE,            -- 3 bytes
    HoraSimples TIME,            -- 3 a 5 bytes
    DataHora DATETIME,           -- 8 bytes
    DataHora2 DATETIME2,         -- 6 a 8 bytes
    DataHoraOffset DATETIMEOFFSET, -- 10 bytes
    DataPequena SMALLDATETIME,   -- 4 bytes

    -- ✅ Tipos Lógicos
    ValorBooleano BIT,           -- 1 bit (0 ou 1)

    -- 🆔 Tipos Especiais
    IdentificadorUnique UNIQUEIDENTIFIER, -- 16 bytes (GUID)
    ValorSQLVariant SQL_VARIANT, -- variável, depende do tipo armazenado
    ValorBinary BINARY(5),       -- 5 bytes fixos
    ValorVarBinary VARBINARY(50),-- até 50 bytes
    ValorImage IMAGE             -- até 2 GB, obsoleto (use VARBINARY(MAX))
);

-- Exemplo de uso do tipo MONEY
CREATE TABLE ValoresFinanceiros (
    Salario MONEY,           -- Armazena valores monetários com até 4 casas decimais
    Receita SMALLMONEY       -- Versão menor, com menos precisão e intervalo
);