<?php 
    include('sidebar.php');
    $update_id = $_GET['id'];
    $sql = "SELECT *FROM `tbl_about_us` WHERE `id` = '$update_id'";
    $rs  = Connection()->query($sql);
    $row = mysqli_fetch_assoc($rs); 
?>
                <div class="col-10">
                    <div class="content-right">
                        <div class="top">
                            <h3>Update About</h3>
                        </div>
                        <div class="bottom">
                            <figure>
                                <form method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label>Description</label>
                                        <textarea class="form-control" name="description" style="height:300px"><?php echo $row['description']; ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" name="btn-adout-update" class="btn btn-primary">Submit</button>
                                    </div>
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