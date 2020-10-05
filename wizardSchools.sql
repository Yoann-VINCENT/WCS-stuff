mysql> INSERT INTO school (name, country, capacity) 
    -> VALUES ('Beauxbatons Academy of Magic', 'France', 550), 
    -> ('Castelobruxo', 'Brazil', 380), 
    -> ('Durmstrang Institute', 'Norway', 570),
    -> ('Hogwarts School of Witchcraft and Wizardry', 'United Kingdom', 450),
    -> ('Ilvermorny School of Witchcraft and Wizardry', 'USA', 300),
    -> ('Koldovstoretz', 'Russia', 125),
    -> ('Mahoutokoro School of Magic', 'Japan', 800),
    -> ('Uagadou School of Magic', 'Uganda', 350);
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> UPDATE school
    -> SET country = 'Sweden'
    -> WHERE name = 'Durmstrang Institute';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE school
    -> SET capacity = 700
    -> WHERE name = 'Mahoutokoro School of Magic';
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM school WHERE name LIKE '%Magic%';
Query OK, 3 rows affected (0.00 sec)

mysql> SELECT * FROM school;
+----+----------------------------------------------+----------+----------------+
| id | name                                         | capacity | country        |
+----+----------------------------------------------+----------+----------------+
|  2 | Castelobruxo                                 |      380 | Brazil         |
|  3 | Durmstrang Institute                         |      570 | Sweden         |
|  4 | Hogwarts School of Witchcraft and Wizardry   |      450 | United Kingdom |
|  5 | Ilvermorny School of Witchcraft and Wizardry |      300 | USA            |
|  6 | Koldovstoretz                                |      125 | Russia         |
+----+----------------------------------------------+----------+----------------+
5 rows in set (0.00 sec)
