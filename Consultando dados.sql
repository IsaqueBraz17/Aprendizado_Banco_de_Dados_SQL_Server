-- Consultando dados --
-- Supondo que já existam as tabelas Clientes e Pedidos

-- 🔠 ORDER BY: ordena os resultados
SELECT Nome, Idade
FROM Clientes
ORDER BY Idade DESC; -- do mais velho para o mais novo

-- 🔍 LIKE: busca por padrões
SELECT Nome
FROM Clientes
WHERE Nome LIKE 'Jo%'; -- nomes que começam com "Jo"

-- 🔁 Operadores relacionais
SELECT Nome, Salario
FROM Clientes
WHERE Salario >= 4000; -- salário maior ou igual a 4000

-- 🔢 BETWEEN: intervalo inclusivo
SELECT Nome, Idade
FROM Clientes
WHERE Idade BETWEEN 25 AND 35;

-- 🚫 IS NULL / IS NOT NULL
SELECT Nome, Estado
FROM Clientes
WHERE Estado IS NULL; -- clientes sem estado definido

SELECT Nome, Estado
FROM Clientes
WHERE Estado IS NOT NULL; -- clientes com estado definido

-- 📌 IN / NOT IN
SELECT Nome, Estado
FROM Clientes
WHERE Estado IN ('SP', 'RJ'); -- clientes de SP ou RJ

SELECT Nome, Estado
FROM Clientes
WHERE Estado NOT IN ('MG', 'BA'); -- exclui MG e BA

-- 🔗 INTERSECT: interseção entre duas consultas
SELECT ClienteID FROM Clientes
INTERSECT
SELECT ClienteID FROM Pedidos; -- clientes que têm pedidos

-- 🚫 EXCEPT: diferença entre duas consultas
SELECT ClienteID FROM Clientes
EXCEPT
SELECT ClienteID FROM Pedidos; -- clientes sem pedidos