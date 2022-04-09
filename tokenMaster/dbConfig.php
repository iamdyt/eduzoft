<?php
session_start();


    // $db = 'myedusoft_usersAccess';
    // $dbuser = 'myedusoft_usersAccess';
    // $dbpass = 'nDp@xlrdmno2q';
    // $servername = "localhost";

    // mysql://bbccdc22c38bf2:acb489fe@us-cdbr-east-05.cleardb.net/heroku_a661fce75e516e7?reconnect=true
    //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

    $db = 'heroku_a661fce75e516e7';
    $dbuser = 'bbccdc22c38bf2';
    $dbpass = 'acb489fe';
    $servername = "us-cdbr-east-05.cleardb.net";
    
// 	$conn = new PDO("mysql:host=$servername;dbname=whatsapp", $dbuser, $dbpass);
	$conn = new mysqli($servername, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
    // $conn = mysqli_connect($servername, $dbuser, $dbpass, $db);
    // $conn = mysqli_connect($servername, $dbuser, $dbpass, $db);

if(!$conn){
    die('Database connection error');
}
?>