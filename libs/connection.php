<?php
$server = "localhost";
$username = "root";
$password = "";
$db_name = "rivista";

$connessione = new mysqli($server, $username, $password, $db_name);
$connessione->set_charset("utf8");

if ($connessione->connect_error) {
  die("Connessione fallita");
}
?>