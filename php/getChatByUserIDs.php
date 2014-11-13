<?php
	include("sqlconnect.php");
	
	$user1 = $_GET["user1"];
	$user2 = $_GET["user2"];
	
	$verbindung = mysql_connect("$host","$username","$password");
	mysql_select_db("$database");
		
	$abfrage="SELECT Nachrichtentext, ID_gesendetVon 
				FROM Chat 
				JOIN Nachricht ON Chat.ID = Nachricht.ID_Chat
				WHERE (ID_gesendetVon = $user1 AND ID_gesendetAn = $user2) OR (ID_gesendetVon = $user2 AND ID_gesendetAn = $user1)
				ORDER BY Zeit;";
			
			
					
	$ergebnis = mysql_query($abfrage);
	while( $row = mysql_fetch_object($ergebnis) )
	{
			if ( !$row->ID_gesendetVon  == "") {
				 echo $row->ID_gesendetVon."|".$row->Nachrichtentext."|";				
			} else {
				echo "hallo";
				$abfrage="INSERT INTO Chat(ID_gesendetVon, ID_gesendetAn) VALUES('$user1', '$user2')";
				$ergebnis=mysql_query($abfrage);							
				
				echo mysqli_insert_id ();				
			}
	}	


?>