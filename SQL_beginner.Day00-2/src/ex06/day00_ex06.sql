SELECT (select name from person where id = person_order.person_id) as person_name,
    (SELECT CASE WHEN name = 'Denis' THEN TRUE ELSE FALSE END
        FROM person WHERE id = person_order.person_id) AS check_name
FROM person_order
WHERE
        menu_id IN (13, 14, 18)
  AND order_date = '2022-01-07';