/* Obtener la cantidad de películas por género */

SELECT genres, COUNT(*) FROM movies_metadata GROUP BY genres;

/* Encontrar la película con mayor recaudación */

SELECT original_title, revenue FROM movies_metadata ORDER BY revenue DESC LIMIT 1; 

/* Crear una consulta SQL que cuente el número de películas para adultos */

SELECT COUNT(*) FROM movies_metadata WHERE adult = 'True';

/* Calcular la duración promedio de las películas */

SELECT AVG(runtime) FROM movies_metadata;

/* Listar películas con una puntuación de audiencia específica o superior */

SELECT original_title, vote_average FROM movies_metadata WHERE vote_average >= 9;

/* Contar la cantidad de películas por idioma original */

SELECT original_language, COUNT(*) FROM movies_metadata GROUP BY original_language;

/* Encontrar todas las películas lanzadas en un año específico */

SELECT original_title, release_date FROM movies_metadata WHERE release_date LIKE '2020%';

/* Seleccionar películas que aún no han sido lanzadas (según la columna 'status') */

SELECT original_title, status FROM movies_metadata WHERE status != 'Released';

/* Listar las películas que pertenecen a una colección or blank*/

SELECT original_title, belongs_to_collection FROM movies_metadata WHERE belongs_to_collection IS NOT NULL and belongs_to_collection != '';

/*Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y
'revenue' están completos y son correctos) */

SELECT original_title, budget, revenue, revenue - budget AS profit FROM movies_metadata; where budget != 0 and revenue != 0;
