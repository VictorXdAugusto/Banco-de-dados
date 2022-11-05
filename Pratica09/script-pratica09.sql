create database pratica09;
use pratica09;

create table professor (
idProfessor int primary key auto_increment,
nome varchar(45),
disciplina varchar(45)
)auto_increment = 10000;

insert into professor (nome,disciplina) values 
	('JP','Algoritimo'),
	('Yoshi','Algoritimo'),
	('Monica','Tecnologia da Informacao'),
	('Vivian','Banco de dados');

create table grupo (
idGrupo int primary key auto_increment,
nome varchar(45),
descricao varchar(45)
);

insert into grupo (nome,descricao) values
	('Grand Vinum'),

create table aluno (
ra int primary key,
nome varchar(45),
email varchar(45),
fkGrupo int,
foreign key (fkGrupo) references grupo (idGrupo)
);

create table GrupoProfessor (
fkGrupo int,
fkProfessor int,
dtHora datetime,
nota decimal(10,2),
primary key (fkGrupo, fkProfessor)
);