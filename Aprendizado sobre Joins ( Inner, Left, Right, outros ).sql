-- Aprendizado sobre Joins ( Inner, Left, Right, outros )

-- INNER JOIN : Mostra s� os registros que t�m correspond�ncia nas duas tabelas.
SELECT 
    p.Nome AS Produto,
    c.Nome AS Categoria,
    f.Nome AS Fornecedor,
    p.Preco
FROM Produtos p
INNER JOIN Categorias c ON p.CategoriaID = c.CategoriaID
INNER JOIN Fornecedores f ON p.FornecedorID = f.FornecedorID;


-- LEFT JOIN: Mostra todos os registros da tabela da esquerda, mesmo se n�o tiver correspond�ncia na tabela da direita.
SELECT 
    c.Nome AS Categoria,
    p.Nome AS Produto
FROM Categorias c
LEFT JOIN Produtos p ON c.CategoriaID = p.CategoriaID;

-- RIGHT JOIN: Mostra todos os registros da tabela da direita, mesmo sem correspond�ncia na esquerda.
SELECT 
    c.Nome AS Categoria,
    p.Nome AS Produto
FROM Categorias c
RIGHT JOIN Produtos p ON c.CategoriaID = p.CategoriaID;
