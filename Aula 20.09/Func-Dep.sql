CREATE DATABASE Domingos;

USE Domingos;

create table funcionario (
idFunc int primary key auto_increment,
nome varchar(45),
salario decimal(10,2),
fkSuper int,
constraint fkSupervisor foreign key (fkSuper)
		references funcionario(idFunc)
);

create table dependente (
idDep int,
fkFunc int,
foreign key (fkFunc) references funcionario(idFunc),
primary key (idDep,fkFunc),
nome varchar(45),
parentesco varchar(45)
);

SHOW TABLES;


-- Criar um funcionario supervisor --
INSERT INTO funcionario VALUES 
(null,'Domingos',8.99,null);

select * from funcionario;

-- Inserir os funcionarios supervisionados pelo domigos --

INSERT INTO funcionario VALUES
	(null,'Vivian',1.99,1),
	(null,'Paulo',1.99,1);
    
INSERT INTO funcionario (nome,salario,fkSuper) values
	('Thiago',0.09,2);
    
SELECT * FROM funcionario;
SELECT * FROM dependente;

INSERT INTO dependente VALUES
(1,1,'Sabado','esposa'),
(1,2,'Betinha','Mãe');

INSERT INTO dependente values
	(2,1,'Feriado','pai'),
	(1,4,'Tania','irmã');
    
select f.nome as nomeFunc,
		s.nome as nomeSuper,
        d.nome as NomeDep
		FROM funcionario as f
			join funcionario as s
				on f.fkSuper = s.idFunc
			join dependente as d
				on d.fkFunc = f.idFunc;

SELECT f.nome as nomeFunc,	   
	   ifnull(d.nome, 'SEM DEPENDENTE') as nomeDep 
	   FROM funcionario as f left join dependente as d
	   ON f.idFunc = d.fkFunc;
       
SELECT f.*,
		s.nome as supervisor
		FROM funcionario as f LEFT JOIN funcionario as s
		ON f.fkSuper = s.idFunc
			WHERE f.fkSuper is null;
  
 Create database TreinadorNadador;
 use TreinadorNadador;
  
create table treinador (
idTreinador int primary key auto_increment,
nome varchar(45),
tel varchar (12),
email varchar(45)
);

create table nadador (
idNadador int primary key auto_increment,
nome varchar(45),
origem varchar(45),
dtNasc date,
fkTreinador int,
foreign key (fkTreinador) references treinador(idTreinador)
)auto_increment=10;

INSERT INTO treinador values
(null,'Antedeguemon','4002-8922','antedeguemos.123@gmail.com'),
(null,'Jailson Mendes','1234-2163','jailsonmendes.123@gmail.com');

INSERT INTO nadador values 
	(null,'Chico Martelo','Bahia','1989-03-10',2),
	(null,'Talita Tsunami','Bahia','1989-05-12',1),
	(null,'Chico Martelo','Bahia','1989-03-10',2);
    
desc treinador;

SELECT * FROM treinador as t JOIN treinador as e
	ON t.fkExeperience = e.idTreinador;