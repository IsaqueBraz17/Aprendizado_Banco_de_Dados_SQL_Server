-- Manipulção de dados --
INSERT INTO Clientes (ClienteID, CPF, Nome, Idade, Estado, Salario)
VALUES (1, '12345678901', 'João Silva', 30, 'SP', 3500.00);

INSERT INTO Clientes (ClienteID, CPF, Nome, Idade, Estado, Salario)
VALUES (2, '98765432100', 'Maria Oliveira', 25, 'RJ', 4200.00);

INSERT INTO Pedidos (PedidoID, ClienteID, Valor)
VALUES (101, 1, 150.00),
       (102, 1, 200.00),
       (103, 2, 300.00);

-- ============================================
-- 🔍 CONSULTAS (SELECT, TOP, DISTINCT, WHERE)
-- ============================================

-- Todos os clientes
SELECT * FROM Clientes;

-- Clientes com idade acima de 25
SELECT Nome, Idade FROM Clientes WHERE Idade > 25;

-- Os 2 primeiros pedidos
SELECT TOP 2 * FROM Pedidos;

-- Estados distintos dos clientes
SELECT DISTINCT Estado FROM Clientes;

-- ============================================
-- ✏️ ATUALIZAÇÃO DE DADOS
-- ============================================

-- Atualizar salário do cliente 1
UPDATE Clientes
SET Salario = 3800.00
WHERE ClienteID = 1;

-- ============================================
-- 🗑️ EXCLUSÃO DE DADOS
-- ============================================

-- Excluir pedido com ID 102
DELETE FROM Pedidos
WHERE PedidoID = 102;

-- ============================================
-- 🔄 TRANSAÇÃO COM TRY/CATCH
-- ============================================

BEGIN TRANSACTION;

BEGIN TRY
    -- Inserir novo cliente
    INSERT INTO Clientes (ClienteID, CPF, Nome, Idade, Estado, Salario)
    VALUES (3, '11122233344', 'Carlos Mendes', 28, 'MG', 5000.00);

    -- Inserir pedido vinculado
    INSERT INTO Pedidos (PedidoID, ClienteID, Valor)
    VALUES (104, 3, 450.00);

    COMMIT TRANSACTION;
    PRINT 'Transação concluída com sucesso.';
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    PRINT 'Erro na transação. Alterações desfeitas.';
END CATCH;
