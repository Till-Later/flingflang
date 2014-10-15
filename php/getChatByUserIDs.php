<?php
	include("sqlconnect.php");
	
	$user1 = $_GET["user1"];
	$user2 = $_GET["user2"];
	
	$verbindung = mysql_connect("$host","$username","$password");
	mysql_select_db("$database");
		
	$abfrage="SELECT Nachrichtentext, ID_gesendetVon 
				FROM Chat 
				JOIN Nachricht ON Chat.ID = Nachricht.ID_Chat
				WHERE (ID_gesendetVon = 1 AND ID_gesendetAn = 2) OR (ID_gesendetVon = 2 AND ID_gesendetAn = 1)
				ORDER BY Zeit;";
			
			
					
	$ergebnis = mysql_query($abfrage);
	while( $row = mysql_fetch_object($ergebnis) )
	{
			 echo $row->ID_gesendetVon."|".$row->Nachrichtentext."|";
	}	


?>