-- Projeção Mostrar dados na tela a partir de filtros
select *
from customer;

--limite
select *
from customer 
limit 5;

--Contador
select COUNT (*)
from Customer

--Com Filtro
select FirstName, LastName, City 
from customer 
WHERE FirstName = "João";

--
select FirstName, LastName, City 
from customer 
limit 5

-- Ordenação
select FirstName, LastName, City 
from customer
order by FirstName DESC 
limit 5

-- Ordenação pelo número da coluna
select FirstName, LastName, City 
from customer
order by 3 DESC 
limit 5

-- Apelido das colunas, Alias

select FirstName as Nome, LastName as Sobrenome, City as "Cidade do Cliente"
from customer
order by 3 DESC 
limit 5

-- Filtro
-- Consultas devem respeitar Maiúsculo e Minúsculo
select *
from Album
WHERE Title = "Big Ones"
limit 15

select *
from Album
WHERE ArtistId = 10
limit 15

-- Valores nulos e não nulos
select *
from Album
WHERE Column1 NOTNULL 
limit 15

select *
from Album
WHERE Column1 ISNULL 
limit 15

-- Filtro com valores lógicos
SELECT * 
FROM Album a 
WHERE AlbumId >= 100

--Valores entre
SELECT * 
FROM Album a 
WHERE AlbumId
	BETWEEN 10 and 30
	
-- Valor lógico com and usando tabela verdade
SELECT * 
FROM Album a 
WHERE AlbumId >= 100
	AND ArtistId = 22
	
SELECT * 
FROM Album a 
WHERE a.AlbumId <= 100
	and ArtistId >= 22
	ORDER BY  ArtistId ASC 
	
-- Like
select *
from Album
WHERE Title LIKE "BIg Ones"
limit 15

select *
from Album
WHERE Title LIKE "%Vivo"
limit 15

select *
from Album
WHERE Title LIKE "%Disc%"
limit 15

SELECT *
FROM Artist
WHERE Name LIKE "AC_DC"

-- Manipulação de dados


SELECT * 
FROM  Genre
LIMIT 10
WHERE Name LIKE "MPB"


SELECT * 
FROM  Genre
WHERE Name LIKE "MPB"

INSERT INTO Genre (GenreId, Name)
VALUES (NULL, "MPB")
-- id 26

SELECT * 
FROM Artist a  
WHERE  Name LIKE  "Toquinho"

INSERT INTO Artist 
VALUES (NULL, "Toquinho")
--  id 276

SELECT *
FROM Track t
ORDER BY TrackId  DESC 

INSERT INTO Track
VALUES 
 (NULL, "Aquarela", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela1", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela2", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela3", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela4", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela5", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela6", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela7", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela8", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela9", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela10", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99),
 (NULL, "Aquarela11", NULL, 1, 26, "Toquinho e Nery", 2500.000, 8.000, 5.99)
 
 SELECT *
 FROM Track t 
 WHERE GenreId  = 26

 
 --atualizaçãode dados da tabela
 
 SELECT *
 FROM Customer c 
 ORDER BY CustomerId  asc 
LIMIT 10 

 SELECT *
 FROM Customer c 
WHERE  CustomerId = 2

UPDATE Customer 
SET Company = "Nery"
WHERE CustomerId = 2

 SELECT *
 FROM Customer c 
WHERE  Country LIKE "Bra_il"

UPDATE Customer 
SET Country = "Brasil"
WHERE Country LIKE "Brazil"

--delet

SELECT *
FROM Invoice i
WHERE Total >= 20
	AND BillingCountry  LIKE "USA"
LIMIT 20 

DELETE 
FROM Invoice
WHERE Total >= 20
	AND BillingCountry  LIKE "USA"
	
	
-- junção de tabelas

SELECT COUNt (*)
FROM Album 


SELECT *
FROM Artist 

SELECT COUNt (*)
FROM Track 

-- Forma errada se selecionar duas tabelas, uma multiplica a outra 
SELECT COUNt (*)
FROM Album, Artist 


-- Projeção de tabela com Joing duas tabelas

SELECT
	Album.Title,
	Artist.Name
FROM Album
INNER JOIN Artist
	ON Album.ArtistId = Artist.ArtistId
WHERE  name LIKE "iron maiden"


-- três tabelas

SELECT
	Album.Title AS "Titulo do album",
	Artist.Name AS "Nome Artista",
	Track.Name AS "Nome da Música"
FROM Album 
INNER JOIN Artist
	ON Album.ArtistId = Artist.ArtistId
INNER JOIN Track
	ON Album.AlbumId = Track.AlbumId
WHERE   Artist.Name LIKE "iron maiden"


--criar nova tabela

CREATE TABLE Alunos (
    AlunoId INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(30)
);


INSERT INTO Alunos (Nome)
VALUES
	("Quin Nery"),
	("Teste Nery");


SELECT *
FROM Alunos;

	--Apagar tabela
	
DROP TABLE Alunos;