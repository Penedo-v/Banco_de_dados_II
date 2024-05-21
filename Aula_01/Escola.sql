create database escola;
use escola;
create table alunos(
idaluno int primary key,
nomealuno varchar(50) not null,
fone varchar(15),
endereco varchar(45),
email varchar (40)
);
   select * from alunos;

insert into alunos (idaluno,NomeAluno,fone,Endereco)
values (02,'Mariane','11956134761','Rua Maringá, 22'),
        (03,'Nikolas','11974275912','Rua California,31'),
	(04,'joão','11972185634','Rua loef green,08'),
                (05,'Aline','11958950201','Rua Sta Cruz,19');

alter table alunos
modify column email varchar(50);
alter table alunos
add Discilina varchar (30);
alter table alunos
drop email;
