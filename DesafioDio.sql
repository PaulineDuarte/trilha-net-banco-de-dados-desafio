-- DESAFIO DIO 
-- 1 Buscar o nome e anos dos filmes
SELECT Nome, Ano FROM Filmes

-- 2 Buscar nome e ano dos filmes, ordenados por ordem crescente por meio do ano.
SELECT Nome,Ano, Duracao
From Filmes 
ORDER BY Ano ASC;  

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome,Ano, Duracao
From Filmes 
WHERE Nome='De volta para o futuro'   

-- 4 Buscar os filmes lançados em 1997
SELECT Nome,Ano, Duracao
From Filmes 
WHERE Ano='1997'  

-- 5 Buscar os filmes lançados APÓS o ano 2000
SELECT Nome,Ano, Duracao
From Filmes 
WHERE Ano>'2000' 

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome,Ano, Duracao
From Filmes 
WHERE Duracao between 100 and 159 
ORDER BY Duracao ASC 

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade Desc

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
 SELECT *
FROM Atores 
WHERE Genero = 'M'

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
 SELECT *
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

-- 10 Buscar o nome do filme e o gênero

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero='Mistério'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS Nome, A.PrimeiroNome, A.UltimoNome ,E.Papel
FROM Atores A
JOIN ElencoFilme E ON A.Id = E.IdAtor 
JOIN  Filmes f ON E.IdFilme  = f.Id;