<?php
    function writeSecretSentence( string $parameter1, string $parameter2): string
    {
        return "$parameter1 s'incline face à $parameter2";
    }
echo writeSecretSentence ("le serpent", "la bière");
