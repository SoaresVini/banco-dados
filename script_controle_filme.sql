create database controle_filme;

use controle_filme;

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
 

 