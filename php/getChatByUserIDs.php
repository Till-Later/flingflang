<?php
	include("sqlconnect.php");
	
	$user1 = $_GET["user1"];
	$user2 = $_GET["user2"];
	
	$verbindung = mysql_connect("$host","$username","$password");
	mysql_select_db("$database");
	
	$abfrage="SELECT ID 
				FROM Chat 
				WHERE (ID_user1 = $user1 AND ID_user2 = $user2) OR (ID_user1 = $user2 AND ID_user2 = $user1);";
				
	$ergebnis = mysql_query($abfrage);
	
	if (  mysql_num_rows($ergebnis) == 0 ) {
				echo "hallo";
				$abfrage="INSERT INTO Chat(ID_user1, ID_user2) VALUES('$user1', '$user2')";
				$ergebnis=mysql_query($abfrage);							
				
			echo mysql_insert_id ();			
	} else {
	
		
	$abfrage="SELECT Nachrichtentext, ID_user1 
				FROM Chat 
				JOIN Nachricht ON Chat.ID = Nachricht.ID_Chat
				WHERE (ID_user1 = $user1 AND ID_user2 = $user2) OR (ID_user1 = $user2 AND ID_user2 = $user1)
				ORDER BY Zeit;";
			;			
					
	$ergebnis = mysql_query($abfrage);
	
	while( $row = mysql_fetch_object($ergebnis) )
	{
		 echo $row->ID_user1."|".$row->Nachrichtentext."|";				

	}	
	}
?>