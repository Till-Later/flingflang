<?php
	include("sqlconnect.php");
	
	$sender = $_GET["sender"];
	$reciever = $_GET["reciever"];
	
	$verbindung = mysql_connect("$host","$username","$password");
	mysql_select_db("$database");
	
	$abfrage="SELECT ID_Sender, Nachrichtentext FROM Nachricht WHERE ID_Chat = (SELECT ID FROM Chat WHERE (ID_user1 = $sender AND ID_user2 = $reciever) OR (ID_user1 = $reciever AND ID_user2 = $sender)) AND ID_Sender = $sender AND requested = 0";
				
	$ergebnis = mysql_query($abfrage);
	
	if (  mysql_num_rows($ergebnis) == 0 ) {
		$ergebnis = mysql_query($abfrage);
	
		while( $row = mysql_fetch_object($ergebnis) )
		{
			echo $row->ID_Sender."|".$row->Nachrichtentext."|";				
		}	
	} 

?>