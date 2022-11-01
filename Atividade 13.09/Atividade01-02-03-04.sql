-- Atividade 01 -- 13.09 --

CREATE DATABASE pet;
use pet;

CREATE TABLE cliente (
idCliente int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
telFixo char(11),
telCel char(12),
bairro varchar(60),
numero varchar(45)
);


INSERT INTO cliente (nome,sobrenome, telFixo, telCel, bairro, numero) VALUES
		('Victor','Augusto', '40028922','974135373','Tremembe','123'),
		('Diego','Silva', '40023222','974122373','Cocaia','332'),
		('Artur','Silva', '40022222','974445373','Pimentas','339');


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
            
SELECT * FROM pet order by nome;

SELECT * FROM cliente order by bairro DESC;

SELECT * FROM pet WHERE nome = "n%";

SELECT * FROM cliente WHERE sobrenome = "Silva";

UPDATE cliente SET telFixo = "22223333"
			WHERE idCliente = "1";
            
SELECT * FROM cliente;

SELECT * FROM pet
		JOIN cliente
			ON idCliente = fkCliente;
            
SELECT * FROM pet
		JOIN cliente
			ON idCliente = fkCliente WHERE cliente.nome = "Victor";
            
DELETE FROM pet WHERE idPet = "2";

SELECT * FROM pet;

DROP TABLE pet,cliente;


-- EXERCICIO 2 --

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

-- EXERCICIO 3 --

CREATE DATABASE festa;
use festa;

CREATE TABLE funcionario (
idFuncionario int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
telefone char(11),
salario double, constraint chkSalario CHECK (salario > 0),
fkSetor int,
foreign key (fkSetor) references setor (idSetor)                               
);
drop table setor,funcionario,acompanhate;
INSERT INTO funcionario (idFuncionario,nome,sobrenome, telefone, salario,fkSetor) values
	(1,'Victor','Augusto','11973135372','10000',1),
	(2,'Diego','Vieira','11973131232','5000',2),
	(3,'Estela','Wolverine','11973133452','2000',2),
	(4,'Lucas','Bomfin','11973134562','2000',3);

CREATE TABLE setor (
idSetor int primary key auto_increment,
nome varchar(45),
numAndar double
);

INSERT INTO setor (nome, numAndar) VALUES
    ('RH', 1),
    ('TI', 2),
    ('Comercial', 3),
    ('Manutenção', 4);
    
CREATE TABLE acompanhante (
    idAcompanhante INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    relacao VARCHAR(45),
    dtNasc DATE,
    fkFunc INT,
    foreign key (fkFunc) references funcionario(idFuncionario)
);

INSERT INTO acompanhante (nome, relacao, dtNasc, fkFunc) VALUES
    ('Vincius', 'Irmao', '2001-10-18', '1'),
    ('Jose', 'Pai', '1978-06-13', '2'),
    ('Iolanda', 'Mamis2', '1976-10-12', '3'),
    ('Leo', 'Primo', '2002-01-23', '4');
    
SELECT * FROM setor;
SELECT * FROM funcionario;
SELECT * FROM acompanhante;

SELECT * FROM setor 
			JOIN funcionario 
					ON fkSetor = idSetor;

SELECT * FROM setor 
			JOIN funcionario
					ON fkSetor = idSetor WHERE setor.nome = 'RH';

SELECT * FROM funcionario 
			JOIN acompanhante 
					ON fkFunc = idFuncionario WHERE idFuncionario = 1;

SELECT * FROM funcionario 
			JOIN acompanhante 
					ON fkFunc = idFuncionario;

-- EXERCICIO 4 --

CREATE DATABASE sprint2;

USE sprint2;

CREATE TABLE treinador (
    idTreinador INT primary key AUTO_INCREMENT,
    nome VARCHAR(45),
    sobrenome VARCHAR(45),
    telefone CHAR(11),
    email VARCHAR(45)
)AUTO_INCREMENT=10;

INSERT INTO treinador ( nome, sobrenome, telefone, email) VALUES
    ('Victor','Augusto', '1172981912', 'Victor.vieira@sptech.school'),
	('Lucas','Bomfin', '1123420003', 'lucas.bonfim@sptech.school'),
    ('Matehus','Resende', '1134550006', 'victor.pereira@sptech.school'),
    ('Igor','Gabriel', '1156770008', 'igor.gabriel@sptech.school'),
	('Estela','Wolverine', '1112340005', 'estela.polverini@sptech.school'),
    ('Matheus','Lessa', '11128090010', 'matheus.lessa@sptech.school');

CREATE TABLE nadador (
    idNadador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    dtNasc DATE,
    fkTreinador INT,
    FOREIGN KEY (fkTreinador) REFERENCES treinador(idTreinador) 
)AUTO_INCREMENT=100;

SELECT * FROM treinador;

INSERT INTO nadador (nome, endereco, dtNasc, fkTreinador) VALUES
    ('Victor', 'Guarulhos', '2001-09-01', 22),
    ('Amanada', 'Guaianazes', '2004-06-04', 23),
    ('Nilton', 'Republica', '2002-10-20', 24),
    ('Pedro', 'Morumbi', '2003-09-10', 24),
    ('Jose', 'Sé', '2004-03-02', 26),
    ('Bruno', 'Liberdade', '2003-10-01', 27),
    ('Vitoria', 'Paraiso', '2002-08-23', 25);
    
SELECT * FROM treinador;
SELECT * FROM nadador;

SELECT * FROM treinador JOIN nadador ON fkTreinador = idTreinador;

SELECT * FROM treinador JOIN nadador ON fkTreinador = idTreinador WHERE treinador.nome = 'Estela';

SELECT * FROM treinador WHERE treinador.nome = 'Diego';

SELECT * FROM treinador;

SELECT * FROM treinador JOIN nadador ON fkTreinador = idTreinador;





