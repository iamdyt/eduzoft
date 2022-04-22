<?php require_once 'middleware.php'; ?>
<?php
    include 'dbConfig.php';
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        
        $name = $_POST['name'];
        $email = $_POST['email'];
        $mobile = $_POST['mobile'];
        $remark = $_POST['remark'];
        $id = intval($_POST['user']);

        $query = "UPDATE checkUser SET name='$name', email='$email', mobile='$mobile', remark='$remark' WHERE id = '$id' ";
        $conn->query($query);
        // print_r($_POST); exit;
        echo "<script> window.location = 'all_users.php'  </script>";
    }


?>