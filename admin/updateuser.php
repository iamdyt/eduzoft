
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?= require_once './includes/header_styles.php' ?>
    <title>Update user</title>
</head>
<body data-sidebar = "dark">
    <div id="layout-wrapper">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/iamdyt/eduzoft/css/styles.css">
        <?= require_once './includes/header.php' ?>
        <?= require_once './includes/sidebar.php' ?>

        <?php            
            $user_id = intval($_GET['user']);
            $sql = "SELECT * FROM checkUser WHERE id = '$user_id' ";
            $ex = $conn->query($sql);
            $res = $ex->fetch_assoc();
        
        ?>

        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid" style="padding-top: 1%">
                    <div class="row">
                        <div class="col-md-6 offset-md-3">
                            <p class="leade">Edit User's details</p>
                            <form action="update.php" method="post" class="card card-body">
                                <div class="name">
                                    <input type="text" name="name" id="" placeholder="Name" value="<?=$res['name']?>"  class="form-control my-2">
                                </div>
                                <div class="email">
                                    <input type="email" name="email" placeholder="E-mail" value="<?=$res['email'] ?>" class="form-control my-2"  id="">
                                </div>

                                <div class="mobile">
                                    <input type="text" name="mobile" placeholder="Mobile" value="<?=$res['mobile']?>"  id="" class="form-control my-2">
                                </div>

                                <div class="remark">
                                    <textarea name="remark"  id="" placeholder="Note" class="form-control my-2" cols="5" rows="5">
                                        <?=$res['remark']?>
                                    </textarea>
                                </div>
                                <input type="hidden" name="user" value="<?=$_GET['user']?>">
                                <div class="bt d-flex grid-2">
                                    <button class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>                      
                </div>
            </div>
        </div>

    </div>

</body>
</html>


