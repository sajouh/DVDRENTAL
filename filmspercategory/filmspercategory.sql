--films by category ordered alphabetically

select f.film_id, f.title, c.name as category
from film f
join film_category fc
on f.film_id = fc.film_id
join category c 
on fc.category_id = c.category_id
group by 1,2,3
order by 3


