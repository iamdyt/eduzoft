<?php

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
        response(400,"Connection failed:",$conn->connect_error);  
    }else{
        
        $headers = apache_request_headers();
        // echo $headers['Hdid'];
        // echo $headers->hdId;
        // print_r($headers);
        $hdid = "";
        if(isset($headers['Hdid'])){
            $hdid = $headers['Hdid'];
        }else{
            if(isset($headers['hdid'])){
                $hdid = $headers['hdid'];
            }
        }
        if(isset($hdid)){
            // $token = $_POST['token'];
            $hdId = $hdid?$hdid:"";
            $sql = "SELECT * FROM checkUser WHERE hdId = '$hdId' AND status = 1 AND activeTill > NOW()";
            // $sql = "SELECT * FROM checkUser WHERE token = '$token' AND hdId = '$hdId' AND status = 1 AND activeTill > NOW()";
            $result = $conn->query($sql);
            // echo $hdId; exit;
            if ($result->num_rows > 0) {
                $data = '';
                while($row = $result->fetch_assoc()) {
                    $data = $row;
                }
                if ($reData = $conn->query($sql)) {
                    response(200,"Valid User",$data);                
                } else {
                    response(400,$conn->error,NULL);
                }
            } else {
                response(400,"Invalid Token! OR Expire Token",null); 
            }
        }else{
            response(400,"Required hdId",null); 
        }
    }

    function response($status,$status_message,$data){
        header("HTTP/1.1 200");
        if($status==200){
            $status = 1;
        }else{
            $status = 0;
        }
        $response['status']=$status;
        $response['message']=$status_message;
            $response['data']=$data;
        $json_response = json_encode($response);
        echo $json_response;
    }
?>