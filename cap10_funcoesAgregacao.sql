 
 -- Tabela vendedores
 create table vendedores(
 	idvendedor int primary key auto_increment, 
 	nome varchar(30),
 	sexo char(1),
 	janeiro float(10,2),
 	fevereiro float(10,2),
 	marco float(10,2)
 );

 insert into vendedores values 
 	(null, "Carlos", "M", 4654.52, 7468.23, 6354.47),
 	(null, "João", "M", 4654.52, 8798.23, 2584.47),
 	(null, "José", "M", 4354.52, 4589.23, 5728.47),
 	(null, "Jessica", "F", 6554.52, 8798.23, 4448.47),
 	(null, "Maria", "F", 4578.52, 5865.23, 4571.47),
 	(null, "Clara", "F", 3554.52, 1258.23, 4589.47),
 	(null, "Anderson", "M", 3554.52, 2554.23, 4448.47),
 	(null, "Ivone", "F", 3554.52, 1258.23, 45879.47),
 	(null, "Célia", "F", 1859.52, 4768.23, 4758.47);



select MAX(janeiro) 
from vendedores; 

select MIN(fevereiro) 
from vendedores; 

select AVG(marco) 
from vendedores;

select truncate(AVG(marco), 2) as media_marco  
from vendedores;

select sum(janeiro) 
from vendedores;



--- Vendas por sexo
select sexo, sum(marco) as total 
from vendedores
group by sexo;