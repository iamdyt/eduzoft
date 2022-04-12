<?php
    include 'dbConfig.php';
    // print_r($_SESSION);
    if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
        // echo "Welcome to the member's area, " . $_SESSION['username'] . "!";
    } else {
        //echo "Please log in first to see this page.";
        header("Location: index.php");
        exit();
    }

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>::Welcome to Admin</title>
        <!-- <link href="css/styles.css" rel="stylesheet" /> -->
        <link href="https://cdn.jsdelivr.net/gh/iamdyt/eduzoft/tokenMaster/css/styles.css" rel="stylesheet" />
        <!-- <script src="js/jquery-2.1.4.min.js" crossorigin="anonymous"></script> -->
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" crossorigin="anonymous"> -->
        <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" /> -->
        <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/additional-methods.min.js"></script>

    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="dashboard.php"> Admin </a>
            <!--<div class="small" style="font-size: x-large;"><strong>Welcome:&nbsp;</strong><?php //echo $_SESSION['username']; ?></div>-->
            <!-- <div class="small"> -->
                <a href="logout.php" style="color: #fff;width: 100%;text-align: right;">Logout</a>
            <!-- </div> -->
        </nav>
        <div id="layoutSidenav" style="display: block;padding-top: 35px;">
            <!-- <div id="layoutSidenav_nav">
                <?php //include 'sideMenu.php'; ?>
            </div>
            <div id="layoutSidenav_content"> -->