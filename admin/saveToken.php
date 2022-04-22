<?php
    error_reporting(1);
    include 'middleware.php';
    include 'dbConfig.php';
    // if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
        if($_POST && $_POST['validity']){
            
            $token = str_replace(".","",microtime(true)).rand(000,999);
            $token = getToken(16);
            $added_by = $_POST['added_by'];
            $validity = 7;
            if($_POST['validity']){
                $validity = $_POST['validity'];
            }
            $name = "";
            if($_POST['name']){
                $name = $_POST['name'];
            }
            if($_POST['remark']){
                $remark = $_POST['remark'];
            }
            $sql = "INSERT INTO `checkUser`(`token`,`name`,`remark`,`createdAt`,`validity`, `added_by`) VALUES ('$token','$name','$remark',NOW(),$validity, '$added_by')";
            if ($conn->query($sql) === TRUE) {
              // echo "New record created successfully";
                echo json_encode([
                   'status' => 'success',
                   'message' => "New token created successfully"
                ]);
            } else {
                // echo "Error: " . $sql . "<br>" . $conn->error;
                echo json_encode([
                   'status' => 'Faild',
                   'data' => "No Data"
                ]);
            }
        }else{
            echo json_encode([
               'status' => 'faild-1',
               'data' => []
            ]);
        }
    // } else {
    //     echo json_encode([
    //        'status' => 'faild-2',
    //        'data' => []
    //     ]);
    // }

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
?>