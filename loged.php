<?php



session_start();



$a=$_POST['user'];

$b=$_POST['pass'];

$conn=mysqli_connect("localhost","root","","hacker");


if(!$conn)

{

echo "not connect";

}





$sql="select * from login where user='$a' AND pass='$b'";



$sql2=mysqli_query($conn,$sql);



$row=mysqli_num_rows($sql2);



$_SESSION['username']=$a;

if($row==1)

{



echo "<script>window.location.href='frameset.php';</script>";

}

else

{

echo "<script>alert('Invalid Username or Password');window.location.href='index.php';</script>";

}

?>