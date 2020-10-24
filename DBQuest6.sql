1) Retourne le nom des équipes et le nombre de joueurs par équipe, 
le tout classé par nombre de joueurs par équipe, de la plus nombreuse à la moins nombreuse.

mysql> SELECT t.name, count(*) AS nb_player
    -> FROM player p
    -> JOIN team t ON t.id=p.team_id
    -> GROUP BY p.team_id
    -> ORDER BY nb_player DESC;
+------------+-----------+
| name       | nb_player |
+------------+-----------+
| Gryffindor |        36 |
| Slytherin  |        21 |
| Ravenclaw  |        15 |
| Hufflepuff |        12 |
+------------+-----------+
4 rows in set (0.00 sec)

2) Retourne uniquement les noms des équipes complètes 
(ayant 14 joueurs ou plus, c’est-à- dire 7 joueurs et 7 remplaçants minimum), 
classés par ordre alphabétique.

mysql> SELECT t.name
    -> FROM player p
    -> JOIN team t ON t.id=p.team_id
    -> GROUP BY t.name
    -> HAVING count(*) > 14
    -> ORDER BY t.name ASC;
+------------+
| name       |
+------------+
| Gryffindor |
| Ravenclaw  |
| Slytherin  |
+------------+
3 rows in set (0.00 sec)

3) L’entraîneur des Gryffondor est superstitieux, son jour préféré est le lundi. 
Retourne la liste des joueurs de son équipe qui ont été enrôlés un lundi 
(il souhaite les faire jouer en priorité), et classe les résultats par date d’enrôlement chronologique.

mysql> SELECT w.firstname, w.lastname, p.enrollment_date
    -> FROM player p
    -> JOIN wizard w ON w.id=p.wizard_id
    -> JOIN team t ON t.id=p.team_id
    -> WHERE t.name = "Gryffindor"
    -> GROUP BY w.firstname, w.lastname, p.enrollment_date
    -> HAVING DAYOFWEEK(p.enrollment_date) = 2
    -> ORDER BY p.enrollment_date ASC;
+-----------+------------+-----------------+
| firstname | lastname   | enrollment_date |
+-----------+------------+-----------------+
| George    | Weasley    | 1991-08-26      |
| Alice     | Longbottom | 1992-02-17      |
| Cadogan   |            | 1993-01-04      |
| Godric    | Gryffindor | 1993-08-30      |
| Sirius    | Black      | 1994-01-10      |
| Aberforth | Dumbledore | 1995-04-24      |
| Augusta   | Longbottom | 1999-10-25      |
+-----------+------------+-----------------+
7 rows in set (0.00 sec)
