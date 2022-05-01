<?php
    define("TITLE", "Comma - Login");
    include "../assets/layouts/header.php";
?>
<div class="row h-100">
    <!--- Left Column --->
    <div class="col-lg-6 col-md-12" id="left_col">

    </div>
    <!-- Right Column -->
    <div class="row col-lg-6 col-md-12" id="right_col">
        <div class="col-2" id=""></div>
        <div class="col-8" id="">
            <form class="form-auth" action="../includes/login_include" method="POST">
            </form>
        </div>
        <div class="col-2" id=""></div>
    </div>
</div>
<?php 
    include "../assets/layouts/footer.php";
?>