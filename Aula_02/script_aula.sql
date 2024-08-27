create database livraria;
use livraria;
create table cliente 
	(
		id_cliente int(5) AUTO_INCREMENT,
        nome varchar(11) not null,
        endereco varchar(20),
        email varchar(20),
        Primary Key(id_cliente)
        );
create table pedidos
	(
		id_pedidos int(5) auto_increment,
        id_cliente int(5),
        descricao varchar(11) not null,
        datapedido varchar(11) not null,
        Primary Key(id_pedidos),
        Foreign Key (id_cliente)  References cliente(id_cliente)
	)
    

        
	
    

