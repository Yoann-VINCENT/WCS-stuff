mysql> SELECT * FROM wizard WHERE birthday BETWEEN '1975-01-01' AND '1985-01-01';
+----+-----------+----------+------------+-------------+---------------------------------------+-----------+
| id | firstname | lastname | birthday   | birth_place | biography                             | is_muggle |
+----+-----------+----------+------------+-------------+---------------------------------------+-----------+
|  1 | harry     | potter   | 1980-07-31 | london      |                                       |         0 |
|  2 | hermione  | granger  | 1979-09-19 |             | Friend of Harry Potter                |         0 |
|  4 | ron       | weasley  | 1980-03-01 |             | Best friend of Harry                  |         0 |
|  5 | ginny     | weasley  | 1981-08-11 |             | Sister of Ron and girlfriend of Harry |         0 |
|  6 | fred      | weasley  | 1978-04-01 |             |                                       |         0 |
|  7 | george    | weasley  | 1978-04-01 |             |                                       |         0 |
| 10 | drago     | malefoy  | 1980-06-05 |             |                                       |         0 |
| 14 | dudley    | dursley  | 1980-06-23 |             | Cousin d'Harry                        |         1 |
+----+-----------+----------+------------+-------------+---------------------------------------+-----------+
8 rows in set (0.00 sec)

mysql> SELECT firstname FROM wizard WHERE firstname LIKE 'H%';
+-----------+
| firstname |
+-----------+
| harry     |
| hermione  |
+-----------+
2 rows in set (0.00 sec)

mysql> SELECT firstname, lastname FROM wizard WHERE lastname='Potter' ORDER BY firstname ASC;
+-----------+----------+
| firstname | lastname |
+-----------+----------+
| harry     | potter   |
| lily      | potter   |
+-----------+----------+
2 rows in set (0.00 sec)

mysql> SELECT firstname, lastname, birthday FROM wizard ORDER BY birthday ASC LIMIT 0,1;
+-----------+------------+------------+
| firstname | lastname   | birthday   |
+-----------+------------+------------+
| albus     | dumbledore | 1881-07-01 |
+-----------+------------+------------+
1 row in set (0.00 sec)


