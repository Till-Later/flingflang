<?php
	include("sqlconnect.php");
	
	$sender = $_GET["sender"];
	$reciever = $_GET["reciever"];
	$text = $_GET["text"];
	
	$verbindung = mysql_connect("$host","$username","$password");
	mysql_select_db("$database");
	
	if ($sender == "" || $reciever == "" || $text == "")
	{
		echo("Gesendete Informationen fehlerhaft");
		die();
	}	
	
	$abfrage="INSERT INTO Nachricht (ID_Chat, Zeit, Nachrichtentext, ID_Sender) VALUES((SELECT ID FROM Chat WHERE (ID_user1 =  $sender AND ID_user2 = $reciever) OR (ID_user1 = $reciever AND ID_user2 = $sender)), NOW(), '$text', $sender);";
				
	$ergebnis = mysql_query($abfrage);
	
?>