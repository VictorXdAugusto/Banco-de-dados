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


