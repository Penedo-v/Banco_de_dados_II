SELECT DISTINCT Categoria 
FROM Livros;
--------------------------
SELECT Titulo 
FROM Livros 
WHERE ID_Livro NOT IN (SELECT ID_Livro FROM Emprestimo);
--------------------------
SELECT TOP 5 Titulo, Data_Cadastro 
FROM Livros 
ORDER BY Data_Cadastro DESC;
