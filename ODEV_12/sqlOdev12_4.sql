/*payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.*/
SELECT first_name , last_name FROM payment
JOIN customer ON customer.customer_id=payment.customer_id

WHERE payment.customer_id =
(

SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY COUNT(*) DESC
LIMIT 1	

) LIMIT 1 ;

/*SELECT
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    COUNT(payment.payment_id) AS total_purchases
FROM
    customer
INNER JOIN
    payment ON customer.customer_id = payment.customer_id
GROUP BY
    customer.customer_id, customer.first_name, customer.last_name
ORDER BY
    total_purchases ASC;*/


