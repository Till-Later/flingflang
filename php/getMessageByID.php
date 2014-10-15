<?php 
$ID_Chat=$_GET["id_chat"];

include("sqlconnect.php");


$verbindung=mysql_connect("$host","$username","$password");

mysql_select_db("$database");
$abfrage="SELECT Nachrichtentext FROM Nachricht WHERE ID_Chat = ".$ID_Chat.";";


$ergebnis=mysql_query($abfrage);



while( $row = mysql_fetch_object($ergebnis) ){
	echo $row->Nachrichtentext."|";
}



?>