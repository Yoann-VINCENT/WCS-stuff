<?php
    $message1 = "0@sn9sirppa@#?ia'jgtvryko1";
    $message2 = "q8e?wsellecif@#?sel@#?setuotpazdsy0*b9+mw@x1vj";
    $message3 = "aopi?sgnirts@#?sedhtg+p9l!";

    $keyNumber = strlen($message1) / 2;
    $decodeMessage1 = strrev(str_replace('@#?', ' ', substr($message1, 5, $keyNumber)));
    $decodeMessage2 = strrev(str_replace('@#?', ' ', substr($message2, 5, strlen($message2) / 2)));
    $decodeMessage3 = strrev(str_replace('@#?', ' ', substr($message3, 5, strlen($message3) / 2)));

    echo "$decodeMessage1   $decodeMessage2   $decodeMessage3";
