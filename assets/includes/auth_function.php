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
        mysqli_begin_transaction($conn); //inizio la transazione
        try{
            //creo la query
            $sql = "SELECT username password_ FROM cliente WHERE username = '$username' AND password_ = '$password'";
            //preparo le condizioni per l'esecuzione di una query
            $stmt = mysqli_stmt_init($conn);
            $isLogged = mysqli_stmt_prepare($stmt, $sql); 
            if($isLogged === true){ //controllo se è loggato
                mysqli_stmt_bind_param($stmt, "ss", $username, $password);
                mysqli_stmt_execute($stmt); //eseguo la Query attraverso "stmt"
                header('Location: ../login/index.php?user=' . $username . '&IsLogged=' . $isLogged); //rendo un url personale al momento del login
                mysqli_commit($conn); //confermo la transazione
            }else{
                header('Location: ../login/index.php?error=1&<script>allert("%s")</script>' . $conn->connect_error);
                die;
            }
        }catch (mysqli_sql_exception $e){        
            mysqli_rollback($conn); //annullo la transazione
            header("Location: ../login/index.php?error=2&<scrpt>allert('ERRORE: %s". $conn->connect_error . "');</scrpt>");
            throw $e;
        }
    }
?>