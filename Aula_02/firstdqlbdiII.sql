CREATE DATABASE BIBLIOTECA;
use BIBLIOTECA;
create table tbcliente(
idcliente int (6) auto_increment,
nome varchar (20) not null ,
cpf int (11) not null,
endereco varchar (30) not null,
email varchar (20)  not null ,
telefone varchar (12) not null,
datanasc int (8) not null,
primary key (idcliente)
);
create table tbpedidos(
id_pedidos int(5) auto_increment,
idcliente int(5),
descricao varchar(11) not null,
datapedido varchar(11) not null,
primary key(id_pedidos),
foreign key (idcliente) references tbcliente(idcliente)
);
