
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
                                <button type="button" class="btn btn-danger newusers addNewButton l-4"  data-toggle="modal" data-target="#usersTokenModal" name="Send" >Add New Staff</button>
                            </div>
                            <div class="container" style="margin: 10px !important;max-width: 98% !important;">
                                <div class="col-md-12 panel-body table-responsive">
                                    <table id="userstable" class="table table-bordered table-hover table-striped table-bordered dt-responsive nowrap">
                                        <thead>
                                            <tr>
                                                <!-- `id`, `token`, `name`, `email`, `mobile`, `hdId`, `activeAt`, `createdAt`, `status`, `product`, `validity`, `activeTill`, `noComputers`, `remark` -->
                                                <th class="text-center"> Username </th>
                                                <th class="text-center"> E-mail </th>
                                                <th class="text-center"> Full-Name </th>

                                                <!-- <th class="text-center"> Action </th> -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- token name hdId email mobile activeAt validity activeTill remark status -->
                                            <?php
                                                $added_by = intval($_SESSION['userId']);
                                                $sql="SELECT * FROM `adminUser`  ORDER BY id DESC; ";
                                                $result = $conn->query($sql);
                                                if ($result) {
                                                    if ($result->num_rows > 0) {
                                                        $srNo = 0;
                                                        while($row = $result->fetch_assoc()) { 
                                                        ?>
                                                            <tr class="edit" id="detail">

                                                                <td id="usersemail" class="text-center"> <?php echo $row['username']; ?> </td>
                                                                <td id="usersphone" class="text-center"> <?php echo $row['email']; ?> </td>
                                                                <td id="activeAt" class="text-center"> <?php echo $row['fullName']; ?> </td>                                                                
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


    



    <!-- scripts -->
    <?= require_once './includes/footer_styles.php' ?>
    <script>
        $('#userstable').DataTable();
    </script>
</body>
</html>


