--Question 1: 2 actors
select count(last_name)
from actor 
where last_name = 'Wahlberg';

--Question 2: 0 purchases
select count(amount) from payment where 3.99  < amount and amount < 5.99;

--Question 3: It has only one of each film in the inventory, the list is 1000 title names long 
select count(title), title from film group by title order by count desc;

--Question 4: None
select last_name from customer where last_name like 'William';

--Question 5: staff_id = 2, they sold 7304
select count(payment_id), staff_id from payment group by staff_id order by count desc;

--Question 6: Scrolling down, we can see there are 378 distinct entries 
select count(district),district from address group by district order by count desc;

--Question 7: film_id = 508
select count(actor_id), film_id from film_actor group by film_id order by count desc;

--Question 8: 21 names
select last_name from customer where last_name like '%es';

--Question 9: 3 payment amounts: -427.01, -425.01, -429.01
select count(amount),amount from payment where customer_id > 380 and customer_id  < 430 group by amount order by count desc ;

--Question 10: 5 rating categories, 223 movies are PG-13
select count(film_id), rating from film group by rating order by count desc;