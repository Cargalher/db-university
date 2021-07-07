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

$name = $_GET['name'];
$sql = "SELECT * FROM students WHERE name = '" . $name . "';";
$results = $connection->query($sql);

var_dump($results);


if($results && $results->num_rows > 0){
  // loop the result and print it
  // var_dump($results->fetch_assoc());
  while ($student = $results->fetch_array()){  //saving the single result from a single row in a variable called 'student' (i called the variable student because i am doing the loop inside of the tabella students)
    ?>
    <h1><?= $student['name'];?></h1>
    <?php
  }
  
  
  } else if($results){
    echo 'There is no result';
  }else{
    echo 'There is a query Error';
  }
  
  #6. Close the conection
  
  $connection->close();
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SQL Injections</title>
</head>
<body>


    <form action="#" method="get">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Type a name" aria-describedby="helpId">
          <small id="nameHelper" class="text-muted">Type a name or sql inject me!</small>
        </div>
    </form>


</body>
</html>