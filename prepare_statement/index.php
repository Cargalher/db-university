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

#5. check if there are results and we do a loop

if($results && $results->num_rows > 0){
// loop the result and print it
// var_dump($results->fetch_assoc());
while ($student = $results->fetch_array()){  //saving the single result from a single row in a variable called 'student' (i called the variable student because i am doing the loop inside of the tabella students)

}


} /*else if(){

}else{

}*/
