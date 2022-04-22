<?php require_once 'middleware.php'; ?>
<?php
    include 'dbConfig.php';
    

    if (isset($_GET['staff'])){
        $staff_id = intval($_GET['staff']);
        $sql = "DELETE FROM adminUser WHERE id = '$staff_id' ";
        $conn->query($sql);
      
    } else {
        $user_id = intval($_GET['user']);
        $sql = "DELETE FROM checkUser WHERE id = '$user_id' ";
        $conn->query($sql);
    }

    header("Location: {$_SERVER['HTTP_REFERER']}");
?>