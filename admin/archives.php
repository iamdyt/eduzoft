
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?= require_once './includes/header_styles.php' ?>
    <?= require_once 'middleware.php' ?>
    <title>Administrator Dashboard</title>
</head>
<body data-sidebar = "dark">
    <div id="layout-wrapper">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/iamdyt/eduzoft/css/styles.css">
        <?= require_once './includes/header.php' ?>
        <?= require_once './includes/sidebar.php' ?>

        <div class="main-content" style="margin-top: -2rem;">
            <div class="page-content">
                <div class="container-fluid" style="padding-top: 1%">
                    <div class="row">
                            <div class="col-md-12 panel-body table-responsive" style="padding: 15px;">
                                <h4 style="float: left;">Archived Users</h4> &emsp; &emsp;
                            </div>
                            <div class="container" style="margin: 10px !important;max-width: 98% !important;">
                                <div class="col-md-12 panel-body table-responsive bg-white p-3">
                                    <table id="userstable" class="table table-bordered table-hover table-striped table-bordered dt-responsive nowrap">
                                        <thead>
                                            <tr>
                                                <!-- `id`, `token`, `name`, `email`, `mobile`, `hdId`, `activeAt`, `createdAt`, `status`, `product`, `validity`, `activeTill`, `noComputers`, `remark` -->
                                                <th class="text-center"> ID </th>
                                                <th class="text-center"> Token </th>
                                                <th class="text-center">Action</th>
                                                <th class="text-center"> Name </th>
                                                <!-- <th class="text-center"> HD-Id </th> -->
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
                                                    $sql="SELECT * FROM `checkUser` WHERE status = 0 AND activeTill != NULL  ORDER BY id DESC; ";
                                                } else {
                                                    $added_by = intval($_SESSION['userId']);
                                                    $sql="SELECT * FROM `checkUser` WHERE status = 0 AND added_by = '$added_by' AND activeTill != NULL  ORDER BY id DESC; ";
                                                }
                                                

                                                $result = $conn->query($sql);
                                                if ($result) {
                                                    if ($result->num_rows > 0) {
                                                        $srNo = 0;
                                                        while($row = $result->fetch_assoc()) { 
                                                        ?>
                                                            <tr class="edit" id="detail">
                                                                <td id="usersId" class="text-center"> <?php echo $srNo = $srNo + 1; ?> </td>
                                                                <td id="userUdid" class="text-center">  <?php echo $row['token']; ?>  <i onclick="clipCopy('<?=$row['token']?>')" class="mdi mdi-clipboard text-primary t" style="cursor: pointer; font-size:larger; float:right !important;"></i> &emsp;</td>
                                                                <td>
                                                                    <div class="btn-group dropstart">
                                                                        <button type="button" class="btn btn-danger  btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                                            Action 
                                                                        </button>
                                                                        <ul class="dropdown-menu  ">
                                                                            <li><a class="dropdown-item" href="updateuser.php?user=<?=$row['id']?>">Edit</a></li>
                                                                            <li><a href="delete.php?user=<?=$row['id']?>" class="dropdown-item">Delete</a></li>

                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td id="username" class="text-center"> <?php echo $row['name']; ?> </td>
                                                                <!-- <td id="hdId" class="text-center"> <?php echo $row['hdId']; ?> </td> -->
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
                                                                <!-- <td>
                                                                    <div class="btn-group">
                                                                        <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                                            Action
                                                                        </button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a class="dropdown-item" href="#">Action</a></li>

                                                                        </ul>
                                                                    </div>
                                                                </td> -->
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

    </div>


    



    <!-- scripts -->
    <?= require_once './includes/footer_styles.php' ?>
    <script>
        $('#userstable').DataTable();
    </script>

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


