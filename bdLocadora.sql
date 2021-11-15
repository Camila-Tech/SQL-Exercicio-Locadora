CREATE DATABASE bdLocadora;

USE bdLocadora;

CREATE TABLE genero (
gen_id int PRIMARY KEY,
gen_descricao varchar(30),
);


CREATE TABLE filme (
flm_id int PRIMARY KEY,
flm_titulo varchar(40),
flm_midia varchar(40),
flm_preco decimal,
gen_id int FOREIGN KEY REFERENCES genero(gen_id)
);




 /* Inserção de dados na tabela Generos         */
INSERT INTO genero (gen_id,gen_descricao) VALUES (1,'Drama');

INSERT INTO genero (gen_id,gen_descricao) VALUES (2,'Comedia');

INSERT INTO genero (gen_id,gen_descricao) VALUES (3,'Suspense');

INSERT INTO genero (gen_id,gen_descricao) VALUES (4,'Terror');

INSERT INTO genero (gen_id,gen_descricao) VALUES (5,'Sci Fi');

INSERT INTO genero (gen_id,gen_descricao) VALUES (6, 'Ação');

 /* Inserção de dados na tabela Filmes */
 
 INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (1,'O Fantasma da Opera','DVD', 7, 1);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (2,'Sobre Meninos e Lobos','DVD', 7, 3);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (3,'Notting Hill','DVD',6,2);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (4,'O Exorcista','VHS',4,4);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (5,'O Aviador','DVD',7,1);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (6,'Guerra nas Estrelas','DVD',7,5);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (7,'A Tempestade do Seculo','VHS',4,1);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (8,'O Navio Fantasma','DVD',6,3);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (9,'A Taca do Mundo e Nossa','DVD',7,2);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (10,'Efeito Borboleta','DVD',6,3);

INSERT INTO filme (flm_id,flm_titulo,flm_midia,flm_preco,gen_id)
VALUES (11,'WALL·E','Bluray',7,4);


	/* Updates */
UPDATE filme SET flm_midia = 'Bluray' WHERE = 7

UPDATE filme SET flm_titulo = 'De Repente 30' WHERE flm_id = 2

UPDATE genero SET gen_descricao = 'Ficção Científica' WHERE gen_id = 5

UPDATE filme SET gen_id = 1 WHERE flm_id = 11 /* Errei o código na parte do gênero */

UPDATE filme SET gen_id = 4 WHERE flm_id = 11

UPDATE filme SET flm_preco = 7.55, flm_midia = 'Digital' WHERE flm_id = 5


 /* selects nas tabelas filme e genero*/

 select * from filme
 select * from genero

