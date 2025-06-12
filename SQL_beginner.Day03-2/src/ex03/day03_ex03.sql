-- Пиццерии, заказанные только женщинами
SELECT pi.name AS pizzeria_name
FROM pizzeria pi
JOIN person_visits pv ON pi.id = pv.pizzeria_id
JOIN person p ON pv.person_id = p.id
WHERE p.gender = 'female'
GROUP BY pi.name
HAVING COUNT(DISTINCT CASE WHEN p.gender = 'female' THEN p.id END) > 0
   AND COUNT(DISTINCT CASE WHEN p.gender = 'male' THEN p.id END) = 0

UNION

-- Пиццерии, заказанные только мужчинами
SELECT pi.name AS pizzeria_name
FROM pizzeria pi
JOIN person_visits pv ON pi.id = pv.pizzeria_id
JOIN person p ON pv.person_id = p.id
WHERE p.gender = 'male'
GROUP BY pi.name
HAVING COUNT(DISTINCT CASE WHEN p.gender = 'male' THEN p.id END) > 0
   AND COUNT(DISTINCT CASE WHEN p.gender = 'female' THEN p.id END) = 0

ORDER BY pizzeria_name;
