<?php
    //controllo se sono valide la sessione e il post (sia token che submit)
    if((!isset($_POST['token']) || !isset($_SESSION['token'])) && !isset($_POST['submit'])){
        redirect_to('login.php'); //se fossero vuoti allora rimanda alla pagina di login
    }
    if(empty($_POST['submit'])){ //stessa cosa con il submit
        echo("\nERRORE: %s" . $conn->connect_error); //stampa l'errore
    }

    //controlla se è correttamente settata e non è vuota
    if(isset($_POST['submit']) && !empty($_POST['submit'])){ 
        //inizializzo le variabili
        $username = $_POST['username'];
        $password = $_POST['password'];
        //creo la query
        $sql = "SELECT username password_ FROM cliente WHERE username = '$username' AND password_ = '$password'";
        //eseguo la query
        $exe_q = mysqli_query($conn, $sql);
        //controllo se ci sono errori nella query
        if(!isset($exe_q) || empty($exe_q)){
            redirect_to('login.php' . '?error=1;<scrpt>alert("ERRORE: %s");</scrpt>' . $conn->connect_error);
        }
        //controllo se ci sono risultati e la query dunque è validata
        if($exe_q == true){
            $url_username = hash('sha256', $username); //genero lo SHA256 dell'username per l'url
            redirect_to('../login/index.php' . $url_username); //rendo un url personale al momento del login
        }
    }
?>