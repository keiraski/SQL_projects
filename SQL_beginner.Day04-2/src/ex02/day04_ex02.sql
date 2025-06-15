create view v_generated_dates as
select g::date as generated_date
from generate_series('2022-01-01','2022-01-31',interval '1 day') as g
order by 1