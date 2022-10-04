CREATE DATABASE Continuada2;
use Continuada2;

CREATE TABLE Hotel (
idHotel int primary key auto_increment,
nome varchar(45),
endereco varchar(60),
fkMatriz int,
foreign key (fkMatriz) references Hotel (idHotel)
);

INSERT INTO Hotel (nome,endereco,fkMatriz) values
('Victor','Rua abacaxi', null),
('Erik','Rua uva', 1),
('Lucas','Rua laranja', 1),
('Diego','Rua manga', 2),
('Macho','Rua manga', 2);


CREATE TABLE Quarto (
idQuarto int auto_increment,
nome varchar(45),
andar double,
tipo varchar(45), constraint chkTipo check (tipo in ('Solteiro','Casal')),
fkHotel int,
foreign key (fkHotel) references Hotel (idHotel),
primary key (idQuarto,fkHotel)
);

INSERT INTO Quarto (nome,andar,tipo,fkHotel) values 
	('Suite do Vitão','10','Solteiro',1),
	('Suite do Diegão','10','Solteiro',2),
	('Suite do Erickão','10','Casal',3),
	('Suite do Lucão','10','Casal',4),
	('Suite do Machão','10','Solteiro',5);

SELECT*FROM Hotel;
select*from Quarto;

select*from Hotel as h join Quarto as q on h.idHotel = q.fkHotel;
select*from Hotel as h join Quarto as q on h.idHotel = q.fkHotel where q.tipo = 'Solteiro';
select*from Hotel as h1 join Hotel as h2 on h1.idHotel = h2.fkMatriz;
select q.nome as NomeQuarto, q.andar as AndarQuarto from Quarto as q where q.nome like '% % _i%';
update Quarto set tipo = 'Solteiro'
			where idQuarto = 3;
select*from Quarto;
delete from Quarto where idQuarto = 5;
select*from Quarto;
select*from Hotel as h1 join Hotel as h2 on h1.idHotel =  h2.fkMatriz join Quarto as q on h1.idHotel = q.fkHotel;
drop database Continuada2; 
