<?php

define('DB_HOST', 'localhost');
define("DB_USER", 'root');
define('DB_PASS', 'root');
define('DB_NAME', 'university');
define('DB_PORT', '3306');


#connect to the database with mysqli
$connection = new mysqli(DB_SERVERNAME, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);

# check for connection errors
if ($connection && $connection->connect_error) {
  echo 'Sorry, connection failed! ' . $connection->connect_error;
//   die();
}

echo 'Connection successful! yeee';
//var_dump($connection);

//prepare and bind
$statement = $connection->prepare("INSERT INTO `students` (`name`,`surname`, `email`) VALUES (?, ?, ?)");
$statement->bind_param("sss", $name, $surname, $email);

// set paramters and execute
$name = "Thea";
$surname = "Ferretti";
$email = "mferraro@desantis.com";
$statement->execute();
var_dump($statement);


$results = $connection->query("SELECT * FROM `students`;");
if ($results && $results->num_rows > 0) {
  var_dump($results);
  while ($row = $results->fetch_assoc()) {
    var_dump($row);
  }
} elseif ($results) {
  echo "0 Results";
} else {
  echo "Query Error";
}

