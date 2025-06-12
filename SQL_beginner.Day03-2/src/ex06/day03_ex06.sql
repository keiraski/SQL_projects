SELECT 
    m1.pizza_name,
    pi1.name AS pizzeria_name_1,
    pi2.name AS pizzeria_name_2,
    m1.price
FROM menu m1
JOIN pizzeria pi1 ON m1.pizzeria_id = pi1.id
JOIN menu m2 ON m1.pizza_name = m2.pizza_name 
            AND m1.price = m2.price
JOIN pizzeria pi2 ON m2.pizzeria_id = pi2.id
WHERE pi1.id <> pi2.id
ORDER BY m1.pizza_name;
