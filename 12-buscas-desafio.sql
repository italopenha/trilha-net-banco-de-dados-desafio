-- 1) Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2) Buscar o nome e ano dos filmes, ordenados por ordem crescente do ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano

-- 3) Buscar pelo filme De Volta Para o Futuro, trazendo o nome, ano e dura��o
SELECT Nome, Ano, Duracao From Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4) Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5) Buscar os filmes lan�ados ap�s o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6) Buscar os filmes com dura��o maior que 100 e menor que 150, ordenando pela dura��o em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

-- 7) Buscar a quantidade de filmes lan�ados no ano, agrupando por ano, ordenando pela quantidade em ordem crescente
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8) Buscar os atores do g�nero masculino, retornando o primeiro nome e o �ltimo nome
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- 9) Buscar os atores do g�nero feminino, retornando o primeiro nome, �ltimo nome e ordenando pelo primeiro nome
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10) Buscar o nome do filme e o g�nero
SELECT Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11) Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Generos.Genero = 'Mist�rio'

-- 12) Buscar o nome do filme e os atores, trazendo o primeiro nome, �ltimo nome e seu papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme INNER JOIN Atores ON Atores.id = ElencoFilme.IdAtor

