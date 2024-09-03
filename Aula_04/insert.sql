create database Biblioteca;
use Biblioteca;
CREATE TABLE Autor (
    ID_Autor INT PRIMARY KEY,
    Nome VARCHAR(100),
    Nacionalidade VARCHAR(50),
    Data_Nascimento DATE
);
CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY KEY,
    Nome_Categoria VARCHAR(50)
);


CREATE TABLE Editora (
    ID_Editora INT PRIMARY KEY,
    Nome_Editora VARCHAR(100),
    Pais_Origem VARCHAR(50)
);

CREATE TABLE Cargo (
    ID_Cargo INT PRIMARY KEY,
    Nome_Cargo VARCHAR(50),
    Salario DECIMAL(10, 2)
);

CREATE TABLE Funcionario (
    ID_Funcionario INT PRIMARY KEY,
    Nome VARCHAR(100),
    ID_Cargo INT,
    Data_Contratacao DATE,
    FOREIGN KEY (ID_Cargo) REFERENCES Cargo(ID_Cargo)
);

CREATE TABLE Livro (
    ID_Livro INT PRIMARY KEY,
    Titulo VARCHAR(150),
    ISBN VARCHAR(13),
    Ano_Publicacao INT,
    ID_Autor INT,
    ID_Editora INT,
    ID_Categoria INT,
    FOREIGN KEY (ID_Autor) REFERENCES Autor(ID_Autor),
    FOREIGN KEY (ID_Editora) REFERENCES Editora(ID_Editora),
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
);

CREATE TABLE Exemplar (
    ID_Exemplar INT PRIMARY KEY,
    ID_Livro INT,
    Numero_Exemplar INT,
    Estado_Conservacao VARCHAR(50),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro)
);

CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(150),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Data_Cadastro DATE
);
alter table Usuario add sexo varchar(10);
alter table Usuario add CPF int(11);
alter table Usuario add Data_nascimento date ;

CREATE TABLE Emprestimo (
    ID_Emprestimo INT PRIMARY KEY,
    ID_Usuario INT,
    ID_Exemplar INT,
    Data_Emprestimo DATE,
    Data_Devolucao_Prevista DATE,
    Data_Devolucao_Real DATE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Exemplar) REFERENCES Exemplar(ID_Exemplar)
);

CREATE TABLE Caixa (
    ID_Caixa INT PRIMARY KEY,
    ID_Funcionario INT,
    Data_Abertura DATE,
    Data_Fechamento DATE,
    Valor_Inicial DECIMAL(10, 2),
    Valor_Final DECIMAL(10, 2),
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID_Funcionario)
);

CREATE TABLE NotaFiscal (
    ID_NotaFiscal INT PRIMARY KEY,
    ID_Caixa INT,
    Data_Emissao DATE,
    Valor_Total DECIMAL(10, 2),
    Forma_Pagamento VARCHAR(50),
    FOREIGN KEY (ID_Caixa) REFERENCES Caixa(ID_Caixa)
);

insert into Usuario (ID_Usuario,Nome,Endereco,Telefone,Email,Data_Cadastro, sexo, CPF , Data_nascimento ) 
values 
(12345678901 , 'Paulo Ferreira dos Santos' , 'Rua das Flores, 123 ' , '(11) 98765-4321' , 'usuario@exemplo.com.br' , 2024-08-20	, 'Masculino'	, 12345678900 ,	1990-01-01),
(44789689023 , 'Bianca Azevedo Barroso' ,'Avenida Alameda Irrae , 2089' , '(11) 97768-3423' , 'biancaaze@gmail.com' , 2023-08-20 , 'Feminino' , 98765432101 , 1985-12-31),
(25874136900 , 'Rodrigo Anjos do Santos' ,'Rua da Liberdade, 1000 casa 2'	, '(51) 93210-5678' ,'terceiro@gmail.com' ,	2024-06-01 , 'Masculino' ,25874136902 ,	2000-05-10),
(25874136900 , 'Amanda Anjos dos Santos' ,'Rua do Manifesto, 340 '	, '(51) 93910-5478' ,'liberto@gmail.com' ,	2024-09-01 , 'Feminino' ,25469086902 ,	2000-08-05)

