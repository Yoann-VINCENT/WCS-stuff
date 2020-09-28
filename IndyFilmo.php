<?php
    $movies = [
        "Les Aventuriers de l'arche perdue" => ['Harrison Ford', 'Karen Allen', 'Paul Freeman'],
        "Indiana Jones et le Temple maudit" => ['Harrison Ford', 'Kate Capshaw', 'Ke Huy Quan'],
        "Indiana Jones et la Dernière Croisade" => ['Harrison Ford', 'Sean Connery', 'John Rhys-Davies'],
    ];
    foreach ($movies as $movieTittle => $actors) {
        echo ("Dans le film $movieTittle, les principaux acteurs sont : $actors[0], $actors[1], $actors[2]. <br />");
    }
