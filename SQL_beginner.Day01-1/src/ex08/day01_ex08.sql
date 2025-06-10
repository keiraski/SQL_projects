SELECT
    date.order_date,
    person.name || ' (age:' || person.age || ')' as person_information
From
    person
natural join
    (select order_date,
            person_id as id
     from person_order) as date

order by 1, 2;
