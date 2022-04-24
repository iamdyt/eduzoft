<?php
//     $servername = "127.0.0.1";
// 	$username = "root";
// 	$password = "e8bbee19c81d7bfb";
//     $dbname = 'usersAccess';
date_default_timezone_set("Asia/Calcutta");   //India time (GMT+5:30)
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

    // $dbname = 'newtoolkit';
    // $username = 'root';
    // $password = '';
    // $servername = "localhost";

        // mysql://bbccdc22c38bf2:acb489fe@us-cdbr-east-05.cleardb.net/heroku_a661fce75e516e7?reconnect=true
    //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

    $dbname = 'heroku_a661fce75e516e7';
    $username = 'bbccdc22c38bf2';
    $password = 'acb489fe';
    $servername = "us-cdbr-east-05.cleardb.net";
    
    // echo "hiii-1";
    $results = [ 'status' => false, 'message' => 'Please try again' ];
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        // die("Connection failed: " . $conn->connect_error);
        response(400,null,"Connection failed",null);  
    }else{
        // print_r(get_headers();
        $headers = apache_request_headers();
        
        $hdid = "";
        if(isset($headers['Hdid'])){
            $hdid = $headers['Hdid'];
        }else{
            if(isset($headers['hdid'])){
                $hdid = $headers['hdid'];
            }
        }
        // print_r($headers['hdId']);
        // print_r($_POST);
        if(isset($_POST['token']) && isset($hdid) && isset($_POST['mobile'])){
            $token = $_POST['token'];
            if($_POST['name']){
                $name = $_POST['name']?$_POST['name']:"Guest";
            }else{
                $name = 'NULL';
            }
            if($_POST['email']){
                $email = $_POST['email']?$_POST['email']:"Guest";
            }else{
                $email = 'NULL';
            }
            
            $mobile = $_POST['mobile']?$_POST['mobile']:"";
            $hdId = $hdid?$hdid:"";
            // $email = $_POST['email']?$_POST['email']:"";
            // $activeTill = Date();
            $Today=date('Y-m-d');
            // add days to date
            $activeTill=Date('Y-m-d', strtotime('+8 days'));
            $sql = "SELECT * FROM checkUser WHERE token = '$token' AND status = 0 OR status = 3";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $username = $row["name"];
                    if($row["validity"]){
                        $activeTill=Date('Y-m-d', strtotime('+'.$row["validity"].' days'));
                    }
                    
                }
                $sql = "UPDATE `checkUser` SET `name`='$name',`email`='$email',`mobile`='$mobile',`hdId`='$hdId',`activeAt`=NOW(),`status`=1,activeTill='$activeTill' WHERE token = '$token'";
                if ($reData = $conn->query($sql)) {
                    response(200,"User Update successfully",null,$_POST);              
                } else {
                    response(400,null,$conn->error,NULL);
                }
            } else {
                response(400,null,"Invalid Token! ",$token);
            }
        }else{
            response(400,null,"Required token,mobile and hdId",null);
        }
    }

    function response($status,$status_message,$errorMsg,$data){
        date_default_timezone_set("Asia/Calcutta");   //India time (GMT+5:30)
        header('Access-Control-Allow-Origin: *');
        header('Content-Type: application/json');

        if($status==200){
            $status = 1; 
        }else{
            $status = 0;
        }
        $response['status']=$status;
        $response['message']=$status_message;
        $response['errorMsg']=$errorMsg;
        $response['data']=$data;
        $json_response = json_encode($response);
        echo $json_response;
    }
?>