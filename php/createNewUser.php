<?php
$newuser = $_GET["username"];
$newpassword = $_GET["password"];
$newemail = $_GET["email"];

if ($newuser == "" || $newpassword == "" || $newemail == "")
{
	echo("Gesendete Informationen fehlerhaft");
	die();
}

include("sqlconnect.php");

$verbindung=mysql_connect("$host","$username","$password");
mysql_select_db("$database");



$abfrage="INSERT INTO Benutzer(Benutzername, Passwort, EMail) VALUES('$newuser', '$newpassword', '$newemail')";

$ergebnis=mysql_query($abfrage);


echo "Hat geklappt!";

?>