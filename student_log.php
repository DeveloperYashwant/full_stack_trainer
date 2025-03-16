<?php





session_start();





$a=$_POST['user'];


$b=$_POST['pass'];





$c=$_POST['utype'];



//$conn=mysqli_connect("localhost","root","","student");


$conn=mysqli_connect("localhost","root","","hacker");



if(!$conn)


{


echo "not connect";


}











$sql="select * from student_login where user='$a' and pass='$b' and type='$c'";











$sql2=mysqli_query($conn,$sql);











$result=mysqli_num_rows($sql2);











$_SESSION['username']=$a;














if(!$result)





{





	echo "<script>alert('Invalid Username or Password');window.location.href='index.html';</script>";





}











while($row=mysqli_fetch_array($sql2))





{





	





	if($row['user']==$a && $row['pass']==$b && $row['type']=="Admin")


	{





		echo "<script>window.location.href='student_progress.php';</script>";





	}


	


	else if($row['user']==$a && $row['pass']==$b && $row['type']=="User")


	{





		echo "<script>window.location.href='user_progress.php';</script>";





	}





}





?>


