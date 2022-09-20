CREATE DATABASE sprint2;

use sprint2;



CREATE TABLE Musica (
	idMusica 	int	 primary key	auto_increment,
    titulo 		varchar(40),
    artista		varchar(40),
    genero		varchar(40)
    
) auto_increment = 200;


INSERT INTO musica (titulo,artista,genero) VALUES
		('Firework','Katy Perry','pop'),
        ('Vida loka','Racionais','RAP'),
		('Da ponte pra ca','Racionais','RAP'),
        ('Sem pressa','Mc Paiva','Funk'),
        ('Aquela mina de vermelho','DJ Arana','Funk Pesadão');

        
CREATE TABLE musica (
	idmusica 	int	 primary key	auto_increment,
    nome 		varchar(30),
    tipo		varchar(40),
    dtLancamento		date
    
);

INSERT INTO musica (nome, tipo, dtLancamento) VALUES
		('Funk Pesadão','Funk','2022-08-30'),
		('Trap Bolado','Trap','2022-02-12'),
        ('Rap Antigo','Rap','2022-10-14'),
        ('Pop dicria','Pop','2022-09-02');
        
ALTER TABLE musica ADD COLUMN fkMusica int;

ALTER TABLE musica ADD foreign key (fkmusica)
		references album (idAlbum);
        
UPDATE musica SET fkmusica = 1 WHERE idmusica ='1';
UPDATE musica SET fkmusica = 2 WHERE idMusica ='2';
UPDATE musica SET fkmusica = 3 WHERE idMusica ='3';
UPDATE musica SET fkmusica = 4 WHERE idMusica ='4';
UPDATE musica SET fkmusica = 1 WHERE idMusica ='5';

SELECT * FROM musica;
SELECT * FROM Album;

SELECT * FROM musica JOIN album 
		ON idAlbum = fkmusica;
        
SELECT musica.titulo as Titulo_musica, album.nome as Nome_Album FROM musica JOIN album 
		ON idAlbum = fkmusica;
        
SELECT musica.titulo as Titulo_musica, album.nome as Nome_Album FROM musica JOIN album 
		ON idAlbum = fkmusica WHERE tipo = 'Funk';
        
        

        



UPDATE musica SET idMusica = 5 WHERE idMusica ='204';
