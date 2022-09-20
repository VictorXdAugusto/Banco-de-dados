CREATE DATABASE sprint2;

use sprint2;

CREATE TABLE atleta (
	idAtleta 	int	 primary key	auto_increment,
    nome 		varchar(40),
    modalidade	varchar(40),
    qtdMedalha	int
    
);

INSERT INTO atleta (nome, modalidade, qtdMedalha) VALUES
		('Victor','Futsal',100),
        ('Diego','Golf',10),
		('Igor','Volei',20),
        ('Pedro','Basquete',30),
        ('Erick','Futsal',5);
        
CREATE TABLE pais (
	idPais 	int	 primary key	auto_increment,
    nome 		varchar(30),
    capital		varchar(40)
    
);

INSERT INTO pais (nome, capital) VALUES
		('Brasil','Guarulhos'),
        ('Espanha','Itaqua'),
		('Alemaha','Berlim'),
        ('Argentina','Buenos Aires');
        
ALTER TABLE atleta ADD COLUMN fkPais int;

ALTER TABLE atleta ADD foreign key (fkPais)
		references pais (idPais);
        
UPDATE atleta SET fkPais = 1 WHERE idAtleta ='1';
UPDATE atleta SET fkPais = 3 WHERE idAtleta ='2';
UPDATE atleta SET fkPais = 2 WHERE idAtleta ='3';
UPDATE atleta SET fkPais = 4 WHERE idAtleta ='4';
UPDATE atleta SET fkPais = 1 WHERE idAtleta ='5';

SELECT * FROM atleta;

SELECT * FROM atleta JOIN pais 
		ON idPais = fkPais;
        
SELECT atleta.nome, pais.nome FROM atleta 
		JOIN pais ON idPais = fkPais;
        
SELECT atleta.nome as Nome_Atleta, pais.nome as Nome_Pais FROM atleta 
		JOIN pais ON idPais = fkPais WHERE capital = 'Guarulhos';
        
        

        




