select p.name, 
    count(*) as count_of_orders, 
    round(avg(m.price),2) as average_price, 
    max(m.price) as max_price, 
    min(m.price) as min_price
from person_order 
inner join menu m on person_order.menu_id = m.id
inner join pizzeria p on m.pizzeria_id = p.id
group by p.name
order by 1;