SELECT name, rating
FROM pizzeria
WHERE rating <= 5 AND rating >= 3.5
ORDER BY rating;

SELECT name, rating
FROM pizzeria
WHERE rating between 3.5 and 5
ORDER BY rating;