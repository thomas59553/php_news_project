<!-- @import jquery & sweet alert  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<?php 
    function Connection(){
        $connection = new mysqli('localhost','root','','db_cms_2_3');
        return $connection;
    }

    //GetLOGO
    function GetLogo($status){
        $sql = "SELECT *FROM `tbl_logo` WHERE `status` = '$status' ORDER BY `id` DESC";
        $rs  = Connection()->query($sql);
        $row = mysqli_fetch_assoc($rs);
        echo $row['thumnail'];
            
        
    }

    //GetNews
    function GetNews($news_type){
        $sql = "SELECT *FROM `tbl_news` WHERE `news_type`='$news_type' ORDER BY `id` DESC LIMIT 3";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo '
                <div class="col-4">
                    <figure>
                        <a href="news-detail.php?id='.$row['id'].'">
                            <div class="thumbnail">
                                <img src="../admin/assets/image/'.$row['thumnail'].'" alt="" width="350px" height="200px" style="object-fit:cover;">
                            <div class="title">
                                '.$row['title'].'
                            </div>
                            </div>
                        </a>
                    </figure>
                </div>
        ';
        }
    }

    //GetNewsDetail
    function GetNewsDetail($pos_id){
        $sql = "SELECT *FROM `tbl_news` WHERE `id` = '$pos_id'";
        $rs  = Connection()->query($sql);
        $row = mysqli_fetch_assoc($rs);

        $viewer = $row['viewer'];
        $new_viewer = $viewer+1;

        $sql_update = "UPDATE `tbl_news` SET `viewer`='$new_viewer' WHERE `id` = '$pos_id'";
        $rs_update  = Connection()->query($sql_update);
        echo '
            <div class="main-news">
                <div class="thumbnail">
                    <img src="../admin/assets/image/'.$row['banner'].'" width="730px" height="415px" style="object-fit:cover;">
                </div>
                <div class="detail">
                    <h3 class="title">'.$row['title'].'</h3>
                    <div class="date">'.$row['post_date'].'</div>
                    <div class="description">
                        '.$row['description'].'
                    </div>
                </div>
            </div>
        ';
    }

    //relateNews
    function RelateNews($pos_id){
        $sql_news_type = "SELECT `news_type` FROM `tbl_news` WHERE `id` = '$pos_id'";
        $rs_news_type  = Connection()->query($sql_news_type);
        $row_news_type = mysqli_fetch_assoc($rs_news_type);
        $news_type     = $row_news_type['news_type'];
        
        $sql = "SELECT *FROM `tbl_news` WHERE `news_type` = '$news_type' AND `id` NOT IN ($pos_id) ORDER BY `id` DESC LIMIT 2";
        $rs = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo '
                <figure> 
                    <a href="news-detail.php?id='.$row['id'].'">
                        <div class="thumbnail">
                            <img src="../admin/assets/image/'.$row['thumnail'].'" width="350px" height="200px" alt="" style="object-fit:cover;">
                        </div>
                        <div class="detail">
                            <h3 class="title">'.$row['title'].'</h3>
                            <div class="date">'.$row['post_date'].'</div>
                            <div class="description">
                            '.$row['description'].'
                            </div>
                        </div>
                    </a>
                </figure>
            ';
        }
    }

    //PupularNews
    function PupularNews(){
        $sql = "SELECT *FROM `tbl_news` ORDER BY `viewer` DESC";
        $rs  = Connection()->query($sql);
        $row = mysqli_fetch_assoc($rs);

        echo '
            <figure>
                <a href="news-detail.php?id='.$row['id'].'">
                    <div class="thumbnail">
                        <img src="../admin/assets/image/'.$row['banner'].'" alt="" width="730px" height="415px" style="object-fit:cover;">
                        <div class="title">
                           '.$row['title'].'
                        </div>
                    </div>
                </a>
            </figure>
        ';
    }

    //min_popular_news
    function min_popular_news(){
        $sql_popular = "SELECT `id` FROM `tbl_news` ORDER BY `viewer` DESC";
        $rs_popular  = Connection()->query($sql_popular);
        $row_popular = mysqli_fetch_assoc($rs_popular);
        $popular_id  = $row_popular['id'];
        $sql = "SELECT *FROM `tbl_news` WHERE `id` NOT IN ('$popular_id') ORDER BY `viewer` DESC LIMIT 2";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo '
                <figure>
                    <a href="news-detail.php?id='.$row['id'].'">
                        <div class="thumbnail">
                            <img src="../admin/assets/image/'.$row['thumnail'].'" alt="" width="350px" height="200px" style="object-fit:cover;">
                        <div class="title">
                            '.$row['title'].'
                        </div>
                        </div>
                    </a>
                </figure>
            ';
        }
        
    }

    function Treding_now(){
        $sql = "SELECT *FROM `tbl_news` ORDER BY `viewer` DESC LIMIT 2";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo '
                <i class="fas fa-angle-double-right"></i>
                <a href="news-detail.php?id='.$row['id'].'">'.$row['title'].'</a> &ensp;
            ';
        }
    }

    // news sort category and news_type

    function News($news_type,$categary,$page,$limit){
        $start = ($page-1)*$limit;
        $sql = "SELECT * FROM `tbl_news` WHERE (`categary` = '$categary' AND `news_type` = '$news_type') ORDER BY `id` LIMIT $start, 3";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo '
                <div class="col-4">
                    <figure>
                        <a href="news-detail.php?id='.$row['id'].'">
                            <div class="thumbnail">
                                <img src="../admin/assets/image/'.$row['thumnail'].'" alt="" width="350px" height="200px" style="object-fit:cover;">
                            <div class="title">
                                '.$row['title'].'
                            </div>
                            </div>
                        </a>
                    </figure>
                </div>
        ';
        }
    }

    //pegenation
    function Pegenation($news_type,$categary,$limit){
        $limit = 3;
        $sql   = "SELECT COUNT(`id`) as 'total_news' FROM `tbl_news` WHERE `categary` ='$categary' AND `news_type` = '$news_type'";
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

    //Search

    function Search($query){
        $sql = "SELECT *FROM `tbl_news` WHERE `title` LIKE '%$query%'";
        $rs  = Connection()->query($sql);
        while($row = mysqli_fetch_assoc($rs)){
            echo '
                <div class="col-4">
                    <figure>
                        <a href="news-detail.php?id='.$row['id'].'">
                            <div class="thumbnail">
                                <img src="../admin/assets/image/'.$row['thumnail'].'" alt="" width="350px" height="200px" style="object-fit:cover;">
                            </div>
                            <div class="detail">
                                <h3 class="title">'.$row['title'].'</h3>
                                <div class="date">'.$row['post_date'].'</div>
                                <div class="description">
                                '.$row['description'].'
                                </div>
                            </div>
                        </a>
                    </figure>
                </div>
            ';
        }
    } 


    // about Us

    function GetAbout(){
        $sql = "SELECT *FROM `tbl_about_us` ORDER BY `description` DESC LIMIT 1";
        $rs  = Connection()->query($sql);
        $row = mysqli_fetch_assoc($rs);
        echo $row['description'];
        
    }

    //Add Feedback

    function Addfeedback(){
        if(isset($_POST['btn_message'])){
            $username = $_POST['username'];
            $email    = $_POST['email'];
            $telephone= $_POST['telephone'];
            $address  = $_POST['address'];
            $message  = $_POST['message'];
            if(!empty($username)
                && !empty($email)
                && !empty($telephone)
                && !empty($address)
                && !empty($message)
            ){
               
                $sql = "INSERT INTO `tbl_feedback`(`username`, `email`, `telephone`, `address`, `message`) 
                        VALUES ('$username','$email','$telephone','$address','$message')";
                $rs  = Connection()->query($sql);

                if($rs){
                    echo '
                        <script>
                            $(document).ready(function(){
                                swal({
                                title: "Already",
                                text: "Feedback Send Success",
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
    Addfeedback();

   

?>