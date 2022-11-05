create database Venda;
use Venda;

drop database venda;

create table endereco (
idEndereco int primary key auto_increment,
cep char(9),
bairro varchar(45),
cidade varchar(45)
);

insert into endereco (cep,bairro,cidade) values 
	('08583440','Pira','Guarulhos'),
	('08582340','Pimentas','Guarulhos'),
	('08585440','Barra Funda','Sao Paulo'),
	('08585640','Barreto','Aruja');

create table EnderecoCliente (
fkEndereco int,
fkCliente int,
numero int,
complemento varchar(45),
foreign key (fkEndereco) references endereco (idEndereco),
foreign key (fkCliente) references cliente (idCliente),
primary key (fkEndereco,fkCliente)
);

insert into EnderecoCliente values
	(1,1,339,'Em frente a praca'),
	(3,2,501,'Perto do mercado'),
	(2,3,234,'Andar 10'),
	(2,4,653,'Proximo a padaria');


create table cliente (
idCliente int primary key auto_increment,
nome varchar(45),
email varchar(45),
fkIndicador int,
foreign key (fkIndicador) references cliente (idCliente)
);

insert into cliente (nome,email) values 
	('Victor','victor@gmail.com'),
	('Iolanda','iolanda@gmail.com'),
	('Jose','jose@gmail.com'),
	('Vinicius','vinicius@gmail.com');
    
update cliente set fkIndicador = 2
	where idCliente = 1;
update cliente set fkIndicador = 2
	where idCliente = 3;
update cliente set fkIndicador = 1
	where idCliente = 4;
update cliente set fkIndicador = 4
	where idCliente = 2;
    

create table venda (
idVenda int,
total decimal(10,2),
data date,
fkCliente int,
foreign key (fkCliente) references cliente (idCliente),
primary key (idVenda,fkCliente)
);

insert into venda values 
	(1,'5000','2022-02-08',1),
	(1,'4599','2022-05-07',3),
	(1,'4099','2022-07-05',4),
	(1,'3999','2022-09-04',2);
    
create table VendaProduto (
idVendaProduto int auto_increment,
fkVenda int,
fkProduto int,
fkCliente int,
desconto decimal(10,2),
foreign key (fkVenda) references venda (idVenda),
foreign key (fkProduto) references produto (idProduto),
foreign key (fkCliente) references cliente (idCliente),
primary key (idVendaProduto,fkVenda,fkProduto,fkCliente)
);
 
insert into VendaProduto (fkVenda,fkProduto,fkCliente,desconto) values 
	(1,3,1,'10'),
	(1,4,3,'50'),
	(1,2,4,'70'),
	(1,1,2,'60');

create table produto (
idProduto int primary key auto_increment,
nome varchar(45),
descricao varchar(45),
preco decimal(10,2)
);

insert into produto (nome,descricao,preco) values
	('Pc gamer','Ryzen 3600x + rx 580','4599.99'),
	('Cadeira gamer','DT3 sports','3599.99'),
	('Mouse gamer','Razer mamba elite','1099.99'),
	('Monitor gamer','Acer 165hz','3599.99');

select * from cliente;
select * from endereco;
select * from enderecocliente;
select * from produto;
select * from venda;
select * from vendaproduto;

select * from cliente join venda on fkCliente = idCliente;

select * from cliente join venda on fkCliente = idCliente
		where idCliente = 1;
        
select * from cliente as c join cliente as i on i.fkIndicador = c.idCliente;

select * from cliente as c join cliente as i on i.fkIndicador = c.idCliente
		where c.idCliente = 1;
        
select * from cliente as c join cliente as i on i.fkIndicador = c.idCliente join venda as v join vendaproduto as vp ON v.idVenda = vp.fkVenda join produto as p on vp.fkProduto = p.idProduto;

select v.data, p.nome,count(idProduto)  from venda as v join vendaproduto as vp ON v.idVenda = vp.fkVenda join produto as p on vp.fkProduto = p.idProduto
			where idVenda = 3;

select p.nome, p.preco, sum(count(vp.fkProduto)) from vendaproduto as vp join venda as v ON v.idVenda = vp.fkVenda join produto as p on vp.fkProduto = p.idProduto
			group by p.nome;
            
insert into cliente (nome, email,fkIndicador) values
	('Danave','danave@gmail.com',null);
    
select * from cliente left join venda on fkCliente = idCliente;

select max(preco) 'Maior valor', min(preco) 'Menor valor' FROM produto;

select sum(preco) 'Soma dos valores' ,avg(preco) 'Media dos valores' from produto;

select sum(preco) 'Soma dos valores' ,avg(preco) 'Media dos valores' from produto;

select preco from produto
	WHERE preco >= (select avg(preco) from produto);
    
select sum(distinct preco) FROM produto;

select sum(p.preco) 'Soma dos valores' from produto as p join vendaproduto as vp on idProduto = fkProduto join venda as v on idVenda = fkVenda group by v.idVenda;