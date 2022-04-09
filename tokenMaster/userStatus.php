<?php
    error_reporting(1);
    include 'dbConfig.php';
    // if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
    if($_GET && $_GET['id']){
        $status = "0";
        if($_GET['status']){
            $status = $_GET['status'];
            if($status=="Active"){
                $status = 1;
            }else{
                $status = 0;
            }
        }
        $docId = $_GET['id'];
        echo $sql = "UPDATE `checkUser` SET `status` = $status WHERE `checkUser`.`id` = $docId; ";
        if ($conn->query($sql) === TRUE) {
            echo json_encode([
               'status' => 'success',
               'message' => "Update status successfully"
            ]);
        } else {
            echo json_encode([
               'status' => 'Faild',
               'data' => "No Data"
            ]);
        }
    }else{
        echo json_encode([
           'status' => 'faild-1',
           'data' => []
        ]);
    }
