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

5º
SELECT * FROM film f
INNER JOIN film_category fc on f.film_id = fc.film_id
INNER JOIN category c on fc.category_id = c.category_id
INNER JOIN language l on l.language_id = f.language_id
INNER JOIN inventory i on i.film_id = f.film_id
INNER JOIN store s on s.store_id = i.store_id
INNER JOIN staff st on st.store_id = s.store_id
INNER JOIN payment p on p.staff_id = st.staff_id
INNER JOIN rental re on re.staff_id = p.staff_id
INNER JOIN customer cu on re.customer_id = cu.customer_id
INNER JOIN address ad on ad.address_id = cu.address_id
INNER JOIN city ct on ct.city_id = ad.city_id
INNER JOIN country cy on cy.country_id = ct.country_id


6º
SELECT count(*), rating from film
GROUP by rating


7º
SELECT name,count(f.film_id) from category c
INNER JOIN film_category fc on fc.category_id = c.category_id
INNER JOIN film f on f.film_id = fc.film_id
GROUP by name


8º
SELECT count(a.actor_id) AS cant_actor,first_name,last_name FROM actor a 
INNER JOIN film_actor fa on fa.actor_id = a.actor_id
GROUP by a.actor_id
ORDER by cant_actor DESC	
LIMIT 10;

9º
SELECT count(i.film_id) as cant_peliculas, a.address as direccion,c.city as ciudad,co.country as pais  FROM inventory i 
INNER JOIN store s on s.store_id = i.store_id
INNER JOIN address a on a.address_id = s.address_id
INNER JOIN city c on c.city_id = a.city_id
INNER JOIN country co on co.country_id = c.country_id
GROUP by s.store_id

10º
SELECT count(i.film_id) as cant_peliculas, a.address as direccion,c.city as ciudad,co.country as pais  FROM inventory i 
INNER JOIN store s on s.store_id = i.store_id
INNER JOIN address a on a.address_id = s.address_id
INNER JOIN city c on c.city_id = a.city_id
INNER JOIN country co on co.country_id = c.country_id
GROUP by s.store_id

11º
select AVG(rental_duration*rental_rate) as promedio,name FROM film f
INNER JOIN film_category fc on fc.film_id = f.film_id
INNER JOIN category c on c.category_id = fc.category_id
GROUP by name

12º
select title as nombre,(rental_duration*rental_rate) as costo_total,rental_duration as dias,rental_rate as costo_por_dia,rental_date as dia_que_se_alquilo,return_date as dia_que_se_devolvio from film f 
INNER JOIN inventory i on i.film_id = f.film_id
INNER JOIN rental r on r.inventory_id = i.inventory_id
WHERE title =  'ALABAMA DEVIL'
GROUP by title

13º
SELECT title,name,rental_duration,length from film f
INNER JOIN film_category fc on fc.film_id = f.film_id
INNER JOIN category c on c.category_id = fc.category_id
ORDER by length DESC

14º
SELECT * from film
WHERE title like 'w%'





INSERT INTO actor(actor_id,first_name,last_name,last_update)
VALUES("201","leonardo","ojeda", "2000-20-20")




UPDATE actor
SET first_name = "leo", last_name = "ojed"
WHERE first_name = "leonardo" AND last_name = "ojeda"


DELETE from actor
WHERE actor_id = "201"