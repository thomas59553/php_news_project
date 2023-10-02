<?php 
    include('sidebar.php');
?>
                <div class="col-10">
                    <div class="content-right">
                        <div class="top">
                            <h3>Add Sport News</h3>
                        </div>
                        <div class="bottom">
                            <figure>
                                <form method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input type="text" name="title" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>News Type</label>
                                        <select class="form-select" name="news-type">
                                            <option value="sport">Sport</option>
                                            <option value="socail">Socail</option>
                                            <option value="entertainment">Entertainment</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Categories</label>
                                        <select class="form-select" name="categary">
                                            <option value="national">National</option>
                                            <option value="international">International</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Thumnail <span class="text-danger">(Size 350px x 215px)</span></label>
                                        <input type="file" class="form-control" name="thumnail">
                                    </div>
                                    <div class="form-group">
                                        <label>Banner <span class="text-danger">(Size 770px x 415px)</span></label>
                                        <input type="file" class="form-control" name="banner">
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label>
                                        <textarea class="form-control" name="description"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" name="btn-add-post" class="btn btn-primary">Submit</button>
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