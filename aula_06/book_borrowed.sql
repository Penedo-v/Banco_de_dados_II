SELECT Livro.Titulo, Emprestimo.Data_Emprestimo 
FROM Emprestimo 
JOIN Livro ON Emprestimo.ID_Livro = Livro.ID_Livro
WHERE Emprestimo.ID_Cliente = 1;
