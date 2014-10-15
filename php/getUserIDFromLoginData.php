<?php
	include("sqlconnect.php");
	
	$checkusername = $_GET["username"];
	$checkpassword = $_GET["password"];
	
	$verbindung = mysql_connect("$host","$username","$password");
	mysql_select_db("$database");
		
	$abfrage = "SELECT ID FROM Benutzer WHERE Benutzername = '$checkusername' AND Passwort = '$checkpassword'";
					
	$ergebnis = mysql_query($abfrage);
	while( $row = mysql_fetch_object($ergebnis) )
	{
			$userid = $row->ID;
	}	
	
	if( isset( $userid ) ) {
		echo $userid;
	} else {
		echo "error";
	}
	
?>