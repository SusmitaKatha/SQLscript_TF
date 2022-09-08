-- genres of movies has Nicolas Cage been in
SELECT DISTINCT genre
FROM movie_genre JOIN nicolas_cage_movies
ON nicolas_cage_movies.movie_id = movie_genre.movie_id;


-- returns all movie IDs and their genres
--If Nicolas Cage has appeared in that movie, include the movie name
SELECT movie_genre.movie_id, genre, movie_name
FROM movie_genre LEFT OUTER JOIN nicolas_cage_movies
ON nicolas_cage_movies.movie_id = movie_genre.movie_id;