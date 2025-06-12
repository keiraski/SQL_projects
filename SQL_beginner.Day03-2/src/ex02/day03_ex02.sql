SELECT 
    m.pizza_name,
    m.price,
    p.name AS pizzeria_name
FROM 
    menu m
JOIN 
    pizzeria p ON m.pizzeria_id = p.id
LEFT JOIN 
    person_order po ON m.id = po.menu_id
WHERE 
    po.id IS NULL
ORDER BY 
    m.pizza_name, 
    m.price;
    