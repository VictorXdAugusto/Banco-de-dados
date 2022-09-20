-- Atividade 01 -- 13.09 --

CREATE DATABASE pet;
use pet;

CREATE TABLE cliente (
idCliente int primary key auto_increment,
nome varchar(45),
telFixo char(11),
telCel char(12),
endereco varchar(60)
);

INSERT INTO cliente (nome, telFixo, telCel, endereco) VALUES
		('Victor', '40028922','974135373','Rua abacaxi'),
		('Diego', '40023222','974122373','Rua banana'),
		('Artur', '40022222','974445373','Rua limão');


CREATE TABLE Pet (
idPet int auto_increment,
tipo varchar(45),
nome varchar(45),
raca varchar(45),
dtNasc date,
fkCliente int,
foreign key (fkCliente) references cliente(idCliente),
primary key (idPet,fkCliente)
);

INSERT INTO pet (tipo, nome, raca, dtNasc, fkCliente) VALUES
		('Cachorro','Ragnar','Husky','2002-09-09',1),
		('Cachorro','Nina','Husky','2002-09-09',2),
		('Gato','Miau','Selvagem','2002-10-12',2),
		('Cachorro','Scooby','Vira Lata','2002-05-12',1);
        
SELECT * FROM pet;
SELECT * FROM cliente;

ALTER TABLE cliente MODIFY COLUMN nome varchar(90);

SELECT * FROM pet WHERE tipo ='Cachorro';

SELECT pet.nome as NomePet, pet.dtNasc as DtNascPet FROM cliente
		JOIN pet
			ON idCliente = fkCliente;
            
SELECT * FROM pet;



