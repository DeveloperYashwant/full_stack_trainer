







<?php






$conn=mysqli_connect("localhost","root","","hacker");






if(!$conn)



{



echo "not connected";



}







if(isset($_GET['edit']))



{



$edit_id=$_GET['edit'];



$run=mysqli_query($conn,"select * from details where id=$edit_id");



while($row=mysqli_fetch_array($run,MYSQLI_ASSOC))



{



$id=$row['id'];



$fn=$row['fn'];



$ln=$row['ln'];



$cn=$row['cn'];



$pcn=$row['pcn'];



$doa=$row['doa'];



$ei=$row['ei'];



$cnas=$row['cnas'];



$nos=$row['nos'];



$tf=$row['tf'];







}







}



?>







<html>



<head>



<style>



#b1{



position:absolute;



bottom:32px;



right:50%;



}











</style>



<link rel="stylesheet" href="s.css">



</head>



<body background="">



<div class="header">



<h2>Student Admission Form</h2>



</div>



<img src="user.jpg" class="user"></img>



<form action="edit.php?edit_form=<?php echo $id; ?>" method="post" enctype="multipart/form-data">







<div class="input-group">



<label>First Name</label>



<input type="text" name="fname" value="<?php echo $fn; ?>" placeholder="" required="required">



</div>







<div class="input-group">



<label>Last Name</label>



<input type="text" name="lname" value="<?php echo $ln; ?>" placeholder=""  required="required">



</div>







<div class="input-group">



<label>Contact No.</label>



<input type="number" name="cnumber" value="<?php echo $cn; ?>" placeholder="" required="required">



</div>







<div class="input-group">



<label>Parents Contact No.</label>



<input type="number" name="pcnumber" value="<?php echo $pcn; ?>" placeholder="" required="required">



</div>







<div class="input-group">



<label>Date of Admission</label>



<input type="date" name="doadmit" value="<?php echo $doa; ?>" placeholder="" required="required">



</div>







<div class="input-group">



<label>Email ID</label>



<input type="email" name="eid" value="<?php echo $ei; ?>" placeholder="" required="required">



</div>







<div class="input-group">



<label>College Name and Stream</label>



<input type="text" name="cnastream" value="<?php echo $cnas; ?>" placeholder="" required="required">



</div>















<div class="input-group">



<label>Name of Subjects</label>



<input type="text" name="nosub" value="<?php echo $nos; ?>" placeholder="" required="required">



</div>







<div class="input-group">



<label>Total Fees</label>



<input type="text" name="tfees" value="<?php echo $tf; ?>" placeholder="" required="required">



</div>















<div class="input-group">



<button type="submit" name="update" class="btn">



Update



</button>







</div>



</form>







</body>



</html>







<?php



error_reporting(0);



?>







<?php







$filename=$_FILES["ufile"]["name"];



$tempname=$_FILES["ufile"]["tmp_name"];



$folder="Stud/".$filename;







move_uploaded_file($tempname,$folder);







$conn=mysqli_connect("localhost","root","","hacker");







if(!$conn)



{



echo "not connected";



}







if(isset($_POST['update']))



{



$uid=$_GET['edit_form'];







$ua=$_POST['fname'];



$ub=$_POST['lname'];



$uc=$_POST['cnumber'];



$ud=$_POST['pcnumber'];



$ue=$_POST['doadmit'];



$uf=$_POST['eid'];



$ug=$_POST['cnastream'];



$uh=$_POST['nosub'];



$ui=$_POST['tfees'];



//$uj=$_POST['ufile'];







if(mysqli_query($conn,"update details set fn='$ua', ln='$ub', cn='$uc', pcn='$ud', doa='$ue', ei='$uf', cnas='$ug', nos='$uh', tf='$ui' where id='$uid'"))



{



//header("location:display.php");



echo "<script>alert('Update Successfully');window.location.href='display.php';</script>";



}



}



?>