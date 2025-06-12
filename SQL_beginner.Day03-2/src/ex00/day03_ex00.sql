SELECT 
    m.pizza_name,
    m.price,
    pi.name AS pizzeria_name,
    pv.visit_date
FROM 
    person p
JOIN 
    person_visits pv ON p.id = pv.person_id
JOIN 
    pizzeria pi ON pv.pizzeria_id = pi.id
JOIN 
    menu m ON pi.id = m.pizzeria_id
WHERE 
    p.name = 'Kate' 
    AND m.price BETWEEN 800 AND 1000
ORDER BY 
    m.pizza_name, 
    m.price, 
    pizzeria_name;