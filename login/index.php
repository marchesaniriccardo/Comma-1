<?php
    define("TITLE", "Login");
    include "../assets/layouts/header.php";
?>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            
        </div>
        <div class="col-sm-4"> 
        <form action="includes/login_include.php" class="form-auth" method="POST">
            <!-- Insert CSRF token -->

            <div class = "text-center">
                <img class="mb-1" src="../assets/images/logo.png" alt="" width="130" height="130">
            </div>    

            <h6 class="h3 mb-3 font-weight-normal text-muted text-center">Accesso all'Area Privata</h6>

            <div class="text-center mb-3">
                <small class="text-success font-weight-bold">
                    <!-- Check if there is a status message to display -->
                </small>
            </div>

            <div class="form-group">
                <label for="username" class="sr-only">Username</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
                <sub class="text-danger">
                    <!-- Check if there is an error message to display -->
                </sub>
            </div>

            <div class="form-group">
                <label for="password" class="sr-only">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                <sub class="text-danger">
                    <!-- Check if there is an error message to display -->
                </sub>
            </div>

            <div class="col-auto my-1 mb-4">
                <div class="custom-control custom-checkbox mr-sm-2">
                    <input type="checkbox" class="custom-control-input" id="rememberme" name="rememberme">
                    <label class="custom-control-label" for="rememberme">Ricordami</label>
                </div>
            </div>

            <button class="btn btn-lg btn-primary btn-block" type="submit" name="login">Accedi</button>

            <button class="btn btn-lg btn-primary btn-block" type="submit" value="loginsubmit" name="loginsubmit">Login</button>

            <p class="mt-3 text-muted text-center"><a href="../reset-password/">Password dimenticata?</a></p>

                <p class="mt-4 mb-3 text-muted text-center">
                    <a href="https://github.com/pcto5ID/Comma" target="_blank">
                        Login System
                    </a> | 
                    <a href="https://github.com/pcto5ID/Comma/blob/main/LICENSE" target="_blank">
                        GNU General Public License
                    </a>
                </p>
        </form>
        </div>
        <div class="col-sm-4"> 
        </div>
    </div>
</div>

<?php 
include "../assets/layouts/footer.php";
?>
