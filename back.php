



<form action="" method="post" enctype="multipart/form-data">

<div class="input-group">
<label>Photo</label>
<input type="file" name="ufile"placeholder="">
</div>

<div class="input-group">
<button type="submit" name="update" class="btn">
Update
</button>

</div>
</form>


<?php
error_reporting(0);
?>

<?php

$filename=$_FILES["ufile"]["name"];
$tempname=$_FILES["ufile"]["tmp_name"];
$folder="Back/".$filename;

move_uploaded_file($tempname,$folder);


?>

<html>
    <head>
        <style>
        body{
            background-image:url('<?php echo $folder; ?>');
        }
        </style>
    </head>
</html>    