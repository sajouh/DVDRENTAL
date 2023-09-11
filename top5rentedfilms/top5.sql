--TOP 5 MOST RENTED FILMS


select f.film_id, title, count (r.inventory_id) as rental_count
from film f
join inventory i 
on i.film_id = f.film_id
join rental r
on i.inventory_id = r.inventory_id
group by 1,2
order by rental_count desc
limit 5 ;


