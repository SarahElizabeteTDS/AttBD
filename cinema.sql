create database cinema;
use cinema;

create table ator
(
codAtor VARCHAR(3) PRIMARY KEY,
nomeArtistico VARCHAR(40) NOT NULL,
nomeReal VARCHAR(40) NOT NULL,
nacionalidade VARCHAR(20),
sexo CHAR(1) NOT NULL,
idade INT(2) NOT NULL,
indicacaoOscar INT(2),
oscar INT(2)
);

create table filme
(
codFilme VARCHAR(3) PRIMARY KEY,
nomeFilme VARCHAR(40) NOT NULL,
anoFilme INT(4) NOT NULL,
orcamento INT(15) NOT NULL,
tempo INT(2) NOT NULL
);

create table personagem
(
codAtor VARCHAR(3) NOT NULL,
codFilme VARCHAR(3) NOT NULL,
personagem VARCHAR(40) NOT NULL,
cache INT(15) NOT NULL,
PRIMARY KEY (codAtor, codFilme),
FOREIGN KEY (codAtor) references ator(codAtor),
FOREIGN KEY (codFilme) references filme(codFilme)
);

INSERT INTO ator VALUES(a1, 'Demi Moore', 'Maria da Silva', 'USA', 'F', 32, NULL, NULL);
INSERT INTO ator VALUES(a10, 'Willian Hurt', 'Willian Ernst Hurt', 'USA', 'M', 45, 2, 1);
INSERT INTO ator VALUES(a11, 'George Clooney', 'George Costa Smith', 'USA', 'M', 37, 1, NULL);
INSERT INTO ator VALUES(a12, 'Jennifer Lopez', 'Maria Conchita Lopez', 'México', 'F', 32, NULL, NULL);
INSERT INTO ator VALUES(a13, 'Antony Hopkins', 'Antony Richard Hopcroft', 'USA', 'M', 65, 6, 3);
INSERT INTO ator VALUES(a14, 'Antônio Banderas', 'Antônio Augusto Banderas', 'Espanha', 'M', 34, NULL, NULL);
INSERT INTO ator VALUES(a15, 'Tom Hanks', 'Antony Hanks', 'USA', 'M', 45, 1, 1);
INSERT INTO ator VALUES(a16, 'Matt Damon', 'Mattew Louis Damon', 'USA', 'M', 32, 1, 1);
INSERT INTO ator VALUES(a17, 'Jim Carrey', 'James Carrey', 'USA', 'M', 40, NULL, NULL);
INSERT INTO ator VALUES(a18, 'Nicole Kidman', 'Susan West', 'Austrália', 'F', 33, NULL, NULL);
INSERT INTO ator VALUES(a19, 'Val Kilmer', 'Valerio Soza Kilmer', 'Porto Rico', 'M', 40, NULL, NULL);
INSERT INTO ator VALUES(a2, 'Brad Pitt', 'João Paulo', 'USA', 'M', 28, 1, NULL);
INSERT INTO ator VALUES(a20, 'Cameron Diaz', 'Esperanza Diaz', 'Costa Rica', 'F', 29, NULL, NULL);
INSERT INTO ator VALUES(a21, 'Holly Hunter', 'Susan Richards', 'USA', 'F', 33, 1, 1);
INSERT INTO ator VALUES(a22, 'Richard Gere', 'Richard Gere', 'USA', 'M', 34, NULL, NULL);
INSERT INTO ator VALUES(a3, 'Jessica Lange', 'Jessica Lange', 'USA', 'F', 42, 4, 2);
INSERT INTO ator VALUES(a4, 'Dustin Hoffman', 'Dustin Hoffman', 'USA', 'M', 36, 2, NULL);
INSERT INTO ator VALUES(a5, 'Sônia Braga', 'Sônia Braga', 'Brasil', 'F', 45, NULL, NULL);
INSERT INTO ator VALUES(a6, 'Samuel Jackson', 'Samuel L. Jackson', 'USA', 'M', 60, NULL, NULL);
INSERT INTO ator VALUES(a7, 'Sandra Bullock', 'Sandra Bullock', 'USA', 'F', 30, 2, NULL);
INSERT INTO ator VALUES(a8, 'Harry Cornick Jr.', 'Harry Cornick Jr.', 'USA', 'M', 40, NULL, NULL);
INSERT INTO ator VALUES(a9, 'Wesley Snipes', 'Wesley Snipes', 'USA', 'M', 31, 1, NULL);



INSERT INTO filme VALUES(f1, 'A Jurada', 1996, 1000000, 18);
INSERT INTO filme VALUES(f10, 'Cidade das Sombras', 1997, 10000000, 7);
INSERT INTO filme VALUES(f11, 'Irresistível Paixão', 1998, 10000000, 10);
INSERT INTO filme VALUES(f12, 'A Máscara do Zorro', 1998, 11000000, 11);
INSERT INTO filme VALUES(f13, 'Quem vai ficar com Marry ?', 1998, 6000000, 8);
INSERT INTO filme VALUES(f14, 'O Resgate do Soldado Ryan', 1997, 10000000, 7);
INSERT INTO filme VALUES(f15, 'O Show de Truman', 1998, 10000000, 14);
INSERT INTO filme VALUES(f16, 'Batman, o Filme', 1995, 1000000, 9);
INSERT INTO filme VALUES(f17, 'Filadélfia', 1995, 10000000, 6);
INSERT INTO filme VALUES(f18, 'O Máscara', 1995, 6000000, 7);
INSERT INTO filme VALUES(f19, 'O Beijo da Mulher Aranha', 1998, 8000000, 24);
INSERT INTO filme VALUES(f2, 'A Letra Escarlate', 1995, 1000000, 24);
INSERT INTO filme VALUES(f20, 'O Pacificador', 1997, 10000000, 15);
INSERT INTO filme VALUES(f21, 'Ace Ventura', 1995, 7000000, 12);
INSERT INTO filme VALUES(f22, 'Chaplin', 1995, 8000000, 14);
INSERT INTO filme VALUES(f23, 'Batman e Robin', 1997, 10000000, 20);
INSERT INTO filme VALUES(f24, 'Strip Tease', 1996, 7000000, 12);
INSERT INTO filme VALUES(f25, 'Passageiro 57', 1993, 20000000, 15);
INSERT INTO filme VALUES(f26, 'Forrest Gump', 1995, 9000000, 15);
INSERT INTO filme VALUES(f3, 'Seven', 1995, 1500000, 20);
INSERT INTO filme VALUES(f4, 'Tootsie', 1982, 5000000, 16);
INSERT INTO filme VALUES(f5, 'Tieta', 1995, 2000000, 18);
INSERT INTO filme VALUES(f6, 'Código de Violência', 1997, 10000000, 15);
INSERT INTO filme VALUES(f7, 'Quando o Amor Acontece', 1998, 5000000, 12);
INSERT INTO filme VALUES(f8, 'A Vingança de Bette', 1998, 10000000, 9);
INSERT INTO filme VALUES(f9, 'Blade, o Caçador de Vampiros', 1998, 10000000, 18);



INSERT INTO personagem VALUES('f1', 'a1', 'Mary', 30000);
INSERT INTO personagem VALUES('f10', 'a10', 'Columbo', 3000000);
INSERT INTO personagem VALUES('f11', 'a11', 'Johnny', 8000000);
INSERT INTO personagem VALUES('f11', 'a12', 'Holly', 1000000);
INSERT INTO personagem VALUES('f12', 'a13', 'Diego', 5000000);
INSERT INTO personagem VALUES('f12', 'a14', 'Pancho', 8000000);
INSERT INTO personagem VALUES('f13', 'a16', 'Roger', 4000000);
INSERT INTO personagem VALUES('f13', 'a20', 'Mary', 5000000);
INSERT INTO personagem VALUES('f14', 'a15', 'Roberts', 10000000);
INSERT INTO personagem VALUES('f14', 'a16', 'Edward', 2000000);
INSERT INTO personagem VALUES('f15', 'a17', 'Truman', 12000000);
INSERT INTO personagem VALUES('f16', 'a17', 'Charade', 500000);
INSERT INTO personagem VALUES('f16', 'a18', 'Betty', 7000000);
INSERT INTO personagem VALUES('f16', 'a19', 'Bruce', 8000000);
INSERT INTO personagem VALUES('f17', 'a14', 'Bobby', 4000000);
INSERT INTO personagem VALUES('f17', 'a15', 'Bill', 6000000);
INSERT INTO personagem VALUES('f18', 'a17', 'Mascara', 1000000);
INSERT INTO personagem VALUES('f18', 'a21', 'Sammy', 2000000);
INSERT INTO personagem VALUES('f19', 'a10', 'Molina', 2000000);
INSERT INTO personagem VALUES('f19', 'a5', 'Aranha', 80000);
INSERT INTO personagem VALUES('f2', 'a1', 'Sandy', 50000);
INSERT INTO personagem VALUES('f20', 'a11', 'George', 14000000);
INSERT INTO personagem VALUES('f20', 'a18', 'Mary', 5000000);
INSERT INTO personagem VALUES('f21', 'a17', 'Ace', 6000000);
INSERT INTO personagem VALUES('f21', 'a21', 'Lola', 1000000);
INSERT INTO personagem VALUES('f22', 'a8', 'Chaplin', 3000000);
INSERT INTO personagem VALUES('f23', 'a11', 'Bruce', 1000000);
INSERT INTO personagem VALUES('f24', 'a1', 'Annie', 18000000);
INSERT INTO personagem VALUES('f25', 'a9', 'James', 14000000);
INSERT INTO personagem VALUES('f26', 'a15', 'Forrest', 2000000);
INSERT INTO personagem VALUES('f3', 'a2', 'John', 50000);
INSERT INTO personagem VALUES('f4', 'a3', 'Mary', 1000000);
INSERT INTO personagem VALUES('f4', 'a4', 'Tootsie', 2000000);
INSERT INTO personagem VALUES('f5', 'a10', 'Nacib', 2500000);
INSERT INTO personagem VALUES('f5', 'a5', 'Tieta', 50000);
INSERT INTO personagem VALUES('f6', 'a6', 'Robinson', 3000000);
INSERT INTO personagem VALUES('f7', 'a7', 'Suzy', 3000000);
INSERT INTO personagem VALUES('f7', 'a8', 'Bill', 5000000);
INSERT INTO personagem VALUES('f8', 'a3', 'Bette', 3000000);
INSERT INTO personagem VALUES('f9', 'a9', 'Blade', 100000000);
