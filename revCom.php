



















<head>







<style>



input{



border:1px solid white;



padding:3px;



color:black;



border-radius:5px;



}











input[type=submit]{



border:1px solid skyblue;



background:skyblue;



color:white;



padding:5px;



cursor:pointer;



font-weight:bold;



}







input[type=submit]:hover



{



border:1px solid pink;



background:pink;



color:white;



padding:5px;



cursor:pointer;



font-weight:bold;



}







table{



border:1px solid #ece8ec;



border-radius:20px;



background:#b1a6a6;;



}







th{



color:yellow;



font-size:16px;



font-family:algerian;



}







td{



color:white;



font-size:14px;



font-weight:bold;



}







body{



background:lightyellow;



}



</style>



</head>







<?php

$conn=mysqli_connect("localhost","root","","hacker");


if(!$conn)



{



echo "not connected";



}







$result=mysqli_query($conn,"select * from comm");



?>







<table border="3" cellspacing="5" height="" width="100%">



<tr>



<th>No.</th>



<th>Full Name</th>



<th>Email ID</th>



<th>Contact Number</th>



<th>Message</th>







<th>Action</th>



</tr>;



<?php







$i=1;







while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))



{











$idn=$row['id'];



$fnn=$row['fn'];



$lnn=$row['em'];



$cnn=$row['sub'];



$pcnn=$row['cm'];











?>



<tr>



<td><?php echo $idn; ?></td>



<td><?php echo $fnn; ?></td>



<td><?php echo $lnn; ?></td>



<td><?php echo $cnn; ?></td>



<td><?php echo $pcnn; ?></td>







<td><a href="del3.php?delete=<?php echo $idn; ?>" onclick="return confirm('Are you sure you want to delete this Record?');">Delete</a>



</td>



</tr>







<?php



 $i++;



 }



?>