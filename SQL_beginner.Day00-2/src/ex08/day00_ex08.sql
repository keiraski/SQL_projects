select * FROM person_order
WHERE person_order.id % 2 = 0
order by id;