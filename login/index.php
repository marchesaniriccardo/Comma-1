<?php
    include "../assets/layouts/header.php";
?>
<body>
    <form action="<? echo $_SERVER['PHP_SELF'] ?>" method = "POST">
        <h2>Login</h2>
        <input type="text" name = "user">
        <input type="password" name = "password">
        <input type="submit" name = "invio" value = "Conferma">
    </form>
    <?php
         if(isset($_POST['invio'])){
                $user = $_POST['user'];
                $password = $_POST['password'];
                $query = "SELECT * FROM utenti WHERE username = '$user' AND password = '$password'";
                $result = mysqli_query($conn, $query);
                if(mysqli_num_rows($result) == 1){
                 $_SESSION['auth'] = true;
                 $_SESSION['user'] = $user;
                 header("Location: index.php");
                }
                else{
                 echo "Username o password errati";
                }
          }    
    ?>
</body>
</html>