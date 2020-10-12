<?php
require_once ('connec.php');

$pdo = new PDO(DSN, USER, PASS);

if (isset($_POST['firstname']) && isset($_POST['lastname'])) {
    if(strlen($_POST['firstname']) <= 45 && strlen($_POST['lastname']) <= 45) {
        $newFirstname = trim($_POST['firstname']);
        $newLastname = trim($_POST['lastname']);
        $query = 'INSERT INTO friend (firstname, lastname) VALUES (:firstname, :lastname)';
        $statement = $pdo->prepare($query);

        $statement->bindValue(':firstname', $newFirstname, \PDO::PARAM_STR);
        $statement->bindValue(':lastname', $newLastname, \PDO::PARAM_STR);

        $statement->execute();
        header('Location: index.php');
    }
}

$query = "SELECT * FROM friend";
$statement = $pdo->query($query);
$friends = $statement->fetchAll();

?>

<ul>
<?php foreach($friends as $friend) {
    ?> <li> <?= $friend['firstname'] . ' ' . $friend['lastname'];?> </li>
<?php } ?>
</ul>

<form method="post">
    <label for="firstname">Firstname</label>
    <input required type="text" name="firstname" id="firstname">
    <label for="lastname">Lastname</label>
    <input required type="text" name="lastname" id="lastname">
    <button name="friendButton">Submit</button>
</form>
