



<?php



$a=$_POST['Sname'];

$b=$_POST['Contact'];

$c=$_POST['Cname'];

$d=$_POST['Year'];



$conn=mysqli_connect("localhost","root","","hacker");

//$conn=mysqli_connect("localhost","root","","id9346097_log");

if(!$conn)

{

die("connection failed".mysqli_error());

}$s = "SELECT * FROM private WHERE (name='$a' || contact='$b') && course='$c'";$result = mysqli_query($conn,$s);if(mysqli_num_rows($result)>0) {    echo "<script>alert('Your Registeration has been Already Done');window.location.href='index.php';</script>";} else {date_default_timezone_set('Asia/Kolkata');$t = date("d/m/Y H:i:s a");

$sql="insert into private(name,contact,course,year,dt) values('$a','$b','$c','$d','$t')";

$sql2=mysqli_query($conn,$sql);

if($sql2)

{

echo "<script>alert('Register Successfully');window.location.href='index.php';</script>";

}

}

?>

