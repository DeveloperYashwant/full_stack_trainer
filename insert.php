<?php



error_reporting(0);



?>







<?php







$filename=$_FILES["uploadfile"]["name"];



$tempname=$_FILES["uploadfile"]["tmp_name"];



$folder="Stud/".$filename;







move_uploaded_file($tempname,$folder);







$a=$_POST['fn'];



$b=$_POST['ln'];



$c=$_POST['cn'];



$d=$_POST['pcn'];



$e=$_POST['doa'];



$f=$_POST['ei'];



$g=$_POST['cnas'];



$h=$_POST['nos'];



$i=$_POST['tf'];



$conn=mysqli_connect("localhost","root","","hacker");

if(!$conn)



{



die("connection failed".mysqli_error());



}



$sql="insert into details(fn,ln,cn,pcn,doa,ei,cnas,nos,tf,myimg) values('$a','$b','$c','$d','$e','$f','$g','$h','$i','$folder')";



$sql2=mysqli_query($conn,$sql);



if($sql2)



{



echo "<script>alert('Save Successfully');window.location.href='ins.php';</script>";



}







?>



