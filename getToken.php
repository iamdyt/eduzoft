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
        if(isset($_GET['validity'])){
            $token = str_replace(".","",microtime(true)).rand(000,999);
            $token = getToken(16);
            $validity = 7;
            if($_GET['validity']){
                $validity = $_GET['validity'];
            }
            $sql = "INSERT INTO `checkUser`(`token`,`createdAt`,`validity`) VALUES ('$token',NOW(),$validity)";
            // echo "hiii-3";
            // echo $sql;
            if ($reData = $conn->query($sql)) {
                // $lastInsertId = $conn->lastInsertId(); 
                response(200,"Token created successfully",$token);                
            } else {
                response(400,$conn->error,NULL);
            }
        }else{
            response(200,"Invalid Api!",NULL);  
        }
        
    }
    // echo "Connected successfully";
    // echo "hiii-2";

    function crypto_rand_secure($min, $max)
{
    $range = $max - $min;
    if ($range < 1) return $min; // not so random...
    $log = ceil(log($range, 2));
    $bytes = (int) ($log / 8) + 1; // length in bytes
    $bits = (int) $log + 1; // length in bits
    $filter = (int) (1 << $bits) - 1; // set all lower bits to 1
    do {
        $rnd = hexdec(bin2hex(openssl_random_pseudo_bytes($bytes)));
        $rnd = $rnd & $filter; // discard irrelevant bits
    } while ($rnd > $range);
    return $min + $rnd;
}

function getToken($length)
{
    $token = "";
    $codeAlphabet = "ABCDEFGHJKMNPQRTUVWXYZ";
    $codeAlphabet.= "abcdefghjkmnpqrtuvwxyz";
    $codeAlphabet.= "123456789";
    $max = strlen($codeAlphabet); // edited

    for ($i=0; $i < 5; $i++) {
        $token .= $codeAlphabet[crypto_rand_secure(0, $max-1)];
    }
    $token .= '-';
    for ($i=0; $i < 5; $i++) {
        $token .= $codeAlphabet[crypto_rand_secure(0, $max-1)];
    }
    $token .= '-';
    for ($i=0; $i < 4; $i++) {
        $token .= $codeAlphabet[crypto_rand_secure(0, $max-1)];
    }
    $token .= '-';
    for ($i=0; $i < 2; $i++) {
        $token .= $codeAlphabet[crypto_rand_secure(0, $max-1)];
    }

    return $token;
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
            $response['token']=$data;
        $json_response = json_encode($response);
        echo $json_response;
    }
?>