<?php
define("TITLE", "Comma - Login");
include "../assets/layouts/header.php";
?>

<!-- Non conformità -->
<section class="p-3 w-100 d-flex align-items-center justify-content-center">
    <span class="page_subtitle text-uppercase text-light d-none d-md-block">non conformità</span>
</section>

<!-- search bar -->
<section class="p-5">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-6 p-3 col-sm-12">
                <!-- BACKEND: barra di ricerca per filtro sulle non conformità -->
                <div class="d-md-flex justify-content-between align-items-center">
                    <div class="input-group news-input">
                        <input type="text" class="form-control" placeholder="Cerca una non conformità" />
                        <button class="btn btn-primary btn-lg" type="button"><span><i class="bi bi-search"></span></i></button>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 p-3 align-items-center justify-content-center">
                <!-- BACKEND: tasto filtra -->
                <button class="btn btn-primary btn-lg text-uppercase" type="button" id="">filtra</button>
            </div>
            <div class="col-md-3 col-sm-6 p-3 text-center">
                <!-- BACKEND: tasto ordina -->
                <button class="btn btn-primary btn-lg text-uppercase" type="button" id="">ordina</button>
            </div>
        </div>
    </div>
</section>

<section class="p-1">
    <div class="container">
        <table class="table table-hover text-light text-uppercase">
            <!-- prima riga della tabella -->
            <thead>
                <tr>
                    <th scope="col">numero</th>
                    <th scope="col">data</th>
                    <th scope="col">stato</th>
                    <th scope="col">priorità</th>
                    <th scope="col">origine</th>
                </tr>
            </thead>

            <!-- BACKEND csotruire le righe dinamicamente con informazioni prese dal database -->
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>10.10.2020</td>
                    <td>aperta</td>
                    <td>media</td>
                    <td>laminazione</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>10.10.2020</td>
                    <td>aperta</td>
                    <td>media</td>
                    <td>laminazione</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>10.10.2020</td>
                    <td>aperta</td>
                    <td>media</td>
                    <td>laminazione</td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>10.10.2020</td>
                    <td>aperta</td>
                    <td>media</td>
                    <td>laminazione</td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td>10.10.2020</td>
                    <td>aperta</td>
                    <td>media</td>
                    <td>laminazione</td>
                </tr>
            </tbody>
        </table>
    </div>
</section>


<section class="p-5">
    <div class="container d-flex justify-content-end">
        <a href="../report/index.php"><button class="btn btn-danger btn-lg text-uppercase" type="button" id="">segnala non conformità</button></a>
    </div>
</section>


<?php
include "../assets/layouts/footer.php";
?>