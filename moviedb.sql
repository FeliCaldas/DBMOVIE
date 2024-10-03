CREATE TABLE genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE actor (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    nationality VARCHAR(50)
);

CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES genre(id),
    name VARCHAR(150),
    description VARCHAR(1000),
    release_date DATE,
    actor_id INTEGER REFERENCES actor(id)
);

CREATE TABLE actor_movie (
    actor_id INTEGER REFERENCES actor(id),
    movie_id INTEGER REFERENCES movie(id),
    PRIMARY KEY (actor_id, movie_id)
);

CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES movie(id),
    stars INTEGER,
    comment TEXT
);
INSERT INTO genre (name) VALUES ('COMEDIA');
INSERT INTO actor (name, birthday, nationality) VALUES ('JOAO MARCIO', '1900-11-13', 'gay');
INSERT INTO movie (genre_id, name, description, release_date, actor_id) VALUES (1, 'AMERICAN PIE', 'SEXO NA ESCOLA E PESSOAS GOZANDO', '1998-10-17', 1); 
INSERT INTO review (movie_id, stars, comment) VALUES (1, '5', 'MUITO GOSTOSO');
INSERT INTO actor_movie (actor_id, movie_id) VALUES (1, 1);

SELECT * FROM movie;
SELECT * FROM actor;
SELECT * FROM genre;
SELECT * FROM actor_movie;
SELECT * FROM review;
