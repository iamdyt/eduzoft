<?php
	session_start();
	// remove all session variables
	$_SESSION['loggedin'] = false;
	$_SESSION['username'] = "";
    $_SESSION['userId'] = "";
    $_SESSION['data'] = [];
	session_unset();
	// destroy the session
	session_destroy();
	header("Location: index.php");
?>
