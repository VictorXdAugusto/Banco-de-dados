CREATE DATABASE gasto;
use gasto;

CREATE TABLE Pessoa (
idPessoa int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
dtNasc date,
profissao varchar(60)
);

INSERT INTO Pessoa (nome, sobrenome, dtNasc, profissao) values
	('Victor','Augusto','2003-10-14','Programador'),
	('Diego','Vieira','2002-11-12','Back-end'),
	('Estela','Wolverine','2001-08-21','Front-end'),
	('Matheus','Lessa','1999-02-22','Programador');
    
CREATE TABLE gasto (
idGasto int auto_increment,
dt date,
valor decimal(10,2),
descricao varchar(60),
fkPessoa int,
foreign key (fkPessoa) references Pessoa (idPessoa),
primary key (idGasto,fkPessoa)
);

INSERT INTO gasto (dt,valor,descricao,fkPessoa) values
		('2005-01-28',14.00,'Compra de feijao',1),
		('2005-02-28',13.00,'Compra de arroz',2),
		('2005-03-28',8.00,'Compra de macarrao',3),
		('2005-04-28',10.99,'Compra de leite',2);
      
SELECT * from pessoa
				JOIN gasto
					ON idPessoa = fkPessoa WHERE valor > 10;
                    
SELECT * from pessoa
				JOIN gasto
					ON idPessoa = fkPessoa WHERE pessoa.nome = "Victor";

UPDATE gasto SET valor = 30
			WHERE idGasto = 1;
UPDATE gasto SET valor = 40
			WHERE idGasto = 2;
            
DELETE FROM gasto WHERE idGasto = 2;

