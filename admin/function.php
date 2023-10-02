<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" 
integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" 
crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- Sweetalert cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" 
integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" 
crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<?php
    function Connection(){
        $connection = new mysqli('localhost','root','','db_cms_2_3');
        return $connection;
    }
    
    function Register(){
        if(isset($_POST['btn_register'])){
            $username = $_POST['username'];
            $email    = $_POST['email'];
            $password = $_POST['password'];
            $profile  = $_FILES['profile'] ['name'];
            //echo $username.$email.$password.$profile;
            if(!empty($username)
                &&!empty($email)
                &&!empty($password)
                &&!empty($profile)
            ){
                $profile = date('dmyhis').'_'.$profile;
                $path    = './assets/admin-image/'.$profile;
                move_uploaded_file($_FILES['profile']['tmp_name'],$path);
                $password = md5($password);
                $sql = "INSERT INTO `tbl_user`(`name`, `email`, `password`, `profile`) 
                        VALUES ('$username','$email','$password','$profile')";
                $rs = Connection()->query($sql);
                if($rs){
                    header('location:login.php');
                }
            }
        }
    }
    Register();

    session_start();

    function Login(){
        if(isset($_POST['btn_login'])){
            $name_email = $_POST['name_email'];
            $password   = $_POST['password'];
            if(!empty($name_email) && !empty($password)){
                $password = md5($password);
                $sql = "SELECT *FROM `tbl_user` WHERE (`name` = '$name_email' or `email` = '$name_email') AND `password` = '$password'";
                $rs = Connection()->query($sql);
                $row = mysqli_fetch_assoc($rs);
                if(!empty($row)){
                    echo '
                    <script>
                        $(document).ready(function(){
                            swal({
                            title: "Error",
                            text: "You forget input some field",
                            icon: "error",
                            button: "Done",
                            });
                        });
                    </script>
                    ';
                    $_SESSION['user'] = $row['id'];
                    header('location:index.php');
                }
                else{
                    
                    echo '
                    <script>
                        $(document).ready(function(){
                            swal({
                            title: "Error!",
                            text: "Incorect your Password",
                            icon: "error",
                            button: "Okay",
                            });
                        });
                    </script>
                    ';
                     
                }
            }        
        }
    }
    Login();

    function Logout(){
        if(isset($_POST['btn-logout'])){
            session_start();
            unset($_SESSION['user']);
            header('location:login.php');
        }
    }
    Logout();

    function AddLogo(){
        if(isset($_POST['btn-add-logo'])){
            $image  = $_FILES['logo']['name'];
            $status = $_POST['status'];

            if(!empty($image) && !empty($status)){
                $image = rand(1,999999).'_'.$image;
                $path  = './assets/Image-Logo/'.$image;
                move_uploaded_file($_FILES['logo']['tmp_name'],$path);

                $sql = "INSERT INTO `tbl_logo`(`thumnail`, `status`) VALUES ('$image','$status')";
                $rs  = Connection()->query($sql);
                if($rs){
                    echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "Success",
                                text: "Data Add success",
                                icon: "success",
                                button: "Done",
                                });
                            });
                        </script>
                    ';
                    
                }
            }
            else{
                echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "error",
                                text: "Can not add logo",
                                icon: "error",
                                button: "Done",
                                });
                            });
                        </script>
                    ';
            }
        }
    }
    AddLogo();

    function Getlogo(){
        $sql = "SELECT * FROM `tbl_logo` ORDER BY `id` DESC LIMIT 10";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo'
                <tr>
                    <td>'.$row['status'].'</td>
                    <td><img src="./assets/Image-Logo/'.$row['thumnail'].'" width="80px" height="80px"/></td>
                    <td>'.$row['create_at'].'</td>
                    <td width="150px">
                        <a href="update_logo.php?id='.$row['id'].'"class="btn btn-primary">Update</a>
                        <button type="button" remove-id='.$row['id'].' class="btn btn-danger btn-remove" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Remove
                        </button>
                    </td>
                </tr>
            ';
        }
    }

    function UpdateLogo(){
        if(isset($_POST['btn-update-logo'])){
            $id     =$_POST['id_update_logo'];
            $image  = $_FILES['logo']['name'];
            $status = $_POST['status'];

            if(empty($image)){
                $image = $_POST['old_image'];
            }
            else{
                $image = rand(1,999999).'_'.$image;
                $path  = './assets/Image-Logo/'.$image;
                move_uploaded_file($_FILES['logo']['tmp_name'],$path);
            }

            if(!empty($image) && !empty($status)){
                $sql = "UPDATE `tbl_logo` SET`thumnail`='$image',`status`='$status' WHERE `id` ='$id'";
                $rs  = Connection()->query($sql);
                if($rs){
                    echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "Success",
                                text: "Logo update success",
                                icon: "success",
                                button: "Done",
                                });
                            });
                        </script>
                    ';
                }
            }
            else{
                echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "error",
                                text: "Can not update",
                                icon: "error",
                                button: "Done",
                                });
                            });
                        </script>
                    ';
            }
        }

    }
    UpdateLogo();

    function DeleteLogo(){
        if(isset($_POST['btn-remove-logo'])){
            $id_delete = $_POST['remove_id'];
            $sql       = "DELETE FROM `tbl_logo` WHERE `id` = '$id_delete'";
            $rs        = Connection()->query($sql);
            if($rs){
                echo '
                    <script>
                        $(document).ready(function(){
                            swal({
                            title: "Success",
                            text: "Logo Delete success",
                            icon: "success",
                            button: "Done",
                            });
                        });
                    </script>
                ';
            }
        }
    }
    DeleteLogo();

    function AddPostNews(){
        if(isset($_POST['btn-add-post'])){
            $title = $_POST['title'];
            $news_type = $_POST['news-type'];
            $categary = $_POST['categary'];
            $thumnail = $_FILES['thumnail']['name'];
            $banner   = $_FILES['banner']['name'];
            $description= $_POST['description'];
            $post_by = $_SESSION['user'];
            
            if(!empty($title)
                && !empty($news_type)
                && !empty($categary)
                && !empty($thumnail)
                && !empty($banner)
                && !empty($description)
            ){
                $thumnail = rand(1,999999).'_'.$thumnail;
                $path  = './assets/image/'.$thumnail;
                move_uploaded_file($_FILES['thumnail']['tmp_name'],$path);
                $banner = rand(1,999999).'_'.$banner;
                $path1  = './assets/image/'.$banner;
                move_uploaded_file($_FILES['banner']['tmp_name'],$path1);

                $sql = "INSERT INTO `tbl_news`(`thumnail`, `banner`, `title`, `description`, `news_type`, `categary`, `post_by`) 
                        VALUES ('$thumnail','$banner','$title','$description','$news_type','$categary','$post_by')";
                $rs  = Connection()->query($sql);

                if($rs){
                    echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "Success",
                                text: "Data insert success",
                                icon: "success",
                                button: "Done",
                                });
                            });
                        </script>
                    ';
                    // header('location:post-news-view.php');
                }
            }else{
                echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "Error",
                                text: "Data can not insert",
                                icon: "error",
                                button: "Done",
                                });
                            });
                        </script>
                    ';
            }
        }
    }
    AddPostNews();

    function ViewPostNews($current_page){
        $start = ($current_page-1)*5;
        $sql = "SELECT tbl_user.name,tbl_news.* From `tbl_news` INNER JOIN `tbl_user` ON tbl_news.post_by = tbl_user.id ORDER BY `id` DESC LIMIT $start, 5";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo'
                <tr>
                    <td style="width: 150px;
                                overflow: hidden;
                                display: -webkit-box;
                                -webkit-line-clamp: 3; /* number of lines to show */
                                        line-clamp: 2; 
                                -webkit-box-orient: vertical;">'.$row['title'].'</td>
                    <td style="width: 40px;">'.$row['news_type'].'</td>
                    <td style="width: 40px;">'.$row['categary'].'</td>
                    <td><img src="./assets/image/'.$row['thumnail'].'" width="50px" height="50px"/></td>
                    <td><img src="./assets/image/'.$row['banner'].'" width="50px" height="50px"/></td>
                    <td style="width: 150px;
                                overflow: hidden;
                                display: -webkit-box;
                                -webkit-line-clamp: 3; /* number of lines to show */
                                        line-clamp: 2; 
                                -webkit-box-orient: vertical;">'.$row['description'].'</td>
                    <td>'.$row['name'].'</td>
                    <td>'.$row['viewer'].'</td>
                    <td>'.$row['post_date'].'</td>
                    <td width="150px">
                        <a href="post-news-update.php?id='.$row['id'].'"  class="btn btn-primary">Update</a>
                        <button type="button" remove-id='.$row['id'].' class="btn btn-danger btn-remove" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Remove
                        </button>
                    </td>
                </tr>
            ';
            
        }
        

    }

    function RemovePostNews(){
       if(isset($_POST['btn-remove'])){
        $remove_id = $_POST['remove_id'];
        $sql       = "DELETE FROM `tbl_news` WHERE `id` = '$remove_id'";
        $rs        = Connection()->query($sql);
            if($rs){
                echo '
                    <script>
                        $(document).ready(function(){
                            swal({
                            title: "Success",
                            text: "Delete Success",
                            icon: "success",
                            button: "Done",
                            });
                        });
                    </script>
                ';
            }
       }
    }
    RemovePostNews();

    
    function UpdatePostNews(){
        if(isset($_POST['btn-update-post-news'])){
            $update_id = $_GET['id'];
            $title = $_POST['title'];
            $news_type = $_POST['news-type'];
            $categary = $_POST['categary'];
            $thumnail = $_FILES['thumnail']['name'];
            $banner   = $_FILES['banner']['name'];
            $description= $_POST['description'];
            $post_by = $_SESSION['user'];

            // echo $title.$news_type.$categary.$thumnail.$banner.$description.$post_by;

            if(empty($thumnail)){
                $thumnail = $_POST['old_thumnail'];
            }
            else{
                $thumnail = rand(1,999999).'_'.$thumnail;
                $path  = './assets/image/'.$thumnail;
                move_uploaded_file($_FILES['thumnail']['tmp_name'],$path);
            }
            if(empty($banner)){
                $banner = $_POST['old_banner'];
            }
            else{
                $banner = rand(1,999999).'_'.$banner;
                $path  = './assets/image/'.$banner;
                move_uploaded_file($_FILES['banner']['tmp_name'],$path);
            }

            if(!empty($title) && !empty($news_type) && !empty($categary) && !empty($thumnail) && !empty($banner) && !empty($description) && !empty($post_by)){
                $sql = "UPDATE `tbl_news` 
                        SET `thumnail`='$thumnail',
                            `banner`='$banner',
                            `title`='$title',
                            `description`='$description',
                            `news_type`='$news_type',
                            `categary`='$categary',
                            `post_by`='$post_by' 
                        WHERE `id` = '$update_id'";
                $rs  = Connection()->query($sql);
                if($rs){
                    echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "Success",
                                text: "News update success",
                                icon: "success",
                                button: "Done",
                                });
                            });
                        </script>
                    ';
                    // header('location:post-news-view.php');
                }
            }
            else{
                echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "error",
                                text: "Can not update!",
                                icon: "error",
                                button: "Done",
                                });
                            });
                        </script>
                    ';
            }
        }

    }
    UpdatePostNews();

    function Pegenation(){
        $limit = 5;
        $sql   = "SELECT COUNT(`id`) as 'total_news' FROM `tbl_news`";
        $rs    =Connection()->query($sql);
        $row   = mysqli_fetch_assoc($rs);
        // echo $row['total_news'];
        $total = $row['total_news'];
         $page = ceil($total/$limit);
        for($i=1; $i<=$page; $i++){
             echo '
                <a href="?id='.$i.'">'.$i.'</a>
             ';
         }
    }

    // about​ Us
    

    function ViewAbout(){
        $sql = "SELECT *FROM `tbl_about_us` ORDER BY `description`,`create_at` DESC LIMIT 1";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo'
                 <tr>
                    <td style="width: 400px;
                    overflow: hidden;
                    display: -webkit-box;
                    -webkit-line-clamp: 4; /* number of lines to show */
                            line-clamp: 2; 
                    -webkit-box-orient: vertical;">'.$row['description'].'</td>
                    <td style="color:red;">'.$row['create_at'].'</td>
                    <td>
                        <a href="about-update.php?id='.$row['id'].'" name="btn-adout-update"  class="btn btn-primary">Update</a>
                    </td>
                </tr>
            ';
            
        }
    }
function AboutUpdate(){
    if(isset($_POST['btn-adout-update'])){
        $update_id = $_GET['id'];
        $description = $_POST['description'];

        if(!empty($description)){
            $sql = "UPDATE `tbl_about_us` SET `description`='$description' WHERE `id` ='$update_id'";
            $rs  = Connection()->query($sql);
            if($rs){
                echo '
                    <script>
                        $(document).ready(function(){
                            swal({
                            title: "Success",
                            text: "Data Update success",
                            icon: "success",
                            button: "Done",
                            });
                        });
                    </script>
                ';
                
            }
            // header('location:about-view.php');
        }
        else{
            echo '
                    <script>
                        $(document).ready(function(){
                            swal({
                            title: "error",
                            text: "Can not update data!",
                            icon: "error",
                            button: "Done",
                            });
                        });
                    </script>
                ';
        }


    }
}
AboutUpdate();

//Get feedback
function Getfeedback($current_page){
    $start = ($current_page-1)*5;
    $sql = "SELECT * FROM `tbl_feedback` ORDER BY `id` DESC LIMIT $start, 10";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo'
                <tr">
                    <td>'.$row['username'].'</td>
                    <td>'.$row['email'].'</td>
                    <td>'.$row['telephone'].'</td>
                    <td>'.$row['address'].'</td>
                    <td style="width:300px;
                                overflow: hidden;
                                display: -webkit-box;
                                -webkit-line-clamp: 2; /* number of lines to show */
                                        line-clamp: 2; 
                                -webkit-box-orient: vertical;">'.$row['message'].'</td>
                    <td style="color:red; width:100px;">'.$row['feedback_date'].'</td>
                    <td>
                        <a href="detail-feedback.php?id='.$row['id'].'" name="btn-adout-update"  class="btn btn-primary">Detail</a>
                    </td>
                </tr>
            ';
        }
}

function GetFeedbackDetail($fedd_id){
    $sql = "SELECT *FROM `tbl_feedback` WHERE `id` = '$fedd_id'";
    $rs  = Connection()->query($sql);
    $row = mysqli_fetch_assoc($rs);
    echo '
        <tr>
            <td>'.$row['username'].'</td>
            <td>'.$row['email'].'</td>
            <td>'.$row['telephone'].'</td>
            <td>'.$row['address'].'</td>
            <td>'.$row['message'].'</td>
            <td width="100px" class="text-danger">'.$row['feedback_date'].'</td>
        </tr>
    ';
}


function Pegenationfeedback(){
    $limit = 5;
    $sql   = "SELECT COUNT(`id`) as 'total_news' FROM `tbl_feedback`";
    $rs    =Connection()->query($sql);
    $row   = mysqli_fetch_assoc($rs);
    // echo $row['total_news'];
    $total = $row['total_news'];
     $page = ceil($total/$limit);
    for($i=1; $i<=$page; $i++){
         echo '
            <a href="?id='.$i.'">'.$i.'</a>
         ';
     }
}

function GetFollow(){
    $sql = "SELECT *FROM `tbl_follow_us` ORDER BY `url` DESC LIMIT 1";
    $rs  = Connection()->query($sql);
    $row = mysqli_fetch_assoc($rs);
    echo '
        <tr>
            <td><img src="./assets/icon/'.$row['thumnail'].'" width="40px" height="40px"/></td>
            <td>'.$row['label'].'</td>
            <td>'.$row['url'].'</td>
            <td>'.$row['status'].'</td>
            
        </tr>
    ';
} 
?>