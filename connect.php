<?php

// $connect = mysqli_connect('localhost','root','','mydatabase'); 


 
$server = "35.172.43.136";
$username = "thai";
$password = "123@123a";
$dbname ="mydatabase";

$connect = mysqli_connect($server, $username, $password, $dbname);
if (!$connect) {
    echo "no";
	die("Connect Failed:".mysqli_connect_error());
	# code...
}
else {
    echo "yes";
}


?>
	