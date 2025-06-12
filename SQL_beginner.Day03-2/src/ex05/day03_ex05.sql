SELECT pi.name AS pizzeria_name
FROM pizzeria pi
JOIN person_visits pv ON pi.id = pv.pizzeria_id
JOIN person p ON pv.person_id = p.id
LEFT JOIN person_order po ON p.id = po.person_id AND po.pizzeria_id = pi.id
WHERE p.name = 'Andrey'
  AND po.id IS NULL
ORDER BY pi.name;
