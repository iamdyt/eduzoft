
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?= require_once './includes/header_styles.php' ?>
    <title>Administrator Dashboard</title>
</head>
<body data-sidebar = "dark">
    <div id="layout-wrapper">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/iamdyt/eduzoft/css/styles.css">
        <?= require_once './includes/header.php' ?>
        <?= require_once './includes/sidebar.php' ?>
        <?php  

            if ($_SESSION['role'] == 'super'){
                $query = "SELECT * FROM checkUser ORDER BY id DESC";
            } else {
                $adder = intval($_SESSION['userId']);
                $query = "SELECT * FROM checkUser WHERE added_by = '$adder' ORDER BY id DESC";
            }
            $result = $conn->query($query);

        ?>

        <div class="main-content" style="margin-top: -2rem;">
            <div class="page-content">
                <div class="container-fluid">
                <div class="row">
                            <div class="col-md-6">
                                <div class="card  border-start-4 border-primary border">
                                    <div class="card-body">
                                        <div class="d-flex text-muted">
                                            <div class="flex-shrink-0 me-3 align-self-center">
                                               
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden">
                                                <p class="mb-1">Total Users</p>
                                                <h5 class="mb-3"><?=$result->num_rows ?></h5>
                                                <!-- <p class="text-truncate mb-0"><span class="text-success me-2"> 0.02% <i class="ri-arrow-right-up-line align-bottom ms-1"></i></span> From previous</p> -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card-body -->
                                </div>
                                <!-- end card -->
                            </div>

                            <div class="col-md-6">
                                <div class="card border-start-4 border-info border">
                                    <div class="card-body">
                                        <div class="d-flex text-muted">
                                            <div class="flex-shrink-0 me-3 align-self-center">
                                               
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden">
                                                <p class="mb-1">Total Tokens</p>
                                                <h5 class="mb-3"><?=$result->num_rows ?></h5>
                                                <!-- <p class="text-truncate mb-0"><span class="text-success me-2"> 0.02% <i class="ri-arrow-right-up-line align-bottom ms-1"></i></span> From previous</p> -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card-body -->
                                </div>
                                <!-- end card -->
                            </div>
                </div>
                    <div class="row">
                            <div class="col-md-12 panel-body table-responsive" style="padding: 15px;">
                                <h4 style="float: left;">Recent Users</h4>

                            </div>
                            <div class="container" style="margin: 10px !important;max-width: 98% !important;">
                                <div class="col-md-12 panel-body table-responsive bg-white p-3">
                                    <table id="userChatTable" class="table table-bordered table-hover table-striped table-bordered dt-responsive nowrap">
                                        <thead>
                                            <tr>
                                                <!-- `id`, `token`, `name`, `email`, `mobile`, `hdId`, `activeAt`, `createdAt`, `status`, `product`, `validity`, `activeTill`, `noComputers`, `remark` -->
                                                <th class="text-center"> ID </th>
                                                <th class="text-center"> Token </th>
                                                <th class="text-center"> Name </th>
                                                <th class="text-center"> HD-Id </th>
                                                <th class="text-center"> Email </th>
                                                <th class="text-center"> Phone </th>
                                                <!-- <th class="text-center"> Activation Date </th> -->
                                                <th class="text-center"> Validity </th>
                                                <th class="text-center"> Valid Till Date </th>
                                                <th class="text-center"> Notes </th>
                                                <th class="text-center"> Status </th>
                                                <!-- <th class="text-center"> Action </th> -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- token name hdId email mobile activeAt validity activeTill remark status -->
                                            <?php
                                                if ($_SESSION['role'] == 'super'){
                                                    $sql="SELECT * FROM `checkUser` ORDER BY id DESC; ";
                                                } else {
                                                    $added_by = intval($_SESSION['userId']);
                                                    $sql="SELECT * FROM `checkUser`  WHERE status = 1 AND added_by = '$added_by'  ORDER BY id DESC; ";
                                                }
                                                $result = $conn->query($sql);
                                                if ($result) {
                                                    if ($result->num_rows > 0) {
                                                        $srNo = 0;
                                                        while($row = $result->fetch_assoc()) { 
                                                        ?>
                                                            <tr class="edit" id="detail">
                                                                <td id="usersId" class="text-center"> <?php echo $srNo = $srNo + 1; ?> </td>
                                                                <td id="userUdid" class="text-center"> <?php echo $row['token']; ?> </td>
                                                                <td id="username" class="text-center"> <?php echo $row['name']; ?> </td>
                                                                <td id="hdId" class="text-center"> <?php echo $row['hdId']; ?> </td>
                                                                <td id="usersemail" class="text-center"> <?php echo $row['email']; ?> </td>
                                                                <td id="usersphone" class="text-center"> <?php echo $row['mobile']; ?> </td>
                                                                <!-- <td id="activeAt" class="text-center"> <?php echo $row['activeAt']; ?> </td> -->
                                                                <td id="validity" class="text-center"> <?php echo $row['validity']; ?> </td>
                                                                <td id="activeTill" class="text-center"> <?php echo $row['activeTill']; ?> </td>
                                                                <td id="remark" class="text-center"> <?php echo $row['remark']; ?> </td>
                                                                <td id="featuredname" class="text-center">
                                                                    <?php
                                                                        $status = "In-Active";
                                                                        $action = "Active";
                                                                        if($row['status'] && $row['status']==1){
                                                                            $status = "Active";
                                                                            $action = "In-Active";
                                                                        }
                                                                    ?>
                                                                    <a href="#" data-action="<?=$action;?>" data-id="<?=$row['id'];?>" class="userStatus" >
                                                                        <?php echo $status; ?>
                                                                    </a>
                                                                </td>
                                                                
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
    <script type="text/javascript">
    $(function () {
        $(document).on("click",".userStatus",function() {
            var actionStatus = $(this).attr('data-action');
            var userId = $(this).attr('data-id');

            $.ajax({
                url: "userStatus.php?id="+userId+"&status="+actionStatus,
                type: "GET",
                // data:  new FormData(this),
                contentType: false,
                cache: false,
                processData:false,
                beforeSend : function(){
                    console.log("beforeSend");
                },
                success: function(data){
                    alert("User Status updated");
                    location.reload();
                },
                error: function(e){
                    console.log("error");
                }          
            });

        });

        $('#userChatTable').DataTable();
    });
</script>
</body>
</html>


