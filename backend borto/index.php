<!DOCTYPE php>

<?php

	session_start();
	
	if(!isset($_SESSION["logged"])) {
		
		header("Location: login.php");
		exit();
		
	}
	
	$conn = dbConnect();
	$ris = $conn->query("SELECT * FROM VI_RIEPILOGO WHERE ......"); // bisogna creare la vista
	
?>

<html>
	
	<head>
		
		<meta charset="UTF-8">
		<title>Comma</title>
		
	</head>
	
	<body>
		
		<!-- pagina di riepilogo delle non conformità -->
		
	</body>
	
</html>