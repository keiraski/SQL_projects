SELECT action_date.order_date, person.name as person_name
from (select order_date, person_id from person_order
      intersect
      select visit_date, person_id from person_visits) as action_date
         join
     person on person.id = action_date.person_id
ORDER BY 1, 2 DESC;