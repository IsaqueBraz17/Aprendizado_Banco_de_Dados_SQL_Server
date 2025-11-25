-- Aprendizado sobre Views --

-- Views Standard
-- Views Indexadas
-- Views Particionadas

-- With Check Option 

CREATE TABLE TB_TESTE
(
	Nome Varchar(50) NULL,
	Telefone Varchar(30) NULL
)

INSERT INTO TB_TESTE
(Nome)
VALUES
('Jose'),('Maria'),('João')

ALTER VIEW VIE_TESTE
WITH ENCRYPTION
AS
SELECT Nome,Telefone
FROM
TB_TESTE
WHERE Telefone IS NULL
WITH CHECK OPTION

SELECT * FROM VIE_TESTE
SELECT * FROM TB_TESTE

INSERT INTO VIE_TESTE
(Nome, Telefone)
VALUES
('Isaque',null)

