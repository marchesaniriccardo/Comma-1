<?php
/*
function _cleaninjections($test) {

    $find = array(
        "/[\r\n]/", 
        "/%0[A-B]/",
        "/%0[a-b]/",
        "/bcc\:/i",
        "/Content\-Type\:/i",
        "/Mime\-Version\:/i",
        "/cc\:/i",
        "/from\:/i",
        "/to\:/i",
        "/Content\-Transfer\-Encoding\:/i"
    );
    $ret = preg_replace($find, "", $test);
    return $ret;
}
*/
function generate_csrf_token() {
   // $s_stat = session_status();
    if (!isset($_SESSION)) {
        session_start();
        session_encode();
    }
    if (empty($_SESSION['token'])) {
        $gen_value = bin2hex(random_bytes(64)); //genera 64 valori random
        $final_csrf = hash('sha256', $gen_value); //sha256 hash del valore random
        $_SESSION['csrf_token'] = $final_csrf;
    }
}

function insert_csrf_token() {

    generate_csrf_token();

    echo '<input type="hidden" name="token" value="' . $_SESSION['token'] . '" />';
}

function verify_csrf_token() {

    generate_csrf_token();

    if (!empty($_POST['token'])) {

        if (hash_equals($_SESSION['token'], $_POST['token'])) {

            return true;
        } 
        else {
            
            return false;
        }
    }
    else {

        return false;
    }
}