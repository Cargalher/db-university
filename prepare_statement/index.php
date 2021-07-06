<?php


## 1. Define constants for the conection 
define("DB_SERVERNAME", "localhost");
define("DB_USERNAME", "root"); 
define("DB_PASSWORD", "root"); 
define("DB_NAME", "university"); 
define('DB_PORT', '3306');


// var_dump(DB_SERVERNAME, DB_USERNAME, DB_PASSWORD, DB_NAME);


# 2. connect to the database with mysqli
$connection = new mysqli(DB_SERVERNAME, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);
// var_dump($connection);


# 3. check for connection errors
if ($connection && $connection->connect_error) {
  echo "Connection failed: " . $connection->connect_error;
  die();
}
# 4. Query the database
echo 'Connection Successful, Go!';