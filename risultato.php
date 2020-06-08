<?php
session_start();
require "libs/header.php";
require "libs/connection.php";
$id_gioco = $_SESSION['id_gioco'];
$risposte_quesiti = $connessione->query("SELECT rq.id_quesito, r.id as id_risposta, rq.risposta_corretta, r.testo FROM risposta as r
                                 INNER JOIN risposte_quesiti as rq ON r.id = rq.id_risposta 
                                 INNER JOIN quesito as q ON rq.id_quesito = q.id
                                 WHERE q.id_gioco = ".$id_gioco);
$numero_quesiti = $connessione->query("SELECT COUNT(*) as n FROM quesito WHERE id_gioco = ".$id_gioco)
                                 ->fetch_assoc()["n"];
$risultato = 0;
foreach($_POST as $risposta){
    foreach ($risposte_quesiti as $rq) {
        if ($risposta == $rq["id_risposta"] && $rq["risposta_corretta"] ) {
            $risultato += 1;
        }
    }
}
?>
<h1>Risultato del quiz</h1>
<br>
<?php
echo '<p>Risultato: '.$risultato.'/'.$numero_quesiti.'</p>';
$percentuale = $risultato / $numero_quesiti;
echo '<b>Valutazione:</b> <i>';
if ($percentuale < 1/3) {
    echo 'Non molto bene... Ripassa!';
} else if ($percentuale < 2/3) {
    echo 'Bene, ma puoi fare di meglio!';
}else if ($percentuale < 1){
    echo "Molto bene!";
}else{
    echo "Perfetto!";
}
echo '</i>';

?>
<br>
<br>
<a class="mt-5" href="./index.php">Torna ai quiz</a>
<?php require "libs/footer.php" ?>