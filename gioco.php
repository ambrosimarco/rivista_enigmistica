<?php
session_start();
require "libs/header.php";
require "libs/connection.php";
$id_gioco = $_GET['id'];
$_SESSION["id_gioco"] = $id_gioco;
$quesiti = $connessione->query("SELECT * FROM quesito as q WHERE q.id_gioco = ".$id_gioco);
$risposte_quesiti = $connessione->query("SELECT rq.id_quesito,  r.id as id_risposta, rq.risposta_corretta, r.testo FROM risposta as r
                                 INNER JOIN risposte_quesiti as rq ON r.id = rq.id_risposta 
                                 INNER JOIN quesito as q ON rq.id_quesito = q.id
                                 WHERE q.id_gioco = ".$id_gioco);
?>
<h1><?php echo $_GET["nome"] ?></h1><br>
<form action="./risultato.php" method="post">
    <?php
        foreach ($quesiti as $quesito){
            echo '<label for="'.$quesito['id'].'">'.$quesito["testo"].'</label>
                <br>';
                foreach ($risposte_quesiti as $rq){
                    if ($rq["id_quesito"] == $quesito["id"]) {
                        echo '<input name="'.$quesito['id'].'" type="radio" value="'.$rq["id_risposta"].'" id="'.$rq["id_risposta"].'"> <label for="'.$rq["id_risposta"].'">'.$rq["testo"].'</label>';
                        echo '<br>';
                    }
                }
            ;
            echo '<br>';
        }
    ?>
    <button class="btn btn-white" type="submit">Invia</button>
</form>
<?php require "libs/footer.php" ?>