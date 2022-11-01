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

