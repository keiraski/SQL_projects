SELECT person_order.order_date, person.name || ' (age:' || person.age || ')' as person_information
From person
join
person_order on person_order.person_id = person.id
order by 1, 2;