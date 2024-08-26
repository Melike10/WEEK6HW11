/*
actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
İlk 3 sorguyu tekrar eden veriler için de yapalım
*/

(SELECT DISTINCT first_name FROM actor)
UNION
(SELECT DISTINCT first_name FROM customer);

(SELECT DISTINCT first_name FROM actor)
INTERSECT
(SELECT DISTINCT first_name FROM customer);

(SELECT DISTINCT first_name FROM actor)
EXCEPT
(SELECT DISTINCT first_name FROM customer);

(SELECT DISTINCT first_name FROM actor)
UNION ALL
(SELECT DISTINCT first_name FROM customer);

(SELECT DISTINCT first_name FROM actor)
INTERSECT ALL
(SELECT DISTINCT first_name FROM customer);

(SELECT DISTINCT first_name FROM actor)
EXCEPT ALL
(SELECT DISTINCT first_name FROM customer);