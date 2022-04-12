<?php
// spread1d_waziper »Table: cron_status
    // $servername = "localhost";
    // $dbuser = "spreadaround";
    // $dbpass = "nDp@xlrdmno2q";
    // $db = "spread1d_waziper";

        // mysql://bbccdc22c38bf2:acb489fe@us-cdbr-east-05.cleardb.net/heroku_a661fce75e516e7?reconnect=true
    //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

    $db = 'heroku_a661fce75e516e7';
    $dbuser = 'bbccdc22c38bf2';
    $dbpass = 'acb489fe';
    $servername = "us-cdbr-east-05.cleardb.net";
    $conn = new mysqli($servername, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
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
        <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/additional-methods.min.js"></script>
        <style type="text/css">
            
        </style>
    </head>
    <body class="">
    <main>
        <div class="container-fluid" style="padding-top: 1%">
            <div class="row">
                <div class="col-md-12 panel-body table-responsive" style="padding: 15px;">
                    <h4 style="float: left;">Logs Master</h4>
                </div>
                <div class="col-md-12 panel-body table-responsive">
                    <table id="userChatTable" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                 
                                <th class="text-center"> Id </th>
                            	<th class="text-center"> Camp Name </th>
                                <th class="text-center"> Stats </th>
                                <th class="text-center" style="width: 200px; max-width: 200px !important; min-width: 200px !important;"> result </th>
                                <th class="text-center"> total_sent </th>
                                <th class="text-center"> total_complete </th>
                                <th class="text-center"> total_failed </th>
                                 <th class="text-center"> created </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $sql="SELECT * FROM `cron_status` WHERE DATE(created) = DATE(NOW()) ORDER BY created DESC; ";
                                $result = $conn->query($sql);
                                if ($result) {
                                    if ($result->num_rows > 0) {
                                    	$srNo = 0;
                                        while($row = $result->fetch_assoc()) { 
                                            // `whatsapp_schedules`, `whatsapp_stats`, `result`, `total_sent`, `total_complete`, `total_failed`, `created`
                                        ?>
                                            <tr class="edit" id="detail">
                                                <td id="usersId" class="text-center"> <?php echo $srNo = $srNo + 1; ?> </td>
                                                <td id="whatsapp_schedules" class="text-center"> <?php echo $row['camp_name']; ?> </td>
                                                <td id="whatsapp_stats" class="text-center"> <?php echo $row['whatsapp_stats']; ?> </td>
                                                <td id="result" class="text-center" style="width: 200px; max-width: 200px !important; min-width: 200px !important;"><div style="width: 200px;overflow: scroll;"><?php echo $row['result']; ?></div></td>
                                                <td id="total_sent" class="text-center"> <?php echo $row['total_sent']; ?> </td>
                                                <td id="total_complete" class="text-center"> <?php echo $row['total_complete']; ?> </td>
                                                <td id="total_failed" class="text-center"> <?php echo $row['total_failed']; ?> </td>
                                                <td id="created" class="text-center"> <?php echo $row['created']; ?> </td>
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
    </main>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>    
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
<!-- 
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap.min.css">
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap.min.js"></script> -->
    <script type="text/javascript">
        $(function () {
            $('#userChatTable').DataTable();

            function userChatTable() {
                location.reload();
            }
            setTimeout(userChatTable, 60000);

        });
    </script>
    <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid">
            <div class="d-flex align-items-center justify-content-between small">
                <div class="text-muted">Copyright &copy; Admin</div>
            </div>
        </div>
    </footer>

</body>
</html>
