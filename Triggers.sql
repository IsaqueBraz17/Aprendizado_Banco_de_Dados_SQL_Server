-- Triggers

-- Criando a trigger
CREATE TRIGGER trg_LogProdutos
ON Produtos
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Para INSERT
    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO LogProdutos (ProdutoId, Acao)
        SELECT Id, 'INSERT'
        FROM inserted;
    END

    -- Para UPDATE
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO LogProdutos (ProdutoId, Acao)
        SELECT Id, 'UPDATE'
        FROM inserted;
    END

    -- Para DELETE
    IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO LogProdutos (ProdutoId, Acao)
        SELECT Id, 'DELETE'
        FROM deleted;
    END
END;