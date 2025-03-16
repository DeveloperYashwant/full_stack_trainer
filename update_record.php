


<?php





$a=$_POST['oname'];





$b=$_POST['nname'];








$conn=mysqli_connect("localhost","root","","hacker");





if(!$conn)





{





die("connection failed".mysqli_error());





}








$sql="update record set name='$b' where name='$a'";





$sql2=mysqli_query($conn,$sql);





if($sql2)


{


	echo "<script>alert('Update Successfully');window.location.href='update_record.php';</script>";


}





?>