<!DOCTYPE php>

<?php
	
	session_start();
	
	if(isset($_SESSION["logged"])) {
		
		header("Location: index.php");
		exit();
		
	}
	
?>

<html>
	
	<head>
		
		<meta charset="UTF-8">
		<title>Comma</title>
		
	</head>
	
	<body>
		
		<h1>Login</h1>
		
		<form action="logincheck.php" method="post">
			
			<label for="user">Username</label><input type="text" name="user" id="user"><br>
			<label for="pw">Password</label><input type="password" name="password" id="pw"><br>
			<input type="submit" name="invio" value="CONFERMA">
			
		</form>
		
		<br>
		
		<?php
			
			if(isset($_SESSION["login_failed"])) {
				
				echo "Username o password errati";
				
				session_unset();
				session_destroy();
				
			}
			
		?>
		
	</body>
	
</html>