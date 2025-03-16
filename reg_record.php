<?php

$a=$_POST['Sname'];
$b=$_POST['Cname'];
$c=$_POST['Tname'];
$d=$_POST['Tdate'];
$e="Completed";




$conn=mysqli_connect("localhost","root","","hacker");
//$conn=mysqli_connect("localhost","root","","student");

if(!$conn)
{
	echo "not connected";
}

$s = "SELECT * FROM record WHERE (topic='$c' && course='$b') && name='$a'";
$result = mysqli_query($conn,$s);
if(mysqli_num_rows($result)>0) {
    echo "<script>alert('Your Selected Topic is Already Registered');window.location.href='index.html';</script>";
} 

else {
 
date_default_timezone_set('Asia/Kolkata');
$t = date("d/m/Y H:i:s a");

$sql="insert into record(name,course,topic,branch,dt,progress) values('$a','$b','$c','$d','$t','$e')";

$sql2=mysqli_query($conn,$sql);

if($sql2)
{
	echo "<script>alert('Save Successfully');window.location.href='index.html';</script>";
}
else
{
	echo "<script>alert('Not Registered');window.location.href='index.html';";
}

    
}


?>
