<?php
session_start();
require "libs/header.php";
require "libs/connection.php";
$giochi = $connessione->query("SELECT * FROM gioco");
$tematiche = $connessione->query("SELECT * from tematica");
?>
<h1 class="mb-3">Lista dei giochi</h1>
<p>
    <?php
        foreach ($tematiche as $tematica) {
            echo '<div class="m-2">';
                echo '<h3>'.$tematica["nome"].'</h3>';
                foreach ($giochi as $gioco){
                    if ($tematica["id"] == $gioco["id_tematica"]) {
                        echo '<span class="m-3 d-block">';
                            echo '<li><a href="./gioco.php?id='.$gioco["id"].'&nome='.$gioco["nome"].'">'.$gioco["nome"].'</a></li>';
                        echo '</span>';
                    }
                }
            echo '</div>';
        }
    ?>
</p>
<?php require "libs/footer.php" ?>