1º
SELECT * FROM film f
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN store s on i.store_id = s.store_id
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city on a.city_id = city.city_id
INNER JOIN country c on  city.country_id = c.country_id
WHERE title = 'ACE GOLDFINGER'

2º
SELECT * FROM film f
inner JOIN film_category fc on f.film_id = fc.film_id
INNER JOIN category c on fc.category_id = c.category_id
INNER JOIN language l on f.language_id = l.language_id 

3º
SELECT * FROM rental 
inner JOIN staff on rental.staff_id = staff.staff_id
INNER JOIN address on staff.address_id = address.address_id
INNER JOIN city on address.city_id = city.city_id
INNER JOIN country on city.country_id = country.country_id

4º
SELECT f.title,min(return_date), max(return_date) FROM rental r
INNER JOIN inventory i on r.inventory_id = i.inventory_id
INNER JOIN film f on i.film_id = f.film_id