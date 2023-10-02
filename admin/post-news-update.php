<?php 
    include('sidebar.php');
    $update_id = $_GET['id'];
    $sql = "SELECT *FROM `tbl_news` WHERE `id` = '$update_id'";
    $rs  = Connection()->query($sql);
    $row = mysqli_fetch_assoc($rs); 
?>
                <div class="col-10">
                    <div class="content-right">
                        <div class="top">
                            <h3>Update Sport News</h3>
                        </div>
                        <div class="bottom">
                            <figure>
                                <form method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input type="text" name="title" value="<?php echo $row['title']; ?>"  class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>News Type</label>
                                        <select class="form-select" name="news-type">
                                            <option value="sport" <?php if($row['news_type'] == 'sport') echo 'selected' ?>>Sport</option>
                                            <option value="socail" <?php if($row['news_type'] == 'socail') echo 'selected' ?>>Socail</option>
                                            <option value="entertainment" <?php if($row['news_type'] == 'entertainment') echo 'selected' ?>>Entertainment</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Categories</label>
                                        <select class="form-select" name="categary">
                                            <option value="national" <?php if($row['categary'] == 'national') echo 'selected' ?>>National</option>
                                            <option value="international" <?php if($row['categary'] == 'international') echo 'selected' ?>>International</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Thumnail <span class="text-danger">(Size 350px x 215px)</span></label>
                                        <input type="file" name="thumnail" id="thumnail" class="form-control" name="thumnail"><br>
                                        <img id="show-thumnail" src="./assets/image/<?php echo $row['thumnail']; ?>" alt="" width="200px" height="200px">
                                        <input type="hidden" name="old_thumnail" id="" value=<?php echo $row["thumnail"]; ?>>
                                    </div>
                                    <div class="form-group">
                                        <label>Banner <span class="text-danger">(Size 770px x 415px)</span></label>
                                        <input type="file" class="form-control" id="banner" name="banner"><br>
                                        <img id="show-banner" src="./assets/image/<?php echo $row['banner']; ?>" alt="" width="200px" height="200px">
                                        <input type="hidden" name="old_banner" id="" value=<?php echo $row["banner"]; ?>>
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label>
                                        <textarea class="form-control" name="description">
                                            <?php echo $row['description']; ?>
                                        </textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" name="btn-update-post-news" class="btn btn-primary">Submit</button>
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
        $('#thumnail').change(function(){
            $('#show-thumnail').css('display','none');
        });
        $('#banner').change(function(){
            $('#show-banner').css('display','none');
        });
    })
</script>
</html>