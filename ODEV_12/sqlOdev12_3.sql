/*film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.*/
SELECT title FROM film
WHERE rental_rate = (
	SELECT MIN (rental_rate) FROM film
) AND 
replacement_cost =  (
	SELECT MIN (rental_rate) FROM film 
);
 