<?php



$a=$_POST['Fn'];



$b=$_POST['Em'];



$c=$_POST['Sc'];



$d=$_POST['Cmm'];






$conn=mysqli_connect("localhost","root","","hacker");





if(!$conn)



{



	echo "not";



}







$sql="insert into comm(fn,em,sub,cm) values('$a','$b','$c','$d')";







$sql2=mysqli_query($conn,$sql);







if($sql2)



{



	header("location:contact.html");



}



else



{



	echo "not insert";



}



?>