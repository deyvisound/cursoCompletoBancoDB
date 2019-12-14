-- Criando tabela curso
Create table cursos(
	idcurso int primary key auto_increment,
	nome varchar(30) not null,
	horas int(3) not null,
	valor float(10,2) not null
);

insert into cursos values 
	(null, "Banco de dados fundamental", 25, 200.00);



delimiter $

create procedure cad_curso(p_nome varchar(30), p_horas int(3), p_preco float(10,2))
begin
	insert into cursos values 
	(null, p_nome, p_horas, p_preco);
end 
$


call cad_curso("BI SQL_SERVER", 35, 200.22)


--- Procedure para ver cursos
delimiter $

create procedure sel_curso()
begin
	select idcurso, nome, horas, valor 
	from cursos;
end 
$

delimiter ;