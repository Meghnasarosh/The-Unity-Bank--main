<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "ramyaa_bank";

	// $conn = mysqli_connect('localhost','root','','ramyaa_bank');
	$conn = mysqli_connect('localhost','root','','The Unity Bank -main');


	if(!$conn){
		die("Could not connect to the database - Error:  ".mysqli_connect_error());
	}

?>