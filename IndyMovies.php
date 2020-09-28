<?php
    $movies = [
        "Les Aventuriers de l'arche perdue" => '1981',
        "Indiana Jones et le Temple maudit" =>'1984',
        "Indiana Jones et la Dernière Croisade" =>'1989'
    ];
    asort($movies);
    foreach ($movies as $movieTittle => $releaseDate){
        echo "$releaseDate - $movieTittle <br />";
    }
