<?php 
    include('sidebar.php');
?>
                <div class="col-10">
                    <div class="content-right">
                        <div class="top">
                            <h3>Update-Logo</h3>
                        </div>
                        <div class="bottom">
                            <?php
                                $id = $_GET['id'];
                                $sql = "SELECT * FROM `tbl_logo` WHERE `id` = '$id' ";
                                $rs = Connection()->query($sql);
                                $row = mysqli_fetch_assoc($rs);
                            ?>
                            <figure>
                                <form method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="id_update_logo" id="" value="<?php echo $id ?>">
                                    <div class="form-group">
                                        <label>Logo <span class="text-danger">(Header size 215px x 36px) (Footer size 120px x 120px)</span> </label>
                                        <input type="file" name="logo" id="logo" class="form-control"><br>
                                        <img src="./assets/Image-Logo/<?php echo $row['thumnail'] ?>" id="show-logo" alt="" width="200px" height="200px">
                                        <input type="hidden" name="old_image" id="" value="<?php echo $row['thumnail']?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Status</label>
                                        <select class="form-select" name="status">
                                            <option value="all" <?php if($row['status']=="all") echo 'selected' ?>>All</option>
                                            <option value="header" <?php if($row['status']=="header") echo 'selected' ?>>Header</option>
                                            <option value="footer" <?php if($row['status']=="footer") echo 'selected' ?>>Footer</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" name="btn-update-logo" class="btn btn-primary">Submit</button>
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
<script>
    $(document).ready(function(){
        $('#logo').change(function(){
            $('#show-logo').css('display','none');
        })
    })
</script>
</html>