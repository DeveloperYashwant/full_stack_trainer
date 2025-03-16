<?php





$a=$_POST['uname'];


$b=$_POST['user'];


$c=$_POST['pass'];


$d="User";





$conn=mysqli_connect("localhost","root","","hacker");

//$conn=mysqli_connect('localhost','root','','student');





$query="insert into student_login(name,user,pass,type) values('$a','$b','$c','$d')";





$query2=mysqli_query($conn,$query);





if($query)


{


	echo "<script>alert('Register Successfull');window.location.href='index.html';</script>";


}





?>