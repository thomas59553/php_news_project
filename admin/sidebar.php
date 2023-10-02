<?php
include('function.php');
     //session_start();
     //echo $_SESSION['user'];
     if(empty($_SESSION['user'])){
         header('location:login.php');
     }
     $user_id = $_SESSION['user'];
     $sql = "SELECT *FROM `tbl_user` WHERE  `id` = '$user_id'";
     $rs = Connection()->query($sql);
     $row = mysqli_fetch_assoc($rs);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- @theme style -->
    <link rel="stylesheet" href="assets/style/theme.css">

    <!-- @Bootstrap -->
    <link rel="stylesheet" href="assets/style/bootstrap.css">

    <!-- @script -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/theme.js"></script>
    <script src="assets/js/bootstrap.js"></script>

    <!-- @tinyACE -->
    <script src="https://cdn.tiny.cloud/1/5gqcgv8u6c8ejg1eg27ziagpv8d8uricc4gc9rhkbasi2nc4/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

</head>
<body>
    <main class="admin">
        <div class="container-fluid">
            <div class="row">
                <div class="col-2">
                    <div class="content-left">
                        <!-- <div class="wrap-top">
                            <img src="assets/icon/admin-logo.png" alt="">
                            <h5>Jong Deng News</h5>
                        </div> -->
                        <div class="wrap-center">
                            <img src="./assets/admin-image/<?php echo $row['profile'] ?>" alt="" width="40px" height="40px">
                            <h6>Welcome Admin <?php echo $row['name']; ?></h6>
                        </div>
                        <div class="wrap-bottom">
                            <ul>
                                <li class="parent">
                                    <a class="parent" href="javascript:void(0)">
                                        <span>MAIN MENU</span>
                                        <img src="assets/icon/arrow.png" alt="">
                                    </a>
                                    <ul class="child">
                                        <li>
                                            <a href="post-news-view.php">View Post</a>
                                            <a href="post-news-add.php">Add New</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="parent">
                                    <a class="parent" href="javascript:void(0)">
                                        <span>LOGO</span>
                                        <img src="assets/icon/arrow.png" alt="">
                                    </a>
                                    <ul class="child">
                                        <li>
                                            <a href="logo-view.php">Logo-View</a>
                                            <a href="logo-add.php">logo-Add</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="parent">
                                    <a class="parent" href="javascript:void(0)">
                                        <span>NEWS</span>
                                        <img src="assets/icon/arrow.png" alt="">
                                    </a>
                                    <ul class="child">
                                        <li>
                                            <a href="post-news-view.php">View-News</a>
                                            <a href="post-news-add.php">Add-News</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="parent">
                                    <li class="parent">
                                        <a href="follow-view.php"><span>Follow Us</span></a>
                                    </li>
                                </li>
                                <li class="parent">
                                    <a href="feedback.php"><span>Feedback</span></a>
                                </li>
                                <li class="parent">
                                    <a href="about-view.php"><span>About Us</span></a>
                                </li>
                                <li class="parent">
                                    <a class="parent" data-bs-toggle="modal" data-bs-target="#exampleModal" href="">
                                        <span>LOGOUT</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>