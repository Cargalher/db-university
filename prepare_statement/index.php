<?php


## 1. Define constants for the conection 
define("DB_SERVERNAME", "localhost");
define("DB_USERNAME", "root"); 
define("DB_PASSWORD", "root"); 
define("DB_NAME", "university"); 
define('DB_PORT', '3306');


// var_dump(DB_SERVERNAME, DB_USERNAME, DB_PASSWORD, DB_NAME);


# 2. Connect to the database with mysqli
$connection = new mysqli(DB_SERVERNAME, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);
// var_dump($connection);


# 3. check for our connections
if ($connection && $connection->connect_error) {
  echo "Connection failed: " . $connection->connect_error;
 
}
# 4. Query the database if the conection is stablished
echo 'Connection Successful, Go!';

$sql = "SELECT * FROM students";
$results = $connection->query($sql);
var_dump($results);
die();
