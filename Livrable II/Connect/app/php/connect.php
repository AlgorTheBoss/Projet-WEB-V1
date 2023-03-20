<?php
$serverName = "localhost\\sqlexpress"; // Nom du serveur SQL Server
$connectionInfo = array( "Database"=>"BDD_WEB", "UID"=>"test", "PWD"=>"Cesi.1234" ); // Informations de connexion à la base de données

// Connexion à la base de données
$conn = sqlsrv_connect( $serverName, $connectionInfo );

if( $conn ) {
    echo "Connexion établie.<br />";
} else {
    echo "La connexion n'a pas pu être établie.<br />";
    die( print_r( sqlsrv_errors(), true));
}
?>