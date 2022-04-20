
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?= require_once './includes/header_styles.php' ?>
    <title>New Staff</title>
</head>
<body data-sidebar = "dark">
    <div id="layout-wrapper">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/iamdyt/eduzoft/css/styles.css">
        <?= require_once './includes/header.php' ?>
        <?= require_once './includes/sidebar.php' ?>

        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid" style="padding-top: 1%">
                    <div class="row">
                            <div class="col-md-12 panel-body table-responsive" style="padding: 15px;">
                                <h4 style="float: left;">All Staffers</h4> &emsp; &emsp;
                                <div class="float-end">
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"> Add new staff</button>
                                </div>
                            </div>
                            <div class="container" style="margin: 10px !important;max-width: 98% !important;">
                                <div class="col-md-12 panel-body table-responsive bg-white p-3">
                                    <table id="userstable" class="table table-bordered table-hover table-striped table-bordered dt-responsive nowrap">
                                        <thead>
                                            <tr>
                                                <!-- `id`, `token`, `name`, `email`, `mobile`, `hdId`, `activeAt`, `createdAt`, `status`, `product`, `validity`, `activeTill`, `noComputers`, `remark` -->
                                                <th class="text-center"> Username </th>
                                                <th class="text-center"> E-mail </th>
                                                <th class="text-center"> Full-Name </th>
                                                <th class="text-center">Users</th>

                                                <!-- <th class="text-center"> Action </th> -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- token name hdId email mobile activeAt validity activeTill remark status -->
                                            <?php
                                                $added_by = intval($_SESSION['userId']);
                                                $sql = "SELECT adminUser.username, adminUser.email, adminUser.fullName, COUNT(checkUser.id) as county FROM adminUser  JOIN checkUser ON adminUser.id = checkUser.added_by";
                                                $result = $conn->query($sql);
                                                // print_r($result->fetch_array()); exit;
                                                if ($result) {
                                                    if ($result->num_rows > 0) {
                                                        $srNo = 0;
                                                        // print_r($result->fetch_all()); exit;
                                                        while($row = $result->fetch_all(MYSQLI_ASSOC)) { 
                                                        ?>
                                                            <tr class="edit" id="detail">

                                                                <td id="usersemail" class="text-center"> <?php echo $row['username']; ?> </td>
                                                                <td id="usersphone" class="text-center"> <?php echo $row['email']; ?> </td>
                                                                <td id="activeAt" class="text-center"> <?php echo $row['fullName']; ?> </td>          
                                                                <td class="text-center"><?=$row['county']?></td>                                                      
                                                            </tr>
                                                            <?php
                                                        }
                                                    }
                                                }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                    </div>                        
                </div>
            </div>
        </div>

    </div>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">New Staff</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <p class="lead text-danger">All fields are required.</p>
            <form action="" method="post">
                <input type="text" required name="username" class="form-control my-2" placeholder="Username" >
                <input type="email" required name="email" class="form-control my-2" id="" placeholder="Email">
                <input type="text" required name="fullname"  class = "form-control my-2" id="" placeholder="Full Name">
                <input type="password"required name="password" class="form-control my-2" placeholder="****" id="">
                <select name="role" required id="" class="form-control mb-2">
                    <option value="">Select staff role</option>
                    <option value="sub">Sub-Admin</option>
                    <option value="super">Super-Admin</option>
                </select>

               <div class="btnn d-grid gap-2">
                <button class="btn btn-primary btn-block gap-2"> Submit</button>
              </div>
            </form>
        </div>
        </div>
    </div>
    </div>



    <!-- scripts -->
    <?= require_once './includes/footer_styles.php' ?>
    <script>
        $('#userstable').DataTable();
    </script>
</body>
</html>


<?php
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $username = $_POST['username'];
        $email = $_POST['email'];
        $fullname = $_POST['fullname'];
        $password = md5($_POST['password']);
        $role = $_POST['role'];

        $query = "INSERT INTO adminUser (username, email, fullName, password,role) VALUES ('$username', '$email', '$fullname', '$password', '$role')";
        $conn->query($query);

        echo "<script> window.location = 'staff.php'  </script>";
    }


?>