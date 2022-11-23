
use controle_filme;

insert into genero(id_genero_filme, genero_filme) 
values (1,'Aventura'),
(2, 'Fantasia'),
(3, 'Romance'),
(4, 'Ficção cientifica'),
(5, 'Ação'),
(6, 'Comedia'),
(7, 'Drama'),
(8, 'Terro'),
(9, 'Comédia romântica'),
(10, 'Suspense');

insert into premiacao(id_premiacao_filme, motivo, data_premiacao) 
values (1, 'Melhor Filme', '2022-06-23'),
(2, 'Melhor Filme', '2022-08-11'),
(3, 'Melhor Roteiro', '2021-11-25'),
(4, 'Melhor CGI', '2021-12-25'),
(5, 'Melhor Roteiro', '2022-09-25'),
(6, 'Melhor Filme', '2022-04-29'),
(7, 'Melhor CGI', '2021-12-20'),
(8, 'Melhor Roteiro', '2022-06-17'),
(9, 'Melhor CGI', '2022-09-29'),
(10, 'Melhor Filme', '2021-12-04');

insert into produtora (id_produtora, nome_produtora) 
values (1, 'Dynabox'),
(2, 'Quamba'),
(3, 'Wikizz'),
(4, 'Shuffledrive'),
(5, 'Skalith'),
(6, 'BlogXS'),
(7, 'Skyvu'),
(8, 'Riffpedia'),
(9, 'Layo'),
(10, 'Eimbee');

insert into usuario(id_usuario, nome_use, nascimento_use, email_use, tipo_use) 
values (1, 'Nerty', '2022-08-18', 'ncreigan0@paypal.com','critico' ),
 (2, 'Tanhya', '2022-06-05', 'tblakey1@virginia.edu','padrão'),
 (3, 'Kessiah', '2022-07-30', 'klaidler2@blog.com','critico'),
 (4, 'Axe', '2022-10-24', 'arendle3@behance.net','critico'),
 (5, 'Rainer', '2022-09-10', 'rstubley4@amazon.co.jp','padrão'),
 (6, 'Dierdre', '2022-10-29', 'dziebart5@parallels.com','padrão'),
 (7, 'Mycah', '2022-02-07', 'mbareham6@storify.com','critico'),
 (8, 'Uriah', '2022-10-08', 'utummasutti7@altervista.org','padrão'),
 (9, 'Tynan', '2022-03-24', 'thayer8@acquirethisname.com','critico'),
 (10, 'Brander', '2022-06-15', 'bstein9@plala.or.jp','critico');


insert into ator(id_ator, nome_ator)
values (1,'Daniel Radcliffe'),
(2,'Emma Watson'),
(3,'Rupert Grint'),
(4,'Alan Rickman'),
(5,'Robbie Coltrane'),
(6,'Tom Felton'),
(7,'Richard Harris'),
(8,'Maggie Smith'),
(9,'Harry Melling'),
(10,'Alfred Enoch');

Create Table Usuario (
 id_usuario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 nome_use VARCHAR(256) NOT NULL,
 email_use VARCHAR(256) NOT NULL,
 nascimento_use DATE NOT NULL,
 tipo_use VARCHAR(256) NOT NULL
);
Create Table Produtora(
 id_produtora INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 nome_produtora VARCHAR(256) NOT NULL
);
Create Table Filme (
 id_produtora INT,
 id_filme INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 nome_filme VARCHAR(256) NOT NULL,
 duracao VARCHAR(45) NOT NULL,
 FOREIGN KEY (id_produtora) REFERENCES Produtora(id_produtora) 
);
 
Create Table Genero(
 id_genero_filme INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 genero_filme VARCHAR(45) NOT NULL
);

Create Table Ator(
 id_ator INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 nome_ator VARCHAR(45) NOT NULL
);

Create Table Premiacao(
 id_premiacao_filme INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 descricao VARCHAR(256) NOT NULL,
 motivo VARCHAR(256) NOT NULL
);
Create Table genero_filme(
 id_filme INT,
 id_genero_filme INT,
 FOREIGN KEY (id_filme) REFERENCES Filme( id_filme) ,
 FOREIGN KEY (id_genero_filme) REFERENCES Genero(id_genero_filme) 
);
Create Table Elenco(
 id_ator INT,
 id_filme INT,
 FOREIGN KEY (id_ator) REFERENCES Ator(id_ator) ,
 FOREIGN KEY (id_filme) REFERENCES Filme(id_filme) 
);

Create Table Critica(
 id_filme INT,
 id_usuario INT,
 email_use VARCHAR(256) NOT NULL,
 nascimento_use DATE NOT NULL,
 tipo_use VARCHAR(256) NOT NULL,
 FOREIGN KEY (id_filme) REFERENCES Filme(id_filme) ,
 FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) 
 );
 
Create Table premiacao_filme(
 id_filme INT,
 id_premiacao_filme INT,
 FOREIGN KEY (id_filme) REFERENCES Filme (id_filme) ,
 FOREIGN KEY (id_premiacao_filme) REFERENCES Premiacao(id_premiacao_filme) 
 );
 
drop database controle_filme;
 