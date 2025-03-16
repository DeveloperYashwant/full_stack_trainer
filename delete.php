







<?php



//$x=@$_POST['eid'];



$conn=mysqli_connect("localhost","root","","hacker");





if(!$conn)



{



echo "not connected";



}







if(isset($_GET['delete']))



{



$delete_id=$_GET['delete'];



mysqli_query($conn,"delete from att where id='$delete_id'");



echo "<script>window.location.href='showed.php';</script>";



}







?>



