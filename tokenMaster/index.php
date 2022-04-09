<?php
    include 'dbConfig.php';
    if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
        header("Location: users.php");
    } else {
        // header("Location: index.php");
        // exit();
    }
if ($_POST) {
    $username=$_POST['username']; 
    $password=$_POST['password']; 
    $username = stripslashes($username);
    $password = stripslashes($password);
    $password = md5($password);
    $sql="SELECT * FROM adminUser WHERE username='$username' and password='$password'";
    $result = $conn->query($sql);
    if ($result) {
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                // print_r($row);exit();
                // session_start();
                $_SESSION['loggedin'] = true;
                $_SESSION['username'] = $row['username'];
                $_SESSION['userId'] = $row['id'];
                $_SESSION['data'] = $row;
                // dashboard.php
                // print_r($_SESSION);
            }
            header("Location: users.php");
        } else {
          echo "0 results";
        }
        
    } else {
        echo "No data found";
    }
    // exit();
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
        
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <link href="https://cdn.jsdelivr.net/gh/iamdyt/eduzoft/tokenMaster/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html"> Admin </a>
        </nav>
        <div id="layoutSidenav">
           
            <div id="layoutSidenav_content">
                <main>
                    <div class="container">
                        
                        <div class="row">
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-4">
                                <h1 class="mt-4 text-center">ADMIN</h1>
                                <div class="card text-white mb-4">
                                    <div class="container">
                                        <div class="row">
                                            <form id="loginPassForm" method="POST">
                                                <div class="form-row mt-4">
                                                    <div class="col-12 col-sm-4"> <span class="blue-text3">User Name</span> </div>
                                                    <div class="col-12 col-sm-8 mt-4 mt-sm-0">
                                                        <input class="multisteps-form__input form-control" name="username" id="userName" type="text" placeholder="User Name" required>
                                                    </div>
                                                </div>
                                                <div class="form-row mt-4">
                                                    <div class="col-12 col-sm-4"> <span class="blue-text3">Password</span> </div>
                                                    <div class="col-12 col-sm-8 mt-4 mt-sm-0">
                                                        <input class="multisteps-form__input form-control" name="password" id="userPassword" type="password" placeholder="Password" required>
                                                    </div>
                                                </div>
                                                <div class="clearfix">&nbsp;</div>
                                                <div class="loggedin-forgot">
                                                    <!-- <input type="checkbox" id="keep-me-logged-in"> -->
                                                    <!-- <label for="keep-me-logged-in" class="pt-3 pb-2">Keep me logged in</label> -->
                                                    <!-- <a href="#" class="btn btn-link">Forget Password?</a> -->
                                                </div>
                                                <div align="center">
                                                    <!-- <a href="http://202.87.57.228/newservices/suvidhaaworld/dashboard/index.html"> -->
                                                        <button type="submit" class="d-block py-3 px-5 bg-primary text-white border-0 rounded font-weight-bold mt-3 mb-4">Log in</button>
                                                    <!-- </a> -->
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>                            
                            <div class="col-md-4">
                            </div>
                        </div>                        
                    </div>
                </main>
            </div>
        </div>
<footer class="py-4 bg-light mt-auto">
    <div class="container-fluid">
        <div class="d-flex align-items-center justify-content-between small">
            <div class="text-muted">Copyright &copy; Admin</div>
            <div>
                <a href="#">Privacy Policy</a>
                &middot;
                <a href="#">Terms &amp; Conditions</a>
            </div>
        </div>
    </div>
</footer>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>
