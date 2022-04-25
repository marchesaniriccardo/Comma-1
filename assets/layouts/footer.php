<?php
    require "../assests/include/auth_function.php";
?>
</body>
<footer id="myFooter">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <h2 class="logo">
                    <a href="../home/" target="_blank"> 
                        <img src="../assets/images/logowhite.png" alt="" height="200" class="">
                    </a>
                </h2>
            </div>
            <div class="col-sm-2">
                <h5>Accessibilità</h5>
                <ul>
                    <li><a href="../login/" target="_blank">Login</a></li>
                    <li><a href="../register/" target="_blank">Registrati</a></li>
                </ul>
            </div>
            <div class="col-sm-2">
                <h5>Funzionalità</h5>
                <ul>
                    <li><a href="../home/" target="_blank">Home</a></li>
                    <li><a href="../dashboard/" target="_blank">Dashboard</a></li>
                    <li><a href="../profile/" target="_blank">Profilo</a></li>
                    <li><a href="../profile-edit/" target="_blank">Modifica Profilo</a></li>
                </ul>
            </div>
            <div class="col-sm-2">
                <h5>Supporto</h5>
                <ul>
                    <li><a href="../contact/" target="_blank">Contattaci</a></li>
                </ul>
            </div>
            <div class="col-sm-3 my-3">
                <div class="social-networks">
                    <a href="https://github.com/pcto5ID" class="twitter" target="_blank">
                        <i class="fab fa-github"></i>
                    </a>
                    <a href="https://youtu.be/dQw4w9WgXcQ" class="facebook" target="_blank">
                            <i class="fab fa-linkedin"></i>
                    </a>
                </div>
                <a class="btn btn-default" href="mailto:pcto5ID@gmail.com" target="_blank">Email</a>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <p>
            <a href="https://github.com/pcto5ID/Comma" target="_blank">Comma</a> |
            <a href="https://github.com/pcto5ID" target="_blank">pcto5ID</a> |
            <a href="https://github.com/pcto5ID/Comma/blob/main/LICENSE" target="_blank">GNU License</a>
        </p>
    </div>
</footer>

<!-- Chiusura script php -->

<script src="../assets/vendor/js/jquery-3.4.1.min.js"></script>
<script src="../assets/vendor/js/popper.min.js"></script>
<script src="../assets/vendor/bootstrap-4.3.1/js/bootstrap.min.js"></script>

<!-- Script isset session autenticazione -->

<!-- Script check_inactive https://github.com/pcto5ID/Comma#automatic-logout-on-inactivity -->

<!-- Chiusura script isset session autenticazione -->

</body>
</html>


<?php
/*
 * Chiusura della sessione
 
if (isset($_SESSION['ERRORS']))
    $_SESSION['ERRORS'] = NULL;
if (isset($_SESSION['STATUS']))
    $_SESSION['STATUS'] = NULL;
*/
?>
