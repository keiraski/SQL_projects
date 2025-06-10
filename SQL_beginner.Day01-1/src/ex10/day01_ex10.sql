SELECT person.name as person_name,
       menu.pizza_name as pizza_name,
       pizzeria.name as pizzeria_name
FROM person_order
JOIN menu on person_order.menu_id = menu.id
JOIN pizzeria on menu.pizzeria_id = pizzeria.id
JOIN person on person_order.person_id = person.id
ORDER BY 1,2,3;

