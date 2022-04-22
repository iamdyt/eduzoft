<?php
session_start();

    // $db = 'newtoolkit';
    // $dbuser = 'root';
    // $dbpass = '';
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

function forceHTTPS(){
    $httpsURL = 'https://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
    if( count( $_POST )>0 )
      die( 'Page should be accessed with HTTPS, but a POST Submission has been sent here. Adjust the form to point to '.$httpsURL );
    if( !isset( $_SERVER['HTTPS'] ) || $_SERVER['HTTPS']!=='on' ){
      if( !headers_sent() ){
        header( "Status: 301 Moved Permanently" );
        header( "Location: $httpsURL" );
        exit();
      }else{
        die( '<script type="javascript">document.location.href="'.$httpsURL.'";</script>' );
      }
    }
  }

  forceHTTPS();
?>