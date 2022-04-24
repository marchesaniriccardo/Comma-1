<?php

    if (isset($_SESSION['auth'])) {

        header("Location: home");
        exit(qualcosa);
    }
    else {

        header("Location: login");
        exit();
    }

?>