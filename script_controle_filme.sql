
Drop database controle_filme;
Create database controle_filme;
use controle_filme;


Create Table Usuario (
 cpf VARCHAR(14) NOT NULL PRIMARY KEY ,
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
 data_premiacao DATE NOT NULL,
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
 cpf varchar(14),
 nota INT NOT NULL,
 descricao_nota varchar(256),
 FOREIGN KEY (id_filme) REFERENCES Filme(id_filme) ,
 FOREIGN KEY (cpf) REFERENCES Usuario(cpf) 
 );
 
Create Table premiacao_filme(
 id_filme INT,
 id_premiacao_filme INT,
 FOREIGN KEY (id_filme) REFERENCES Filme (id_filme) ,
 FOREIGN KEY (id_premiacao_filme) REFERENCES Premiacao(id_premiacao_filme) 
 );

insert into genero(genero_filme) 
values ('Aventura'),
('Fantasia'),
('Romance'),
('Ficção cientifica'),
('Ação'),
('Comedia'),
('Drama'),
('Terro'),
('Comédia romântica'),
('Suspense');


insert into critica(nota, descricao_nota)
values (10,'Muito bom'),
(9,'bom'),
(10,'muito bom '),
(7,'aceitavel'),
(5,'Ruim'),
(8,'Gostei'),
(1,'horrivel'),
(2,'pessimo'),
(10,'Muito bom');

insert into produtora (nome_produtora) 
values ('Dynabox'),
('Quamba'),
('Wikizz'),
('Shuffledrive'),
('Skalith'),
('BlogXS'),
('Skyvu'),
('Riffpedia'),
('Layo'),
('Eimbee');

insert into usuario(cpf, nome_use, nascimento_use, email_use, tipo_use) 
values (11011505181, 'Nerty', '2022-08-18', 'ncreigan0@paypal.com','critico' ),
 (21235894610, 'Tanhya', '2022-06-05', 'tblakey1@virginia.edu','padrão'),
  (310234567891, 'Kessiah', '2022-07-30', 'klaidler2@blog.com','critico'),
 (41045697631, 'Axe', '2022-10-24', 'arendle3@behance.net','critico'),
 (57895631074, 'Rainer', '2022-09-10', 'rstubley4@amazon.co.jp','padrão'),
 (10237859876, 'Dierdre', '2022-10-29', 'dziebart5@parallels.com','padrão'),
 (10246459876, 'Mycah', '2022-02-07', 'mbareham6@storify.com','critico'),
 (10279459876, 'Uriah', '2022-10-08', 'utummasutti7@altervista.org','padrão'),
 (10710659876, 'Tynan', '2022-03-24', 'thayer8@acquirethisname.com','critico'),
 (10237159876, 'Brander', '2022-06-15', 'bstein9@plala.or.jp','critico');


insert into ator(nome_ator)
values ('Daniel Radcliffe'),
('Emma Watson'),
('Rupert Grint'),
('Alan Rickman'),
('Robbie Coltrane'),
('Tom Felton'),
('Richard Harris'),
('Maggie Smith'),
('Harry Melling'),
('Alfred Enoch'); 

insert into filme(nome_filme, duracao)
value ('A Mulher Rei','105 min'),
('Sorria','115 min'),
('Adão Negro','120 min'),
('A fera','93 min'),
('Os Bad Boys','120 min'),
('Homem-Aranha: Sem Volta para Casa','157 min'),
('Doutor Estranho no Multiverso da Loucura','126 min'),
('Máquina Mortífera','157 min'),
('Bad Boys para Sempre','124 min'),
('Harry Potter e a Câmara Secreta','181 min');

insert into premiacao( motivo, data_premiacao) 
values ('Melhor Filme','2022-06-23'),
('Melhor Filme', '2022-08-11'),
('Melhor Roteiro', '2021-11-25'),
('Melhor CGI', '2021-12-25'),
('Melhor Roteiro', '2022-09-25'),
('Melhor Filme', '2022-04-29'),
('Melhor CGI', '2021-12-20'),
('Melhor Roteiro', '2022-06-17'),
('Melhor CGI', '2022-09-29'),
('Melhor Filme','2021-12-04');

UPDATE genero SET genero_filme='Romance'WHERE id_genero_filme=3;
UPDATE genero SET genero_filme='Aventura'WHERE id_genero_filme=4;
UPDATE genero SET genero_filme='Ficcção cientifica'WHERE id_genero_filme=7;
UPDATE genero SET genero_filme='Drama'WHERE id_genero_filme=10;
UPDATE genero SET genero_filme='Suspense'WHERE id_genero_filme=1;

UPDATE Critica SET nota=10,descricao_nota='muito bom' WHERE id_filme=2;
UPDATE Critica SET descricao_nota='ruim, mas da para ver'WHERE id_filme=5;
UPDATE Critica SET nota=1,descricao_nota='Melhor filme da minha vida' WHERE id_filme=2;
UPDATE Critica SET descricao_nota='da para ver'WHERE id_filme=7;
UPDATE Critica SET nota=5,descricao_nota='desisti no meo do caminho' WHERE id_filme=9;

UPDATE produtora SET nome_produtora='Business Services'WHERE id_produtora=2 ;
UPDATE produtora SET nome_produtora='Other fame' WHERE id_produtora=4;
UPDATE produtora SET nome_produtora='Consumer'WHERE id_produtora=9;
UPDATE produtora SET nome_produtora='Equipment store'WHERE id_produtora=8;
UPDATE produtora SET nome_produtora='coffee movies'WHERE id_produtora=6;

UPDATE usuario SET nome_use='Vinicius'WHERE cpf ='9';
UPDATE usuario SET nascimento_use='2022-08-20'WHERE cpf='9';
UPDATE usuario SET email_use='vini.soares.filho@gmail.com'WHERE cpf='9';
UPDATE usuario SET tipo_use='Padrão'WHERE cpf='9';
UPDATE usuario SET nome_use='Rambo'WHERE cpf='10';

UPDATE ator SET	nome_ator='Will Smith'WHERE id_ator = 3;
UPDATE ator SET	nome_ator='Adam Sandler'WHERE id_ator = 5;
UPDATE ator SET	nome_ator='Chris Rock'WHERE id_ator = 9;
UPDATE ator SET	nome_ator='Kevin James'WHERE id_ator = 2;
UPDATE ator SET	nome_ator='Jackie Chan'WHERE id_ator = 10;

UPDATE filme SET nome_filme='Os bad boys II' WHERE id_filme=6;
UPDATE filme SET duracao='147 min' WHERE id_filme=6;
UPDATE filme SET nome_filme='Liga da Justiça de Zack Snyder' WHERE id_filme=1;
UPDATE filme SET duracao='240 min' WHERE id_filme=1;
UPDATE filme SET nome_filme='Harry Potter e a Pedra Filosofal' WHERE id_filme=10;

UPDATE premiacao SET motivo='Melhor CGI' WHERE id_premiacao_filme=6;
UPDATE premiacao SET motivo='Melhor filme' WHERE id_premiacao_filme=4;
UPDATE premiacao SET motivo='Melhor ator' WHERE id_premiacao_filme=2;
UPDATE premiacao SET motivo='Melhor filme' WHERE id_premiacao_filme=1;
UPDATE premiacao SET motivo='Melhor Roteiro' WHERE id_premiacao_filme=10;

DELETE FROM filme WHERE id_filme=6;
DELETE FROM filme WHERE id_filme=4;
DELETE FROM filme WHERE id_filme=2;
DELETE FROM filme WHERE id_filme=10;
DELETE FROM filme WHERE id_filme=7;

DELETE FROM Critica WHERE id_filme=6;
DELETE FROM Critica WHERE id_filme=4;
DELETE FROM Critica WHERE id_filme=2;
DELETE FROM Critica WHERE id_filme=10;
DELETE FROM Critica WHERE id_filme=7;

DELETE FROM premiacao WHERE id_premiacao_filme=6;
DELETE FROM premiacao WHERE id_premiacao_filme=4;
DELETE FROM premiacao WHERE id_premiacao_filme=2;
DELETE FROM premiacao WHERE id_premiacao_filme=10;
DELETE FROM premiacao WHERE id_premiacao_filme=7;

DELETE FROM ator WHERE id_ator=1;
DELETE FROM ator WHERE id_ator=8;
DELETE FROM ator WHERE id_ator=10;
DELETE FROM ator WHERE id_ator=5;
DELETE FROM ator WHERE id_ator=4;

DELETE FROM usuario WHERE cpf ='9';
DELETE FROM usuario WHERE cpf ='7';
DELETE FROM usuario WHERE cpf ='6';
DELETE FROM usuario WHERE cpf ='4';
DELETE FROM usuario WHERE cpf ='1';

DELETE FROM produtora WHERE id_produtora=4;
DELETE FROM produtora WHERE id_produtora=9;
DELETE FROM produtora WHERE id_produtora=6;
DELETE FROM produtora WHERE id_produtora=1;
DELETE FROM produtora WHERE id_produtora=3;

DELETE FROM genero WHERE id_genero_filme=3;
DELETE FROM genero WHERE id_genero_filme=7;
DELETE FROM genero WHERE id_genero_filme=9;
DELETE FROM genero WHERE id_genero_filme=10;
DELETE FROM genero WHERE id_genero_filme=6;


select * from genero order by id_genero_filme desc;
select * from produtora order by id_produtora desc;
select * from usuario order by cpf desc;
select * from filme order by id_filme desc;
select * from ator order by id_ator desc;
select * from Premiacao order by id_premiacao_filme desc;
select * from premiacao_filme order by id_premiacao_filme desc;
select * from genero_filme order by id_genero_filme desc;
select * from Critica order by id_filme desc;
select * from Elenco order by id_filme desc;

select * from genero WHERE id_genero_filme=8 ;
select * from produtora  WHERE id_produtora=5 ;
select * from usuario WHERE cpf=7 ;
select * from filme WHERE id_filme=1 ;
select * from ator WHERE id_ator=10 ;
select * from Premiacao WHERE id_premiacao_filme=2 ;
select * from premiacao_filme WHERE id_premiacao_filme=3 ;
select * from genero_filme WHERE id_genero_filme=5 ;
select * from Critica WHERE id_filme=4;
select * from Elenco WHERE id_filme=6;
select * from premiacao WHERE id_premiacao_filme=10;








