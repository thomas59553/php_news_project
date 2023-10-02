<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" 
integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" 
crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- Sweetalert cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" 
integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" 
crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<?php 
    include('sidebar.php');
    // $update_id = $_GET['id'];
    // $sql = "SELECT *FROM `tbl_feedback` WHERE `id` = '$update_id'";
    // $rs  = Connection()->query($sql);
    // $row = mysqli_fetch_assoc($rs);
    // echo $update_id; 
?>
                <div class="col-10">
                    <div class="content-right">
                        <div class="top">
                            <h3>All FEEDBACK</h3>
                        </div>
                        <div class="bottom view-post">
                            <figure>
                                <form method="post" enctype="multipart/form-data">
                                    <!-- <div class="block-search">
                                        <input type="text" class="form-control" placeholder="SEARCH HERE">
                                        <button type="submit">
                                        <img src="search.png" alt=""></button>
                                    </div> -->
                                    <table class="table align-middle" border="1px">
                                        <tr>
                                            <th>Username</th>
                                            <th>Email</th>
                                            <th>Telephone</th>
                                            <th>Address</th>
                                            <th>Message</th>
                                            <th>Date</th>
                                            <th>Action</th>
                                        </tr>
                                        <?php 
                                            if(empty($_GET['id'])){
                                                $current_page = 1;

                                            }
                                            else{
                                                $current_page = $_GET['id'];
                                            }
                                            Getfeedback($current_page);  
                                            
                                        ?>
                                    </table>
                                    <ul class="pagination">
                                        <li>
                                            <?php Pegenationfeedback(); ?>
                                        </li>
                                    </ul>
                                </form>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>