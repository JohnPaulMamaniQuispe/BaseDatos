# BaseDatos
CREATE DATABASE MovieDB;

GO

USE MovieDB;

-- tables
-- Table: actors
CREATE TABLE actors (
    id int  NOT NULL,
    name varchar(100)  NOT NULL,
    gender char(1)  NOT NULL,
    CONSTRAINT actors_pk PRIMARY KEY  (id)
);

-- Table: directors
CREATE TABLE directors (
    id int  NOT NULL,
    name varchar(100)  NOT NULL,
    CONSTRAINT directors_pk PRIMARY KEY  (id)
);

-- Table: genres
CREATE TABLE genres (
    id int  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT genres_pk PRIMARY KEY  (id)
);

-- Table: movie_cast
CREATE TABLE movie_cast (
    actor_id int  NOT NULL,
    movie_id int  NOT NULL,
    role varchar(50)  NOT NULL,
    CONSTRAINT movie_cast_pk PRIMARY KEY  (actor_id,movie_id)
);

-- Table: movies
CREATE TABLE movies (
    id int  NOT NULL,
    title varchar(50)  NOT NULL,
    year int  NOT NULL,
    language varchar(50)  NOT NULL,
    duration int  NOT NULL,
    director_id int  NOT NULL,
    genre_id int  NOT NULL,
    CONSTRAINT movies_pk PRIMARY KEY  (id)
);

-- Table: ratings
CREATE TABLE ratings (
    reviewer_id int  NOT NULL,
    movie_id int  NOT NULL,
    stars int  NOT NULL,
    comment varchar(255)  NOT NULL,
    CONSTRAINT ratings_pk PRIMARY KEY  (reviewer_id,movie_id)
);

-- Table: reviewers
CREATE TABLE reviewers (
    id int  NOT NULL,
    name varchar(100)  NOT NULL,
    CONSTRAINT reviewers_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: movie_casting_actors (table: movie_cast)
ALTER TABLE movie_cast ADD CONSTRAINT movie_casting_actors
    FOREIGN KEY (actor_id)
    REFERENCES actors (id);

-- Reference: movie_casting_movies (table: movie_cast)
ALTER TABLE movie_cast ADD CONSTRAINT movie_casting_movies
    FOREIGN KEY (movie_id)
    REFERENCES movies (id);

-- Reference: movies_directors (table: movies)
ALTER TABLE movies ADD CONSTRAINT movies_directors
    FOREIGN KEY (director_id)
    REFERENCES directors (id);

-- Reference: movies_genres (table: movies)
ALTER TABLE movies ADD CONSTRAINT movies_genres
    FOREIGN KEY (genre_id)
    REFERENCES genres (id);

-- Reference: rating_movies (table: ratings)
ALTER TABLE ratings ADD CONSTRAINT rating_movies
    FOREIGN KEY (movie_id)
    REFERENCES movies (id);

-- Reference: rating_reviewers (table: ratings)
ALTER TABLE ratings ADD CONSTRAINT rating_reviewers
    FOREIGN KEY (reviewer_id)
    REFERENCES reviewers (id);

insert into genres(id, description) values(1, 'Drama');
insert into genres(id, description) values(2, 'Comedia');
insert into genres(id, description) values(3, 'Terror');
insert into genres(id, description) values(4, 'Ciencia ficción');
insert into genres(id, description) values(5, 'Musical');


insert into reviewers(id, name) values (1,'Luis Campos');
insert into reviewers(id, name) values (2,'Vilma Becerra');
insert into reviewers(id, name) values (3,'Julio Noriega');
insert into reviewers(id, name) values (4,'Marcos Rivera');
insert into reviewers(id, name) values (5,'Amanda Ruiz');
insert into reviewers(id, name) values (6,'Enrique Contreras');

insert into directors(id,name) values (1, 'Christopher Nolan')
insert into directors(id,name) values (2, 'Sofia Coppola')
insert into directors(id,name) values (3, 'Martin Scorsese')

insert into movies( id,year,title, language, duration, director_id, genre_id) values(1,2020,'Inception', 'English',120, 1,4)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(2,1998,'Following', 'English',120, 1,4)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(3,2000,'Memento', 'English',120, 1,4)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(4,2003,'Lost in Translation', 'English',120, 2,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(5,2003,'Somewhere', 'English',120, 2,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(6,1999,'The Virgin Suicides', 'English',120, 2,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(7,2003,'Casino', 'English',120, 3,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(8,1980,'Raging Bull', 'English',120, 3,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(9,2016,'Silence', 'English',120, 3,1)


insert into ratings(reviewer_id, movie_id, stars, comment) values (1,1,3, 'Buena película')
insert into ratings(reviewer_id, movie_id, stars, comment) values (1,2,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (2,1,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (2,2,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,1,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,3,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,4,5, 'Excelente')

insert into ratings(reviewer_id, movie_id, stars, comment) values (1,5,3, 'Buena película')
insert into ratings(reviewer_id, movie_id, stars, comment) values (1,6,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (2,5,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (2,6,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,5,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,6,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,7,5, 'Excelente')

insert into ratings(reviewer_id, movie_id, stars, comment) values (4,5,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (4,6,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (5,6,3, 'Buena película')
insert into ratings(reviewer_id, movie_id, stars, comment) values (5,5,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (6,6,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (6,7,4, 'Excelentes actuaciones')

-- End of file.


CREATE DATABASE MovieDB;

GO

USE MovieDB;

-- tables
-- Table: actors
CREATE TABLE actors (
    id int  NOT NULL,
    name varchar(100)  NOT NULL,
    gender char(1)  NOT NULL,
    CONSTRAINT actors_pk PRIMARY KEY  (id)
);

-- Table: directors
CREATE TABLE directors (
    id int  NOT NULL,
    name varchar(100)  NOT NULL,
    CONSTRAINT directors_pk PRIMARY KEY  (id)
);

-- Table: genres
CREATE TABLE genres (
    id int  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT genres_pk PRIMARY KEY  (id)
);

-- Table: movie_cast
CREATE TABLE movie_cast (
    actor_id int  NOT NULL,
    movie_id int  NOT NULL,
    role varchar(50)  NOT NULL,
    CONSTRAINT movie_cast_pk PRIMARY KEY  (actor_id,movie_id)
);

-- Table: movies
CREATE TABLE movies (
    id int  NOT NULL,
    title varchar(50)  NOT NULL,
    year int  NOT NULL,
    language varchar(50)  NOT NULL,
    duration int  NOT NULL,
    director_id int  NOT NULL,
    genre_id int  NOT NULL,
    CONSTRAINT movies_pk PRIMARY KEY  (id)
);

-- Table: ratings
CREATE TABLE ratings (
    reviewer_id int  NOT NULL,
    movie_id int  NOT NULL,
    stars int  NOT NULL,
    comment varchar(255)  NOT NULL,
    CONSTRAINT ratings_pk PRIMARY KEY  (reviewer_id,movie_id)
);

-- Table: reviewers
CREATE TABLE reviewers (
    id int  NOT NULL,
    name varchar(100)  NOT NULL,
    CONSTRAINT reviewers_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: movie_casting_actors (table: movie_cast)
ALTER TABLE movie_cast ADD CONSTRAINT movie_casting_actors
    FOREIGN KEY (actor_id)
    REFERENCES actors (id);

-- Reference: movie_casting_movies (table: movie_cast)
ALTER TABLE movie_cast ADD CONSTRAINT movie_casting_movies
    FOREIGN KEY (movie_id)
    REFERENCES movies (id);

-- Reference: movies_directors (table: movies)
ALTER TABLE movies ADD CONSTRAINT movies_directors
    FOREIGN KEY (director_id)
    REFERENCES directors (id);

-- Reference: movies_genres (table: movies)
ALTER TABLE movies ADD CONSTRAINT movies_genres
    FOREIGN KEY (genre_id)
    REFERENCES genres (id);

-- Reference: rating_movies (table: ratings)
ALTER TABLE ratings ADD CONSTRAINT rating_movies
    FOREIGN KEY (movie_id)
    REFERENCES movies (id);

-- Reference: rating_reviewers (table: ratings)
ALTER TABLE ratings ADD CONSTRAINT rating_reviewers
    FOREIGN KEY (reviewer_id)
    REFERENCES reviewers (id);

insert into genres(id, description) values(1, 'Drama');
insert into genres(id, description) values(2, 'Comedia');
insert into genres(id, description) values(3, 'Terror');
insert into genres(id, description) values(4, 'Ciencia ficción');
insert into genres(id, description) values(5, 'Musical');


insert into reviewers(id, name) values (1,'Luis Campos');
insert into reviewers(id, name) values (2,'Vilma Becerra');
insert into reviewers(id, name) values (3,'Julio Noriega');
insert into reviewers(id, name) values (4,'Marcos Rivera');
insert into reviewers(id, name) values (5,'Amanda Ruiz');
insert into reviewers(id, name) values (6,'Enrique Contreras');

insert into directors(id,name) values (1, 'Christopher Nolan')
insert into directors(id,name) values (2, 'Sofia Coppola')
insert into directors(id,name) values (3, 'Martin Scorsese')

insert into movies( id,year,title, language, duration, director_id, genre_id) values(1,2020,'Inception', 'English',120, 1,4)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(2,1998,'Following', 'English',120, 1,4)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(3,2000,'Memento', 'English',120, 1,4)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(4,2003,'Lost in Translation', 'English',120, 2,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(5,2003,'Somewhere', 'English',120, 2,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(6,1999,'The Virgin Suicides', 'English',120, 2,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(7,2003,'Casino', 'English',120, 3,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(8,1980,'Raging Bull', 'English',120, 3,1)
insert into movies( id,year,title, language, duration, director_id, genre_id) values(9,2016,'Silence', 'English',120, 3,1)


insert into ratings(reviewer_id, movie_id, stars, comment) values (1,1,3, 'Buena película')
insert into ratings(reviewer_id, movie_id, stars, comment) values (1,2,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (2,1,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (2,2,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,1,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,3,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,4,5, 'Excelente')

insert into ratings(reviewer_id, movie_id, stars, comment) values (1,5,3, 'Buena película')
insert into ratings(reviewer_id, movie_id, stars, comment) values (1,6,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (2,5,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (2,6,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,5,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,6,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (3,7,5, 'Excelente')

insert into ratings(reviewer_id, movie_id, stars, comment) values (4,5,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (4,6,5, 'Excelente')
insert into ratings(reviewer_id, movie_id, stars, comment) values (5,6,3, 'Buena película')
insert into ratings(reviewer_id, movie_id, stars, comment) values (5,5,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (6,6,4, 'Excelentes actuaciones')
insert into ratings(reviewer_id, movie_id, stars, comment) values (6,7,4, 'Excelentes actuaciones')

-- End of file.
---RESOLUCION EXAMEN FINAL---
---Pregunta 1 (2 puntos). 
---Crear un procedimiento almacenado para que pueda ingresar películas. Se debe validar que no se ingrese películas repetidas. En el caso que se repita, se debe mostrar un mensaje de alerta de película repetida. 
CREATE PROC INSERTAR_MOVIES
@id_movies int ,
@title varchar (8),
@year  int ,
@language varchar (20),
@duration int,
@id_director int ,
@genre_id int as
declare @validador int -- validador de resultados
select @validador = count (id) from movies where id = @id_movies or title= @title
if (@validador<1) 
begin
insert into movies values(@id_movies,@title, @year , @language , @duration, @id_director,@genre_id  )
end 
else begin
print 'PELICULA REPETIDA'
end
exec INSERTAR_MOVIES 11, Sonrie,2016,English,120,3,1
exec INSERTAR_MOVIES 13, Sonrieste,2016,English,120,3,1
select * from movies

---Pregunta 2 (4 puntos). 
---Crear una vista que retorne los directores que tienen películas
---con un rating superior a cinco estrellas. Las películas de los directores deben 
---ser de este nuevo siglo. Los campos para mostrar es director ID, nombre del director,
---película ID, nombre de la película, año y rating de la película. 
create function f_movies_per_directores() returns table
as return
	select d.id as directorID, d.name as Nombre, m.id as movieID, m.title as Pelicula, m.year as Anio, r.stars as Rating  
		from directors d
		join movies m on d.id=m.director_id
		join ratings r on m.id=r.movie_id
		where m.year >= 2000 and r.stars >= 5

-- MUESTRA LAS PELICULAS CON UN RATING DE 5 ESTRELLAS, PORQUE ES EL MAXIMO RATING,
----SEGUN EL ENUNCIADO DICE MAYOR A 5, PERO 
-- 5 ESTRELLAS ES LO MAXIMO QUE HAY, ENTONCES SE IGUALA A 5 ESTRELLAS

create procedure sp_rating_per_directors
as
begin
	select * from dbo.f_movies_per_directores()
end;

exec sp_rating_per_directors
--Pregunta 3 (4 puntos). 
--Utilizando la pregunta anterior. Crear un procedimiento almacenado donde todos los actores que han participado en las películas de un determinado director (ingresado como parámetro) 
create function f_actor_per_direct(@nombre varchar(40)) returns table
as return
	select d.name as Director, a.name as Actor
	from directors d
	join movies m on m.id=d.id
	join movie_cast mc on m.id = mc.movie_id
	join actors a on mc.actor_id = a.id
	where d.name = @nombre

create procedure sp_actors_per_direct @nom varchar(40)
as
begin
	select * from dbo.f_actor_per_direct(@nom)
end;

exec sp_actors_per_direct 'Christopher Nolan'

--Resolucion de examenes 2022-2
create function f_comments_per_movie(@title varchar(50)) returns int
begin
	declare @quantity int
	select @quantity = count(comments)
	from ratings r 
		join movies m on r.movie_id = m.id
		where title = @title
	returns @quantity
end;

--cantidad de actores que participaron en una pelicula de un determinado genero, anio y genero como parametro
create function count_actor_por_genreanio(@genero varchar(20), @anio int) returns int
begin 
	declare @quantity int
	select @quantity = count(a.id)
	from actors a
		join movie_cast mc on a.id = mc.actor_id
		join movies m on mc.movie_id = m.id
		join genres g on m.id= g.id
		where description=@genero and year=@anio
	return @quantity 
end;
	
select dbo.count_actor_por_genreanio('Ciencia ficci�n', 2000) as 'Cantidad Actores' from actors

-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
create function f_comments_per_genre(@description varchar(50)) returns table
as return
	(select name, count(comment) as quantity 
		from ratings r
		join reviewers re on r.reviewer_id = re.id
		join movies m on r.movie_id = m.id
		join genres g on m.genre_id = g.id
		where description = @description
		group by name);


create function f_reviewer_max_comments_per_genre(@description varchar(50)) returns table
as return
	(
		select name from dbo.f_comments_per_genre(@description)
		where quantity = (
			select max(quantity) from dbo.f_comments_per_genre(@description)));

select * from dbo.f_reviewer_max_comments_per_genre('drama');


--nombre actor con mas participaci�n en peliculas de un genero, a�o parametros ambos

create function f_actor_per_movie_genre_anio(@genero varchar(20), @anio int) returns table
as return 
	(select name, count(a.id) as cantidad
		from actors a
		join movie_cast mc on a.id=mc.actor_id
		join movies m on mc.movie_id=m.id
		join genres g on m.id=g.id
		where description=@genero and year=@anio
		group by name
	);


create function f_max_actor_per_genre_anio(@genero varchar(20), @anio int) returns table
as return
	(
		select name from dbo.f_actor_per_movie_genre_anio(@genero, @anio)
		where cantidad = (
			select max(cantidad) from dbo.f_actor_per_movie_genre_anio(@genero, @anio)))

select * from dbo.f_max_actor_per_genre_anio('Ciencia ficci�n', 2000)


