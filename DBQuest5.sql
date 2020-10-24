1) Retourne les noms, prénoms, rôle et équipe de tous les joueurs, 
classés dans l’ordre alphabétique par équipe, puis par rôle dans l’équipe, 
puis par nom de famille, puis par prénom.

mysql> SELECT w.lastname, w.firstname, p.role, t.name
    -> FROM player p
    -> JOIN wizard w ON w.id=p.wizard_id
    -> JOIN team t ON t.id=p.team_id
    -> ORDER BY t.name ASC, p.role ASC, w.lastname ASC, w.firstname ASC;
+-----------------+-------------+--------+------------+
| lastname        | firstname   | role   | name       |
+-----------------+-------------+--------+------------+
| Black           | Sirius      | beater | Gryffindor |
| Brown           | Lavender    | beater | Gryffindor |
| Finnigan        | Seamus      | beater | Gryffindor |
| Hagrid          | Rubeus      | beater | Gryffindor |
| Longbottom      | Alice       | beater | Gryffindor |
| McGonagall      | Minerva     | beater | Gryffindor |
| Potter          | Harry       | beater | Gryffindor |
| Potter          | James       | beater | Gryffindor |
| Thomas          | Dean        | beater | Gryffindor |
| Weasley         | Arthur      | beater | Gryffindor |
| Weasley         | Percy       | beater | Gryffindor |
| Bell            | Katie       | chaser | Gryffindor |
| Dumbledore      | Albus       | chaser | Gryffindor |
| Granger         | Hermione    | chaser | Gryffindor |
| J.              | Lily        | chaser | Gryffindor |
| Jordan          | Lee         | chaser | Gryffindor |
| Longbottom      | Augusta     | chaser | Gryffindor |
| Longbottom      | Frank       | chaser | Gryffindor |
| Longbottom      | Neville     | chaser | Gryffindor |
| Pettigrew       | Peter       | chaser | Gryffindor |
| Spinnet         | Alicia      | chaser | Gryffindor |
| Weasley         | George      | chaser | Gryffindor |
| Wood            | Oliver      | chaser | Gryffindor |
|                 | Cadogan     | keeper | Gryffindor |
| Creevey         | Dennis      | keeper | Gryffindor |
| de              | Nicholas    | keeper | Gryffindor |
| Dumbledore      | Aberforth   | keeper | Gryffindor |
| Johnson         | Angelina    | keeper | Gryffindor |
| Weasley         | Ginevra     | keeper | Gryffindor |
| Binns           | Cuthbert    | seeker | Gryffindor |
| Creevey         | Colin       | seeker | Gryffindor |
| Gryffindor      | Godric      | seeker | Gryffindor |
| Vane            | Romilda     | seeker | Gryffindor |
| Weasley         | Fred        | seeker | Gryffindor |
| Weasley         | Ronald      | seeker | Gryffindor |
| Weasley         | William     | seeker | Gryffindor |
| Abbott          | Hannah      | beater | Hufflepuff |
| Finch-Fletchley | Justin      | beater | Hufflepuff |
| Friar           | Fat         | beater | Hufflepuff |
| Smith           | Hepzibah    | beater | Hufflepuff |
| Sprout          | Pomona      | beater | Hufflepuff |
| Tonks           | Nymphadora  | beater | Hufflepuff |
| Bones           | Amelia      | chaser | Hufflepuff |
| Scamander       | Newton      | chaser | Hufflepuff |
| Bones           | Susan       | keeper | Hufflepuff |
| Diggory         | Cedric      | keeper | Hufflepuff |
| Smith           | Zacharias   | keeper | Hufflepuff |
| Hufflepuff      | Helga       | seeker | Hufflepuff |
| Clearwater      | Penelope    | beater | Ravenclaw  |
| Quirrell        | Quirinus    | beater | Ravenclaw  |
| Ravenclaw       | Helena      | beater | Ravenclaw  |
| Warren          | Myrtle      | beater | Ravenclaw  |
| Chang           | Cho         | chaser | Ravenclaw  |
| Edgecombe       | Marietta    | chaser | Ravenclaw  |
| Flitwick        | Filius      | chaser | Ravenclaw  |
| Goldstein       | Anthony     | chaser | Ravenclaw  |
| Lockhart        | Gilderoy    | chaser | Ravenclaw  |
| Lovegood        | Luna        | chaser | Ravenclaw  |
| Lovegood        | Xenophilius | chaser | Ravenclaw  |
| Ollivander      | Garrick     | chaser | Ravenclaw  |
| Corner          | Michael     | seeker | Ravenclaw  |
| Ravenclaw       | Rowena      | seeker | Ravenclaw  |
| Trelawney       | Sybill      | seeker | Ravenclaw  |
| Bulstrode       | Millicent   | beater | Slytherin  |
| Crabbe          | Vincent     | beater | Slytherin  |
| Flint           | Marcus      | beater | Slytherin  |
| Parkinson       | Pansy       | beater | Slytherin  |
| Snape           | Severus     | beater | Slytherin  |
| Zabini          | Blaise      | beater | Slytherin  |
| Baron           | Bloody      | chaser | Slytherin  |
| Lestrange       | Bellatrix   | chaser | Slytherin  |
| Lestrange       | Rodolphus   | chaser | Slytherin  |
| Malfoy          | Draco       | chaser | Slytherin  |
| Malfoy          | Lucius      | chaser | Slytherin  |
| Nigellus        | Phineas     | chaser | Slytherin  |
| Nott            | Theodore    | chaser | Slytherin  |
| Riddle          | Tom         | chaser | Slytherin  |
| Tonks           | Andromeda   | chaser | Slytherin  |
| Black           | Regulus     | keeper | Slytherin  |
| Goyle           | Gregory     | seeker | Slytherin  |
| Lestrange       | Rabastan    | seeker | Slytherin  |
| Malfoy          | Narcissa    | seeker | Slytherin  |
| Slytherin       | Salazar     | seeker | Slytherin  |
| Umbridge        | Dolores     | seeker | Slytherin  |
+-----------------+-------------+--------+------------+
84 rows in set (0.00 sec)

2) Retourne uniquement les prénoms et noms des joueurs ayant le rôle de seeker (attrapeur),
classés par ordre alphabétique de nom puis prénom

mysql> SELECT w.firstname, w.lastname
    -> FROM player p
    -> JOIN wizard w ON w.id=p.wizard_id
    -> WHERE p.role = "seeker"
    -> ORDER BY w.lastname ASC, w.firstname ASC;
+-----------+------------+
| firstname | lastname   |
+-----------+------------+
| Cuthbert  | Binns      |
| Michael   | Corner     |
| Colin     | Creevey    |
| Gregory   | Goyle      |
| Godric    | Gryffindor |
| Helga     | Hufflepuff |
| Rabastan  | Lestrange  |
| Narcissa  | Malfoy     |
| Rowena    | Ravenclaw  |
| Salazar   | Slytherin  |
| Sybill    | Trelawney  |
| Dolores   | Umbridge   |
| Romilda   | Vane       |
| Fred      | Weasley    |
| Ronald    | Weasley    |
| William   | Weasley    |
+-----------+------------+
16 rows in set (0.00 sec)

3)Retourne la liste de tous les sorciers qui ne pratiquent pas le quidditch.

mysql> SELECT w.lastname, w.firstname
    -> FROM wizard w
    -> LEFT JOIN player p ON w.id=p.wizard_id
    -> WHERE p.role IS NULL
    -> ORDER BY w.lastname ASC, w.firstname ASC;
+----------+-----------+
| lastname | firstname |
+----------+-----------+
|          | Crabbe    |
| Boot     | Terry     |
| Lupin    | Remus     |
| Patil    | Padma     |
| Patil    | Parvati   |
| Robins   | Demelza   |
| Slughorn | Horace    |
| Weasley  | Charles   |
| Weasley  | Molly     |
+----------+-----------+
9 rows in set (0.00 sec)
