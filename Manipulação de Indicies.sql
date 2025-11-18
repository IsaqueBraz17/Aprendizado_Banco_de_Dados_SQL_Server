-- Indicies Clusterizado

CREATE TABLE dbo.TesteIndex
(
	CPF VARCHAR(11) NOT NULL,
	Nome VARCHAR(50) NULL,
	RG VARCHAR(10) NULL
)

CREATE UNIQUE CLUSTERED INDEX IX_CPF
ON dbo.TesteIndex

-- Indicie Não Clusterizado
CREATE NONCLUSTERED INDEX IX_RG
ON dbo.TesteIndex(RG)

-- Excluindo Indicie
DROP INDEX dbo.TesteIndex.IX_RG

-- Como consultar
EXEC sp_helpindex TesteIndex