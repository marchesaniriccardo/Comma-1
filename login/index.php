<?php
define("TITLE", "Comma - Login");
include "../assets/layouts/header.php";
?>

<div class="row h-100">
    <!--- Left Column --->
    <div class="col-lg-6 col-md-12" id="left_col">
        <div class="position-absolute logo_image">
            <img src="../assets/images/logo_intero_w.png" alt="" height="100px">
        </div>
        <div class="h1 position-absolute login_welcome">
            <span class="text-uppercase text-light">benvenuti in comma</span>
        </div>
    </div>
    <!-- Right Column -->
    <div class="row col-lg-6 col-md-12" id="right_col">
        <div class="col-2" id="">
            <!-- Spazio vuoto form a sinistra -->
        </div>
        <div class="col-8" id="">
            <div class="position-absolute login_title">
                <span class="text-uppercase text-light">log-in</span>
            </div>
            <form class="form-auth flex-column text-white position-absolute form_login" action="../includes/login_include" method="POST">
                <div>
                    <label for="" class="h2 form-label mb-3 ml-3">User</label>
                    <input type="email" class="form-control mb-3" id="" aria-describedby="emailHelp">
                </div>
                <div>
                    <label for="" class="h2 form-label mb-3 ml-3">Password</label>
                    <input type="password" class="form-control mb-3" id="">
                </div>
                <div>
                    <button type="submit" class="btn btn-primary mb-3 text-uppercase">Conferma</button>
                </div>
                <div>
                    <a href="#"><span class="h2 text-light text-capitalize">recupero credenziali</span></a>
                </div>
            </form>
        </div>
        <div class="col-2" id="">
            <!-- Spazio vuoto form a destra -->
        </div>
    </div>
</div>

<?php
include "../assets/layouts/footer.php";
?>