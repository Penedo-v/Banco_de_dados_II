select * from Usuario;
where ID_usuario >4 and ID_usuario<10
order by nome asc


select ID_Usuario , CPF , Nome, sexo, Data_nascimento from Usuario
where sexo = 'Feminino'
order by Nome desc

select id_cliente, cpf, nome, sexo, idade from clientes
where not sexo = 'feminino'
order by nome desc

select id_cliente, senha from clientes
where senha = '123456' and id_cliente = 3


