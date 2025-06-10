select
    menu.pizza_name as object_name
from menu
union all
select
    person.name as object_name
from person
order by 1
