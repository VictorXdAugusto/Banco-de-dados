USE sprint2;

CREATE TABLE professor (
idProfessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar(50),
especialidade1 varchar(40),
especialidade2 varchar(40)
 
);

INSERT INTO professor (nome, sobrenome,especialidade1,especialidade2) VALUES 
('Victor','Augusto','HTML','PHP'),
('Vivan','Brabissima','BD','Modelagem de dados'),
('Chola','Brabo','Arq comp.','Binario'),
('Fernanda','Caramico','TI','CSS'),
('Diego','Vieira','Calculo','LOL'),
('Lucas','Bomfim','COD','Beber');

CREATE TABLE disciplina (
idDisc int primary key auto_increment,
nomeDisc varchar(45),
fkProfessor int,
CONSTRAINT fkProfessor FOREIGN KEY (fkProfessor) REFERENCES professor (idProfessor)
);

INSERT INTO disciplina (nomeDisc) VALUES
('Algoritimos'),
('BD'),
('PI');

SELECT * FROM disciplina;
SELECT * FROM professor;

UPDATE disciplina SET fkProfessor = 1 WHERE idDisc = 1;
UPDATE disciplina SET fkProfessor = 2 WHERE idDisc = 2;
UPDATE disciplina SET fkProfessor = 3 WHERE idDisc = 3;

SELECT * FROM professor JOIN disciplina 
		ON idProfessor = fkProfessor;

SELECT professor.nome AS NomeProfessor, disciplina.nomeDisc AS NomeDisciplina FROM professor JOIN disciplina 
		ON idProfessor = fkProfessor;
        
SELECT professor.nome AS NomeProfessor, disciplina.nomeDisc AS NomeDisciplina FROM professor JOIN disciplina 
		ON idProfessor = fkProfessor WHERE sobrenome ='brabissima';    
 
SELECT professor.especialidade1 as Especialidade , disciplina.nomeDisc as NomeDisciplina FROM professor JOIN disciplina 
		ON idProfessor = fkProfessor WHERE nome ='chola' order by especialidade1; 
        
        
        
        
        
-- ATIVIDADE 02 --
        
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



   
	





	








