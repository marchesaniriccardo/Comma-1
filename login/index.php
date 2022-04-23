<?php
    define("TITLE", "Login");
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
         /*Da ridefinire */    
    ?>
</body>