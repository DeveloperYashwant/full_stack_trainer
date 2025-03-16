



<?php





$conn=mysqli_connect("localhost","root","","hacker");

if(!$conn)

{

echo "not connected";

}



if(isset($_GET['delete']))

{

$delete_id=$_GET['delete'];

mysqli_query($conn,"delete from private where id='$delete_id'");

echo "<script>window.location.href='regBook.php';</script>";

}



?>

