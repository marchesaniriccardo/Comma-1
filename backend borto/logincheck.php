<!DOCTYPE php>

<?php
	
	require "function.php";
	
	$user = $_POST["user"];
	$pw = hash("sha256", $_POST["password"]);
	
	$conn = dbConnect();
	$ris = $conn->query("SELECT username, password FROM IMPIEGATO WHERE username='$user' and password='$pw'");
	
	session_start();
	
	if($ris->num_rows == 1) {
		
		$_SESSION["logged"] = true;
		$_SESSION["user"] = $user;
		
	} else {
		
		$_SESSION["login_failed"] = true;
		
	}
	
	header("Location: index.php");
	
?>