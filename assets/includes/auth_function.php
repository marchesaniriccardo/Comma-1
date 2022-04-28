<?php
    //controllo se sono valide la sessione e il post (sia token che submit)
    if((!isset($_POST['token']) || !isset($_SESSION['token'])) && (!isset($_POST['submit']) || empty($_POST['submit']))){
        $error_msg = "\nERRORE: %s" . $conn->connect_error; //stampa l'errore
        header('Location: ../login/index.php?error=1&<script>allert("%s")</script>' . $error_msg); //se fossero vuoti allora rimanda alla pagina di login
    }
    //controlla se è correttamente settata e non è vuota
    if(isset($_POST['submit']) && !empty($_POST['submit'])){ 
        //inizializzo le variabili
        $u = $_POST['username'];
        $p = $_POST['password'];
        $username = _cleaninjections($u);
        $password = _cleaninjections($p);
        //creo la query
        $sql = "SELECT username password_ FROM cliente WHERE username = '$username' AND password_ = '$password'";
        //preparo le condizioni per l'esecuzione di una query
        $stmt = mysqli_stmt_init($conn);
        $isLogged = mysqli_stmt_prepare($stmt, $sql); 
        if($isLogged === true){ //controllo se è loggato
            mysqli_stmt_bind_param($stmt, "ss", $username, $password);
            mysqli_stmt_execute($stmt); //eseguo la Query attraverso "stmt"
            header('Location: ../login/index.php?user=' . $username . '&IsLogged=' . $isLogged); //rendo un url personale al momento del login
        }else
            header("Location: ../login/index.php?error=1;<scrpt>alert('ERRORE: %s". $conn->connect_error . "');</scrpt>");
    }
?>