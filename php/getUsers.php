<?php
	include("sqlconnect.php");

	$verbindung = mysql_connect("$host","$username","$password");
	mysql_select_db("$database");
		
	$abfrage = "SELECT ID, Benutzername FROM Benutzer;";
					
	$ergebnis = mysql_query($abfrage);
	while( $row = mysql_fetch_object($ergebnis) )
	{
			echo $row->ID."|".$row->Benutzername."|";

	}	

?>