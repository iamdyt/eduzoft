<?php include 'includes/header.php'; ?>
    <main>
        <div class="container-fluid" style="padding-top: 1%">
            <div class="row">
                    <div class="col-md-12 panel-body table-responsive" style="padding: 15px;">
                        <h4 style="float: left;">Users Master</h4>
                        <button type="button" class="btn buttonColor newusers addNewButton"  data-toggle="modal" data-target="#usersTokenModal" name="Send" >Add New Token</button>
                    </div>
                    <div class="container" style="margin: 10px !important;max-width: 98% !important;">
                        <div class="col-md-12 panel-body table-responsive">
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
                                         <th class="text-center"> Activation Date </th>
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
                                        $sql="SELECT * FROM `checkUser` ORDER BY id DESC; ";
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
                                                        <td id="activeAt" class="text-center"> <?php echo $row['activeAt']; ?> </td>
                                                        <td id="validity" class="text-center"> <?php echo $row['validity']; ?> </td>
                                                        <td id="activeTill" class="text-center"> <?php echo $row['activeTill']; ?> </td>
                                                        <td id="remark" class="text-center"> <?php echo $row['remark']; ?> </td>
                                                        <td id="featuredname" class="text-center">
                                                            <?php
                                                                $status = "In Active";
                                                                $action = "Active";
                                                                if($row['status'] && $row['status']==1){
                                                                    $status = "Active";
                                                                    $action = "In Active";
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
    </main>


<div id="usersTokenModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-name">User <small style="font-size: 70%;opacity: 0.5;">Add/Edit</small></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post" action="action/users.php" name="usersForm" id="usersForm" autocomplete="off">
                    <div class="row">
                        <div class="form-group col-md-12 padd-bt-20">
                            <label class="validity" for="form-username">Validity</label>
                            <input type="number" name="validity" placeholder="validity (required)" class="form-name form-control form-style2" id="validity" min="1" required />
                        </div>
                        
                        <div class="form-group col-md-12 padd-bt-20">
                            <label class="tokenUser" for="form-username">Name</label>
                            <input type="text" name="name" class="form-name form-control form-style2" />
                        </div>

                        <div class="form-group col-md-12 padd-bt-20">
                            <label class="Remark" for="form-username">Remark</label>
                            <input type="text" name="remark" class="form-name form-control form-style2" />
                        </div>

                        <div class="form-group col-md-12 padd-bt-20">
                            <button type="submit" class="btn buttonColor actionusers" name="Send" style="font-size: 20px;">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
           
        </div>
    </div>
</div>

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>    
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>


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
                    alert("Successfully Save Token");
                    location.reload();
                },
                error: function(e){
                    console.log("error");
                }          
            });

        });

        $('#userChatTable').DataTable({
            scrollY:        '60vh',
            // scrollCollapse: true,
            	"scrollX": true 
        });

        $(document).on("submit","#usersForm",function(e) {
            e.preventDefault();
            $.ajax({
                url: "saveToken.php",
                type: "POST",
                data:  new FormData(this),
                contentType: false,
                cache: false,
                processData:false,
                beforeSend : function(){
                    console.log("beforeSend");
                },
                success: function(data){
                    alert("Successfully Save Token");
                    location.reload();
                },
                error: function(e){
                    console.log("error");
                }          
            });
        });
    });
</script>
<?php include 'includes/footer.php'; ?>
