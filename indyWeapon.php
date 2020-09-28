<?php
    $weapons = ['fists', 'whip', 'gun'];
    $opponentWeapon = $weapons[rand(0,2)]; // Cela permet de choisir une arme de manière aléatoire.

    if ($opponentWeapon === 'fists') {
        $indyWeapon = 'gun';
    }   else if ($opponentWeapon === 'whip') {
        $indyWeapon = 'fists';
    }   else {
        $indyWeapon = 'whip';
    }
