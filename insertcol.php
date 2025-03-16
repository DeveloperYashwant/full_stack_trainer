<?php



error_reporting(0);



?>







<?php







$filename=$_FILES["ufile"]["name"];



$tempname=$_FILES["ufile"]["tmp_name"];



$folder="Back/".$filename;







move_uploaded_file($tempname,$folder);










$conn=mysqli_connect("localhost","root","","hacker");


if(!$conn)



{



die("connection failed".mysqli_error());



}



$sql="insert into backimg(myimg) values('$folder')";



$sql2=mysqli_query($conn,$sql);



if($sql2)



{



echo "<script>window.location.href='col.php';</script>";



}







?>



