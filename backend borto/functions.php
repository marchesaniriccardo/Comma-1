<!DOCTYPE php>

<?php

	require "golbalvars.php";
	
	function dbConnect() {
		
		$conn = new mysqli(DB_HOST_NAME, DB_USER, DB_PASSWORD, DB_NAME);
		
		if($conn->connect_error) {
			
			die("Connection failed: " . $conn->connect_error);
			
		}
		
		return $conn;
		
	}
	
?>