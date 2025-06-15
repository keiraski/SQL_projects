create view v_price_with_discount as
SELECT p.name,
m.pizza_name,
m.price,
round(m.price - m.price * 0.1) AS discount_price
FROM person_order
JOIN person p ON p.id = person_order.person_id
JOIN menu m ON m.id = person_order.menu_id
ORDER BY p.name, m.pizza_name;