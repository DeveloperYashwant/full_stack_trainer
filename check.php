<head>

<style>

table{

color:yellow;

font-size:19px;

font-style:bold;

background:grey;

border:2px solid white;

}



td{

color:white;

}





th{

color:yellow;

}



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

</style>

</head>



<form method="post">

<table border="1" cellspacing="4" cellpadding="5" align="center">

<tr><td>Enter First Name</td><td><input type="text" name="fn" required="required"></td></tr>

<tr><td>Enter Last Name</td><td><input type="text" name="ln" required="required"></td></tr>

<tr><td align="center

"><input type="submit" value="Check"></td></tr>

</table>

</form>



<?php

$x=@$_POST['fn'];

$y=@$_POST['ln'];

// $conn=mysqli_connect(" f0_38416178","root","3rqA1fcAQpvjT","if0_38416178_hacker");


$conn=mysqli_connect("localhost","root","","hacker");

if(!$conn)

{

echo "not connected";

}



$sql1="select sum(pa) AS total1 from att where fn='$x' AND ln='$y'";

$sql2="select tf AS total2 from details where fn='$x' AND ln='$y'";

$sql3="select sum(pa) AS total3 from att where fn='$x' AND ln='$y'";



$sq1=mysqli_query($conn,$sql1);

$sq2=mysqli_query($conn,$sql2);

$sq3=mysqli_query($conn,$sql3);

$row1=mysqli_fetch_assoc($sq1);

$row2=mysqli_fetch_assoc($sq2);

$row3=mysqli_fetch_assoc($sq3);

$num1=$row1['total1'];

$num2=@$row2['total2'];

$num3=$row3['total3'];



$f=$num2-$num3;











echo "<table border='1' align='center' cellspacing='4' cellpadding='5'>

<tr align='center'>

<th>Payed Amount</th>

<th>Balance Amount</th>

</tr>";



echo "<tr align='center'>";

echo "<td>".$num1."</td>";

echo "<td>".$f."</td>";

echo "</tr>";

?>











