-- Criação do Banco de Dados
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- Tabela Autor
CREATE TABLE IF NOT EXISTS Autor (
    id_autor INT(8) AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Nacionalidade VARCHAR(50),
    Data_Nascimento DATE,
    PRIMARY KEY (id_autor)
);

-- Tabela Categoria
CREATE TABLE IF NOT EXISTS Categoria (
    ID_Categoria INT AUTO_INCREMENT,
    Nome_Categoria VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Categoria)
);

-- Tabela Editora
CREATE TABLE IF NOT EXISTS Editora (
    ID_Editora INT AUTO_INCREMENT,
    Nome_Editora VARCHAR(100) NOT NULL,
    Pais_Origem VARCHAR(50),
    PRIMARY KEY (ID_Editora)
);

-- Tabela Cargo
CREATE TABLE IF NOT EXISTS Cargo (
    ID_Cargo INT AUTO_INCREMENT,
    Nome_Cargo VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2),
    PRIMARY KEY (ID_Cargo)
);

-- Tabela Funcionario
CREATE TABLE IF NOT EXISTS Funcionario (
    ID_Funcionario INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    ID_Cargo INT,
    Data_Contratacao DATE,
    PRIMARY KEY (ID_Funcionario),
    FOREIGN KEY (ID_Cargo) REFERENCES Cargo(ID_Cargo)
);

-- Tabela Livro
CREATE TABLE IF NOT EXISTS Livro (
    ID_Livro INT AUTO_INCREMENT,
    Titulo VARCHAR(150) NOT NULL,
    ISBN VARCHAR(13),
    Ano_Publicacao INT,
    ID_Autor INT,
    ID_Editora INT,
    ID_Categoria INT,
    PRIMARY KEY (ID_Livro),
    FOREIGN KEY (ID_Autor) REFERENCES Autor(id_autor),
    FOREIGN KEY (ID_Editora) REFERENCES Editora(ID_Editora),
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
);

-- Tabela Exemplar
CREATE TABLE IF NOT EXISTS Exemplar (
    ID_Exemplar INT AUTO_INCREMENT,
    ID_Livro INT,
    Numero_Exemplar INT NOT NULL,
    Estado_Conservacao VARCHAR(50),
    PRIMARY KEY (ID_Exemplar),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro)
);

-- Tabela Usuario
CREATE TABLE IF NOT EXISTS Usuario (
    ID_Usuario INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(150),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Data_Cadastro DATE,
    Sexo VARCHAR(10),
    CPF VARCHAR(11) UNIQUE NOT NULL,
    Data_Nascimento DATE,
    PRIMARY KEY (ID_Usuario)
);

-- Tabela Emprestimo
CREATE TABLE IF NOT EXISTS Emprestimo (
    ID_Emprestimo INT AUTO_INCREMENT,
    ID_Usuario INT,
    ID_Exemplar INT,
    Data_Emprestimo DATE,
    Data_Devolucao_Prevista DATE,
    Data_Devolucao_Real DATE,
    PRIMARY KEY (ID_Emprestimo),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Exemplar) REFERENCES Exemplar(ID_Exemplar)
);

-- Tabela Caixa
CREATE TABLE IF NOT EXISTS Caixa (
    ID_Caixa INT AUTO_INCREMENT,
    ID_Funcionario INT,
    Data_Abertura DATE,
    Data_Fechamento DATE,
    Valor_Inicial DECIMAL(10, 2),
    Valor_Final DECIMAL(10, 2),
    PRIMARY KEY (ID_Caixa),
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID_Funcionario)
);

-- Tabela NotaFiscal
CREATE TABLE IF NOT EXISTS NotaFiscal (
    ID_NotaFiscal INT AUTO_INCREMENT,
    ID_Caixa INT,
    Data_Emissao DATE,
    Valor_Total DECIMAL(10, 2),
    Forma_Pagamento VARCHAR(50),
    PRIMARY KEY (ID_NotaFiscal),
    FOREIGN KEY (ID_Caixa) REFERENCES Caixa(ID_Caixa)
);

-- Criação do Banco de Dados
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- Tabela Autor
CREATE TABLE IF NOT EXISTS Autor (
    id_autor INT(8) AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Nacionalidade VARCHAR(50),
    Data_Nascimento DATE,
    PRIMARY KEY (id_autor)
);

-- Tabela Categoria
CREATE TABLE IF NOT EXISTS Categoria (
    ID_Categoria INT AUTO_INCREMENT,
    Nome_Categoria VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Categoria)
);

-- Tabela Editora
CREATE TABLE IF NOT EXISTS Editora (
    ID_Editora INT AUTO_INCREMENT,
    Nome_Editora VARCHAR(100) NOT NULL,
    Pais_Origem VARCHAR(50),
    PRIMARY KEY (ID_Editora)
);

-- Tabela Cargo
CREATE TABLE IF NOT EXISTS Cargo (
    ID_Cargo INT AUTO_INCREMENT,
    Nome_Cargo VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2),
    PRIMARY KEY (ID_Cargo)
);

-- Tabela Funcionario
CREATE TABLE IF NOT EXISTS Funcionario (
    ID_Funcionario INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    ID_Cargo INT,
    Data_Contratacao DATE,
    PRIMARY KEY (ID_Funcionario),
    FOREIGN KEY (ID_Cargo) REFERENCES Cargo(ID_Cargo)
);

-- Tabela Livro
CREATE TABLE IF NOT EXISTS Livro (
    ID_Livro INT AUTO_INCREMENT,
    Titulo VARCHAR(150) NOT NULL,
    ISBN VARCHAR(13),
    Ano_Publicacao INT,
    ID_Autor INT,
    ID_Editora INT,
    ID_Categoria INT,
    PRIMARY KEY (ID_Livro),
    FOREIGN KEY (ID_Autor) REFERENCES Autor(id_autor),
    FOREIGN KEY (ID_Editora) REFERENCES Editora(ID_Editora),
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
);

-- Tabela Exemplar
CREATE TABLE IF NOT EXISTS Exemplar (
    ID_Exemplar INT AUTO_INCREMENT,
    ID_Livro INT,
    Numero_Exemplar INT NOT NULL,
    Estado_Conservacao VARCHAR(50),
    PRIMARY KEY (ID_Exemplar),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro)
);

-- Tabela Usuario
CREATE TABLE IF NOT EXISTS Usuario (
    ID_Usuario INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(150),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Data_Cadastro DATE,
    Sexo VARCHAR(10),
    CPF VARCHAR(11) UNIQUE NOT NULL,
    Data_Nascimento DATE,
    PRIMARY KEY (ID_Usuario)
);

-- Tabela Emprestimo
CREATE TABLE IF NOT EXISTS Emprestimo (
    ID_Emprestimo INT AUTO_INCREMENT,
    ID_Usuario INT,
    ID_Exemplar INT,
    Data_Emprestimo DATE,
    Data_Devolucao_Prevista DATE,
    Data_Devolucao_Real DATE,
    PRIMARY KEY (ID_Emprestimo),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Exemplar) REFERENCES Exemplar(ID_Exemplar)
);

-- Tabela Caixa
CREATE TABLE IF NOT EXISTS Caixa (
    ID_Caixa INT AUTO_INCREMENT,
    ID_Funcionario INT,
    Data_Abertura DATE,
    Data_Fechamento DATE,
    Valor_Inicial DECIMAL(10, 2),
    Valor_Final DECIMAL(10, 2),
    PRIMARY KEY (ID_Caixa),
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID_Funcionario)
);

-- Tabela NotaFiscal
CREATE TABLE IF NOT EXISTS NotaFiscal (
    ID_NotaFiscal INT AUTO_INCREMENT,
    ID_Caixa INT,
    Data_Emissao DATE,
    Valor_Total DECIMAL(10, 2),
    Forma_Pagamento VARCHAR(50),
    PRIMARY KEY (ID_NotaFiscal),
    FOREIGN KEY (ID_Caixa) REFERENCES Caixa(ID_Caixa)
);

-- Inserção de Dados na Tabela Autor
INSERT INTO Autor (Nome, Nacionalidade, Data_Nascimento) VALUES
('Jorge Amado', 'Brasileiro', '1912-08-10'),
('Machado de Assis', 'Brasileiro', '1839-06-21'),
('Clarice Lispector', 'Brasileira', '1920-12-10'),
('Paulo Coelho', 'Brasileiro', '1947-08-24'),
('Cecília Meireles', 'Brasileira', '1901-11-07'),
('Carlos Drummond de Andrade', 'Brasileiro', '1902-10-31'),
('Graciliano Ramos', 'Brasileiro', '1892-10-27'),
('Monteiro Lobato', 'Brasileiro', '1882-04-18'),
('Lygia Fagundes Telles', 'Brasileira', '1923-04-19'),
('Fernando Sabino', 'Brasileiro', '1923-10-12'),
('Érico Veríssimo', 'Brasileiro', '1905-12-17'),
('Rubem Braga', 'Brasileiro', '1913-01-12'),
('Raquel de Queiroz', 'Brasileira', '1910-11-17'),
('João Guimarães Rosa', 'Brasileiro', '1908-06-27'),
('Nelson Rodrigues', 'Brasileiro', '1912-08-23'),
('Mário de Andrade', 'Brasileiro', '1893-10-09'),
('Oswald de Andrade', 'Brasileiro', '1890-01-11'),
('Vinicius de Moraes', 'Brasileiro', '1913-10-19'),
('Ana Maria Machado', 'Brasileira', '1941-12-24'),
('Marina Colasanti', 'Brasileira', '1937-09-26'),
('Ruth Rocha', 'Brasileira', '1931-03-02'),
('Ziraldo Alves Pinto', 'Brasileiro', '1932-10-24'),
('João Ubaldo Ribeiro', 'Brasileiro', '1941-01-23'),
('Luis Fernando Verissimo', 'Brasileiro', '1936-09-26'),
('Moacyr Scliar', 'Brasileiro', '1937-03-23'),
('Patativa do Assaré', 'Brasileiro', '1909-03-05'),
('Adélia Prado', 'Brasileira', '1935-12-13'),
('Manuel Bandeira', 'Brasileiro', '1886-04-19'),
('Murilo Mendes', 'Brasileiro', '1901-05-13'),
('João Cabral de Melo Neto', 'Brasileiro', '1920-01-09');

-- Inserção de Dados na Tabela Categoria
INSERT INTO Categoria (Nome_Categoria) VALUES
('Romance'),
('Poesia'),
('Conto'),
('Crônica'),
('Infantil'),
('Biografia'),
('Fantasia'),
('Ficção Científica'),
('História'),
('Drama'),
('Aventura'),
('Mistério'),
('Autoajuda'),
('Tecnologia'),
('Educação'),
('Negócios'),
('Saúde'),
('Esportes'),
('Arte'),
('Música'),
('Gastronomia'),
('Viagem'),
('Humor'),
('Religião'),
('Filosofia'),
('Psicologia'),
('Direito'),
('Política'),
('Economia'),
('Ciência');

-- Inserção de Dados na Tabela Editora
INSERT INTO Editora (Nome_Editora, Pais_Origem) VALUES
('Companhia das Letras', 'Brasil'),
('Editora Record', 'Brasil'),
('Editora Rocco', 'Brasil'),
('Editora Saraiva', 'Brasil'),
('Editora Moderna', 'Brasil'),
('Editora Ática', 'Brasil'),
('Editora Globo', 'Brasil'),
('Editora Objetiva', 'Brasil'),
('Editora L&PM', 'Brasil'),
('Editora Paz e Terra', 'Brasil'),
('Editora Planeta', 'Espanha'),
('HarperCollins', 'Estados Unidos'),
('Penguin Books', 'Reino Unido'),
('Oxford University Press', 'Reino Unido'),
('Cambridge University Press', 'Reino Unido'),
('Elsevier', 'Holanda'),
('Springer', 'Alemanha'),
('John Wiley & Sons', 'Estados Unidos'),
('McGraw-Hill', 'Estados Unidos'),
('Pearson', 'Reino Unido'),
('Simon & Schuster', 'Estados Unidos'),
('Hachette Livre', 'França'),
('Bloomsbury', 'Reino Unido'),
('Cengage', 'Estados Unidos'),
('FTD Educação', 'Brasil'),
('Editora Nobel', 'Brasil'),
('Editora Vozes', 'Brasil'),
('Sextante', 'Brasil'),
('Aleph', 'Brasil'),
('Intrínseca', 'Brasil');

-- Inserção de Dados na Tabela Cargo
INSERT INTO Cargo (Nome_Cargo, Salario) VALUES
('Bibliotecário', 3000.00),
('Atendente', 2000.00),
('Gerente', 5000.00),
('Assistente Administrativo', 2500.00),
('Auxiliar de Limpeza', 1500.00),
('Segurança', 2200.00),
('Recepcionista', 1800.00),
('Analista de TI', 4000.00),
('Contador', 3500.00),
('Marketing', 2800.00),
('Estagiário', 1200.00),
('Supervisor', 4500.00),
('Auxiliar de Biblioteca', 1800.00),
('Analista de RH', 3200.00),
('Coordenador', 4800.00),
('Operador de Caixa', 1900.00),
('Motorista', 2000.00),
('Encarregado de Estoque', 2300.00),
('Jardineiro', 1600.00),
('Faxineiro', 1400.00);

-- Inserção de Dados na Tabela Funcionario
INSERT INTO Funcionario (Nome, ID_Cargo, Data_Contratacao) VALUES
('Alice Ferreira', 1, '2020-01-15'),
('Bruno Souza', 2, '2021-03-22'),
('Carla Mendes', 3, '2019-07-10'),
('Diego Silva', 4, '2022-05-18'),
('Eduarda Costa', 5, '2020-11-25'),
('Fernando Lima', 6, '2021-09-30'),
('Gabriela Alves', 7, '2020-06-05'),
('Henrique Gomes', 8, '2019-12-12'),
('Isabela Rocha', 9, '2021-08-19'),
('João Pedro', 10, '2022-02-28'),
('Karina Martins', 11, '2020-04-17'),
('Leonardo Santos', 12, '2021-07-23'),
('Mariana Oliveira', 13, '2019-09-05'),
('Nicolas Pereira', 14, '2022-03-15'),
('Olivia Ribeiro', 15, '2020-10-20'),
('Paulo Henrique', 16, '2021-12-01'),
('Queila Fernandes', 17, '2020-08-14'),
('Ricardo Nunes', 18, '2019-11-29'),
('Sabrina Lopes', 19, '2021-05-06'),
('Thiago Carvalho', 20, '2022-01-10'),
('Ursula Dias', 1, '2020-02-18'),
('Victor Costa', 2, '2021-06-25'),
('Wesley Rodrigues', 3, '2019-08-15'),
('Ximena Lopes', 4, '2022-04-22'),
('Yuri Almeida', 5, '2020-12-05'),
('Zoe Martins', 6, '2021-10-10'),
('Adriana Silva', 7, '2020-07-08'),
('Bruno Oliveira', 8, '2019-11-20'),
('Caroline Souza', 9, '2021-09-15'),
('Daniel Pereira', 10, '2022-03-01');

-- Inserção de Dados na Tabela Usuario
INSERT INTO Usuario (Nome, Endereco, Telefone, Email, Data_Cadastro, Sexo, CPF, Data_Nascimento) VALUES
('João Silva', 'Rua das Flores, 123, São Paulo, SP', '(11) 98765-4321', 'joao.silva@example.com', '2023-01-15', 'Masculino', '12345678901', '1990-05-10'),
('Maria Oliveira', 'Av. Brasil, 456, Rio de Janeiro, RJ', '(21) 91234-5678', 'maria.oliveira@example.com', '2022-11-10', 'Feminino', '23456789012', '1985-09-25'),
('Pedro Santos', 'Rua João Pedro, 789, Belo Horizonte, MG', '(31) 99876-5432', 'pedro.santos@example.com', '2023-03-20', 'Masculino', '34567890123', '1995-07-15'),
('Ana Costa', 'Av. Atlântica, 321, Fortaleza, CE', '(85) 96543-2109', 'ana.costa@example.com', '2021-06-05', 'Feminino', '45678901234', '1988-11-02'),
('Lucas Souza', 'Rua Rio Branco, 654, Curitiba, PR', '(41) 98765-1234', 'lucas.souza@example.com', '2020-08-18', 'Masculino', '56789012345', '1992-03-30'),
('Bruna Pereira', 'Rua das Palmeiras, 123, Salvador, BA', '(71) 98765-4321', 'bruna.pereira@example.com', '2022-09-10', 'Feminino', '67890123456', '1991-04-18'),
('Carlos Andrade', 'Av. Sete de Setembro, 789, Recife, PE', '(81) 91234-5678', 'carlos.andrade@example.com', '2021-12-22', 'Masculino', '78901234567', '1987-02-14'),
('Daniela Azevedo', 'Rua dos Ipês, 654, Porto Alegre, RS', '(51) 96543-2109', 'daniela.azevedo@example.com', '2023-04-05', 'Feminino', '89012345678', '1993-10-30'),
('Eduardo Lima', 'Rua Maranhão, 321, Belém, PA', '(91) 98765-1234', 'eduardo.lima@example.com', '2020-07-18', 'Masculino', '90123456789', '1994-12-05'),
('Fernanda Souza', 'Av. dos Bandeirantes, 101, Manaus, AM', '(92) 91234-8765', 'fernanda.souza@example.com', '2022-11-30', 'Feminino', '01234567890', '1989-06-20'),
('Gabriel Martins', 'Rua Silva Jardim, 202, Florianópolis, SC', '(48) 99876-5432', 'gabriel.martins@example.com', '2021-03-22', 'Masculino', '11223344556', '1996-09-12'),
('Helena Dias', 'Rua Pedro Álvares, 404, Goiânia, GO', '(62) 96543-2109', 'helena.dias@example.com', '2022-02-15', 'Feminino', '22334455667', '1985-01-25'),
('Igor Rodrigues', 'Rua Paraná, 505, Campo Grande, MS', '(67) 98765-4321', 'igor.rodrigues@example.com', '2020-06-18', 'Masculino', '33445566778', '1991-11-01'),
('Júlia Ferreira', 'Rua Amazonas, 606, Vitória, ES', '(27) 91234-5678', 'julia.ferreira@example.com', '2023-01-22', 'Feminino', '44556677889', '1992-05-10'),
('Kevin Ramos', 'Rua Bahia, 707, Teresina, PI', '(86) 96543-2109', 'kevin.ramos@example.com', '2021-10-30', 'Masculino', '55667788990', '1995-03-15'),
('Laura Barbosa', 'Av. Rio Branco, 808, João Pessoa, PB', '(83) 99876-5432', 'laura.barbosa@example.com', '2023-05-10', 'Feminino', '66778899001', '1997-02-08'),
('Marcos Almeida', 'Rua Ceará, 909, Maceió, AL', '(82) 98765-1234', 'marcos.almeida@example.com', '2022-08-25', 'Masculino', '77889900112', '1993-07-25'),
('Nathalia Melo', 'Rua Pernambuco, 1010, Natal, RN', '(84) 91234-8765', 'nathalia.melo@example.com', '2020-09-10', 'Feminino', '88990011223', '1988-11-18'),
('Otávio Vieira', 'Av. Goiás, 111, Aracaju, SE', '(79) 96543-2109', 'otavio.vieira@example.com', '2021-11-22', 'Masculino', '99001122334', '1994-06-14'),
('Paula Cunha', 'Rua da Praia, 222, São Luís, MA', '(98) 98765-4321', 'paula.cunha@example.com', '2023-03-15', 'Feminino', '00112233445', '1990-04-05'),
('Quintino Silva', 'Rua Pará, 333, Palmas, TO', '(63) 91234-5678', 'quintino.silva@example.com', '2022-06-30', 'Masculino', '11223344556', '1992-12-25'),
('Rafaela Batista', 'Av. Santos Dumont, 444, Boa Vista, RR', '(95) 96543-2109', 'rafaela.batista@example.com', '2021-04-20', 'Feminino', '22334455667', '1986-09-07'),
('Samuel Costa', 'Rua Acre, 555, Macapá, AP', '(96) 99876-5432', 'samuel.costa@example.com', '2020-12-01', 'Masculino', '33445566778', '1995-08-29'),
('Tânia Nunes', 'Rua Paraná, 666, Porto Velho, RO', '(69) 98765-1234', 'tania.nunes@example.com', '2022-07-25', 'Feminino', '44556677889', '1990-10-18'),
('Ubirajara Lopes', 'Rua Santa Catarina, 777, Brasília, DF', '(61) 91234-8765', 'ubirajara.lopes@example.com', '2021-09-10', 'Masculino', '55667788990', '1987-05-12'),
('Vanessa Monteiro', 'Av. Paulista, 888, São Paulo, SP', '(11) 99876-5432', 'vanessa.monteiro@example.com', '2023-02-28', 'Feminino', '66778899001', '1996-11-05'),
('Wagner Ribeiro', 'Rua das Acácias, 999, Curitiba, PR', '(41) 98765-4321', 'wagner.ribeiro@example.com', '2021-06-12', 'Masculino', '77889900112', '1991-09-23'),
('Ximena Freitas', 'Rua das Hortênsias, 1001, Belo Horizonte, MG', '(31) 91234-5678', 'ximena.freitas@example.com', '2020-11-15', 'Feminino', '88990011223', '1989-03-21'),
('Yuri Menezes', 'Av. dos Jacarandás, 1102, Porto Alegre, RS', '(51) 96543-2109', 'yuri.menezes@example.com', '2022-10-07', 'Masculino', '99001122334', '1993-12-15'),
('Zélia Rocha', 'Rua dos Coqueiros, 1203, Salvador, BA', '(71) 98765-1234', 'zelia.rocha@example.com', '2021-05-01', 'Feminino', '00112233445', '1992-07-17');

-- Inserção de Dados na Tabela Livro
INSERT INTO Livro (Titulo, ISBN, Ano_Publicacao, ID_Autor, ID_Editora, ID_Categoria) VALUES
('Capitães da Areia', '9781234567890', 1937, 1, 1, 1),
('Dom Casmurro', '9780987654321', 1899, 2, 2, 1),
('A Hora da Estrela', '9781122334455', 1977, 3, 3, 1),
('O Alquimista', '9785566778899', 1988, 4, 4, 7),
('Viagem', '9786677889900', 1939, 5, 2, 2),
('Sentimento do Mundo', '9787788990011', 1940, 6, 1, 2),
('Vidas Secas', '9788899001122', 1938, 7, 5, 1),
('Sítio do Picapau Amarelo', '9789900112233', 1920, 8, 6, 5),
('Ciranda de Pedra', '9781011121314', 1954, 9, 7, 1),
('O Encontro Marcado', '9781213141516', 1956, 10, 8, 1),
('O Tempo e o Vento', '9781415161718', 1949, 11, 9, 1),
('A Borboleta Amarela', '9781617181920', 1936, 12, 10, 2),
('O Quinze', '9781819202122', 1930, 13, 3, 1),
('Grande Sertão: Veredas', '9782021222324', 1956, 14, 4, 1),
('Vestido de Noiva', '9782223242526', 1943, 15, 5, 10),
('Macunaíma', '9782425262728', 1928, 16, 6, 1),
('Serafim Ponte Grande', '9782627282930', 1933, 17, 7, 1),
('Para Viver um Grande Amor', '9782829303132', 1962, 18, 8, 2),
('Bisa Bia, Bisa Bel', '9783031323334', 1982, 19, 9, 5),
('Uma Ideia Toda Azul', '9783233343536', 1979, 20, 10, 5),
('Marcelo, Marmelo, Martelo', '9783435363738', 1976, 21, 1, 5),
('O Menino Maluquinho', '9783637383940', 1980, 22, 2, 5),
('Sargento Getúlio', '9783839404142', 1971, 23, 3, 1),
('O Analista de Bagé', '9784041424344', 1981, 24, 4, 3),
('A Mulher que Escreveu a Bíblia', '9784243444546', 1999, 25, 5, 1),
('Cante lá que eu canto cá', '9784445464748', 1978, 26, 6, 2),
('Bagagem', '9784647484950', 1976, 27, 7, 2),
('Libertinagem', '9784849505152', 1930, 28, 8, 2),
('Poemas', '9785051525354', 1930, 29, 8, 2),
('Morte e Vida Severina', '9785253545556', 1955, 30, 9, 2);

-- Inserção de Dados na Tabela Exemplar
INSERT INTO Exemplar (ID_Livro, Numero_Exemplar, Estado_Conservacao) VALUES
(1, 1, 'Bom'),
(1, 2, 'Novo'),
(2, 1, 'Regular'),
(2, 2, 'Bom'),
(3, 1, 'Novo'),
(3, 2, 'Bom'),
(4, 1, 'Bom'),
(5, 1, 'Regular'),
(6, 1, 'Bom'),
(7, 1, 'Novo'),
(8, 1, 'Bom'),
(9, 1, 'Regular'),
(10,1, 'Bom'),
(11,1, 'Bom'),
(12,1, 'Novo'),
(13,1, 'Bom'),
(14,1, 'Regular'),
(15,1, 'Bom'),
(16,1, 'Novo'),
(17,1, 'Bom'),
(18,1, 'Regular'),
(19,1, 'Bom'),
(20,1, 'Novo'),
(21,1, 'Bom'),
(22,1, 'Regular'),
(23,1, 'Bom'),
(24,1, 'Novo'),
(25,1, 'Bom'),
(26,1, 'Regular'),
(27,1, 'Bom'),
(28,1, 'Novo'),
(29,1, 'Bom'),
(30,1, 'Regular');

-- Inserção de Dados na Tabela Emprestimo
INSERT INTO Emprestimo (ID_Usuario, ID_Exemplar, Data_Emprestimo, Data_Devolucao_Prevista, Data_Devolucao_Real) VALUES
(1, 1, '2024-09-01', '2024-09-15', NULL),
(2, 2, '2024-09-02', '2024-09-16', NULL),
(3, 3, '2024-09-03', '2024-09-17', NULL),
(4, 4, '2024-09-04', '2024-09-18', NULL),
(5, 5, '2024-09-05', '2024-09-19', NULL),
(6, 6, '2024-09-06', '2024-09-20', NULL),
(7, 7, '2024-09-07', '2024-09-21', NULL),
(8, 8, '2024-09-08', '2024-09-22', NULL),
(9, 9, '2024-09-09', '2024-09-23', NULL),
(10,10,'2024-09-10', '2024-09-24', NULL),
(11,11,'2024-09-11', '2024-09-25', NULL),
(12,12,'2024-09-12', '2024-09-26', NULL),
(13,13,'2024-09-13', '2024-09-27', NULL),
(14,14,'2024-09-14', '2024-09-28', NULL),
(15,15,'2024-09-15', '2024-09-29', NULL),
(16,16,'2024-09-16', '2024-09-30', NULL),
(17,17,'2024-09-17', '2024-10-01', NULL),
(18,18,'2024-09-18', '2024-10-02', NULL),
(19,19,'2024-09-19', '2024-10-03', NULL),
(20,20,'2024-09-20', '2024-10-04', NULL),
(21,21,'2024-09-21', '2024-10-05', NULL),
(22,22,'2024-09-22', '2024-10-06', NULL),
(23,23,'2024-09-23', '2024-10-07', NULL),
(24,24,'2024-09-24', '2024-10-08', NULL),
(25,25,'2024-09-25', '2024-10-09', NULL),
(26,26,'2024-09-26', '2024-10-10', NULL),
(27,27,'2024-09-27', '2024-10-11', NULL),
(28,28,'2024-09-28', '2024-10-12', NULL),
(29,29,'2024-09-29', '2024-10-13', NULL),
(30,30,'2024-09-30', '2024-10-14', NULL);

-- Inserção de Dados na Tabela Caixa
INSERT INTO Caixa (ID_Funcionario, Data_Abertura, Data_Fechamento, Valor_Inicial, Valor_Final) VALUES
(1, '2024-09-01', '2024-09-01', 1000.00, 1500.00),
(2, '2024-09-02', '2024-09-02', 1000.00, 1300.00),
(3, '2024-09-03', '2024-09-03', 1000.00, 1400.00),
(4, '2024-09-04', '2024-09-04', 1000.00, 1600.00),
(5, '2024-09-05', '2024-09-05', 1000.00, 1550.00),
(6, '2024-09-06', '2024-09-06', 1000.00, 1450.00),
(7, '2024-09-07', '2024-09-07', 1000.00, 1500.00),
(8, '2024-09-08', '2024-09-08', 1000.00, 1350.00),
(9, '2024-09-09', '2024-09-09', 1000.00, 1600.00),
(10,'2024-09-10', '2024-09-10', 1000.00, 1500.00);

-- Inserção de Dados na Tabela NotaFiscal
INSERT INTO NotaFiscal (ID_Caixa, Data_Emissao, Valor_Total, Forma_Pagamento) VALUES
(1, '2024-09-01', 100.00, 'Dinheiro'),
(1, '2024-09-01', 150.00, 'Cartão de Crédito'),
(2, '2024-09-02', 200.00, 'Cartão de Débito'),
(2, '2024-09-02', 250.00, 'Dinheiro'),
(3, '2024-09-03', 180.00, 'Cartão de Crédito'),
(3, '2024-09-03', 220.00, 'Dinheiro'),
(4, '2024-09-04', 130.00, 'Cartão de Débito'),
(4, '2024-09-04', 170.00, 'Dinheiro'),
(5, '2024-09-05', 190.00, 'Cartão de Crédito'),
(5, '2024-09-05', 160.00, 'Dinheiro'),
(6, '2024-09-06', 210.00, 'Cartão de Débito'),
(6, '2024-09-06', 140.00, 'Dinheiro'),
(7, '2024-09-07', 230.00, 'Cartão de Crédito'),
(7, '2024-09-07', 150.00, 'Dinheiro'),
(8, '2024-09-08', 120.00, 'Cartão de Débito'),
(8, '2024-09-08', 180.00, 'Dinheiro'),
(9, '2024-09-09', 240.00, 'Cartão de Crédito'),
(9, '2024-09-09', 190.00, 'Dinheiro'),
(10,'2024-09-10', 160.00, 'Cartão de Débito'),
(10,'2024-09-10', 170.00, 'Dinheiro');

select * from Usuario