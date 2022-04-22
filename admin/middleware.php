<?php 
    require_once 'dbConfig.php';
    if(!isset($_SESSION['userId'])){
        header('Location:logout.php');
    }
    $user_id = $_SESSION['userId'];
    $query = "SELECT * FROM adminUser WHERE id = $user_id ";
    $ex = $conn->query($query);
    $result =  $ex->fetch_row();
    // print_r($result); exit;
    if(count($result)<=0){
        header('Location:logout.php');
        exit;
    }
?>