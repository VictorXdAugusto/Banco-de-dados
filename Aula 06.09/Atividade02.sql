USE sprint2;

CREATE TABLE Curso (
idCurso int primary key auto_increment,
nome varchar(50),
sigla varchar(3)
);

INSERT INTO Curso (nome,sigla) VALUES 
('Analise e desenvolvimento de sistemas','ADS'),
('Ciencias da computacao','CCO'),
('Sistema de Infomacao','SIS');


CREATE TABLE Aluno (
idAluno int primary key auto_increment,
nome varchar(45),
fkCurso int,
CONSTRAINT fkCurso FOREIGN KEY (fkCurso) REFERENCES Curso (idCurso)
);

INSERT INTO Aluno (nome) VALUES
('Victor'),
('Diego'),
('Lucas');

SELECT * FROM Aluno;
SELECT * FROM Curso;

UPDATE aluno SET fkCurso = 1 WHERE idAluno = 1;
UPDATE aluno SET fkCurso = 2 WHERE idAluno = 3;
UPDATE aluno SET fkCurso = 3 WHERE idAluno = 2;

SELECT * FROM Curso JOIN aluno 
		ON idCurso = fkCurso;

SELECT aluno.nome AS NomeAluno, curso.nome AS NomeCurso FROM Curso JOIN aluno 
		ON idCurso = fkCurso WHERE sigla ='CCO';
        
ALTER TABLE Curso ADD constraint chkSigla CHECK (sigla in ('CCO','ADS','SI'));



   
	




