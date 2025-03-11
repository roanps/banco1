create database imobiliaria;

use imobiliaria;

create table imoveis(
	id int not null,
    nome char(30) not null,
    descricao char(100) not null,
    quantQuartos int not null,
    valor float not null,
    
    primary key imoveis_id (id)
);

insert into imoveis(id, nome, descricao, quantQuartos, valor)
values(1, 'casa no interior', 'nos cafundos de judas', 18, 1000000.00),
	(2, 'casa no centro', 'bem localizada', 3, 842550.00),
	(3, 'casa de dois andares', 'mais alta que as outrs', 5, 957624.54),
	(4, 'predio 5 andares', 'Vc consegue pular mais alto que um prédio', 42, 3004000.99),
	(5, 'ap 2', 'em cima do terreo', 2, 295452.54),
	(6, 'ap 29', 'otima vista', 2, 457549.98),
	(7, 'mansao do Lirio', 'Pura riqueza', 89, 18000000.96),
	(8, 'sitio do nhoatto', 'olhas as galinhas', 4, 500000.00),
	(9, 'conjugado do roan', 'faltou espaço', 1, 105000.98),
	(10, 'fazenda do f1', 'não é o f1 que vc esta pensando', 666, 1234567.89);

SELECT * 
FROM imoveis 
WHERE quantQuartos > 4;

SELECT * 
FROM imoveis 
WHERE quantQuartos < 4;

SELECT * 
FROM imoveis 
WHERE valor < 1000000;

select * from imoveis;
DROP TABLE imoveis;