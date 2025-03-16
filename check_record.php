<?php


session_start();


?>





<?php





if(empty($_SESSION['username']))


{


session_destroy();


echo "<script>alert('You need to Login');window.location.href='index.php';</script>";


}





?>








<head>





	<meta charset="utf-8">





<title>Website Developer</title>


	<link rel="icon" href="images/logo.png" />





  <meta name="viewport" content="width=device-width, initial-scale=1">





  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">





  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>





  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>





  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>





  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">





</head>











<style>





table{





color:white;





font-size:19px;





font-style:bold;





background:#17a2b8;





font-weight:bold;





border:10px solid white;





border-radius:;


}











td{





color:white;





border:3px solid white;








}

















th{





color:white;


border:3px solid white;





}











input{





border:1px solid white;





padding:3px;





color:black;





border-radius:5px;





}

















input[type=submit]{





border:3px solid white;





background:#ffc107;





color:white;





border-radius:10px;





padding:5px;





cursor:pointer;





font-weight:bold;





}








body{


	


	background:#f0f968;


}





</style>











</head>





<!--


#b5ff00


#ffeb00





#ffeb00


-->





<br>





<form method="post">





<table border="1" cellspacing="14" cellpadding="7" align="center">





<tr><td>Enter Student Name</td><td><input type="text" name="sn"  style="font-size:15px;width:270" required></td></tr>





<tr><td>Enter Course Name</td><td><input type="text" name="tn"  style="font-size:15px;width:270" required></td></tr>





<tr><td align="center"><input type="submit" value="Check" title="Check No.of Topics"></td>








<a href="student_progress.php" target="_top" style="position:absolute;top:2%;left:10px;cursor:pointer;color:#f8f9fa;font-size:40px" title="Home"><i class="fa fa-home" aria-hidden="true"></i></a>


<td align="center"><a href="#" style="color:white;background:#56ff00;border:3px solid white;font-weight:bold;padding:6px;text-decoration:none;border-radius:10px" value="Show" name="show" data-toggle="modal" data-target="#myModal" title="Show Completed Topic List">Show Lectures</a></td>





</tr>





</table>





</form>











<?php








$x=@$_POST['sn'];





$y=@$_POST['tn'];





$i=1;





//$conn=mysqli_connect("localhost","root","","student");


$conn=mysqli_connect("localhost","root","","hacker");




if(!$conn)





{





echo "not connected";





}











$sql1="select count(topic) AS total1 from record where name='$x' AND course='$y'";





$sql2="select course AS total2 from record where name='$x' AND course='$y'";





$sql3="select name AS total3 from record where name='$x' AND course='$y'";











$sq1=mysqli_query($conn,$sql1);


$sq2=mysqli_query($conn,$sql2);


$sq3=mysqli_query($conn,$sql3);











$row1=mysqli_fetch_assoc($sq1);


$row2=mysqli_fetch_assoc($sq2);


$row3=mysqli_fetch_assoc($sq3);











$num1=$row1['total1'];


$num2=$row2['total2'];


$num3=$row3['total3'];





$f=0;





			


				if($num2=="C Prog")


				{


					$f=16;


				}


				if($num2=="C++ Prog")


				{


					$f=15;


				}


				if($num2=="Core Java")


				{


					$f=24;


				}


				


				if($num2=="Adv Java")


				{


					$f=13;


				}


				


				if($num2=="C#")


				{


					$f=18;


				}


				


				if($num2=="ASP.NET")


				{


					$f=21;


				}


				


				if($num2=="VB.NET")


				{


					$f=18;


				}


				


				if($num2=="VBA")


				{


					$f=13;


				}


				


				if($num2=="Python")


				{


					$f=18;


				}


				


				if($num2=="Android")


				{


					$f=25;


				}


				


				if($num2=="Wordpress")


				{


					$f=8;


				}


				


				if($num2=="Web Design")


				{


					$f=16;


				}


				


				if($num2=="JavaScript")


				{


					$f=17;


				}


				


				if($num2=="PHP")


				{


					$f=18;


				}


				


				if($num2=="SQL Server")


				{


					$f=8;


				}


				


				if($num2=="Computer Science XI")


				{


					$f=20;


				}


				


				if($num2=="Computer Science XII")


				{


					$f=20;


				}








$cal=$f-$num1;





?>


<?php


if(empty($_POST['sn']))


{


	


}





else if($cal==1)


{





echo "<table border='1' align='center' cellspacing='14' cellpadding='7'>





<tr align='center' bgcolor='black'>





<th>Student Name</th>





<th>Course Name</th>





<th>Progress</th>





<th>Action</th>





</tr>";








echo "<tr align='center' bgcolor='#f928f3'>";





echo "<td style='color:'>".$num3."</td>";





echo "<td>".$num2."</td>";





echo "<td bgcolor='#3fd22d'>"."Last Lecture!"."</td>";





echo "<td bgcolor='red'>"."Apply For Exam"."</td>";





echo "</tr>";


	


	


}





else if($cal<=0)


{


	if($num2 && $num3)


	{


echo "<table border='1' align='center' cellspacing='14' cellpadding='7'>





<tr align='center' bgcolor='black'>





<th>Student Name</th>





<th>Course Name</th>





<th>Progress</th>





</tr>";








echo "<tr align='center' bgcolor='#f928f3'>";





echo "<td style='color:'>".$num3."</td>";





echo "<td>".$num2."</td>";





echo "<td bgcolor='#3fd22d'>"."Course Finished!"."</td>";











echo "</tr>";


	}


	else


	{


		echo "<script>alert('Student or Course Not Found!');</script>";


	}


	


}





else if($num2 && $num3)


{





echo "<table border='1' align='center' cellspacing='14' cellpadding='7'>





<tr align='center' bgcolor='black'>





<th>Student Name</th>





<th>Course Name</th>





<th>Completed Lec</th>





<th>Pending Lec</th>





</tr>";








echo "<tr align='center' bgcolor='#f928f3'>";





echo "<td style='color:'>".$num3."</td>";





echo "<td>".$num2."</td>";





echo "<td bgcolor='#3fd22d'>".$num1."</td>";





echo "<td bgcolor='red'>".$cal."</td>";





echo "</tr>";


	


}





/*


else if(!$num2)


{


	echo "<script>alert('Student or Course Not Found!');</script>";


}


*/


?>























<div class="modal fade" id="myModal">





    <div class="modal-dialog">





      <div class="modal-content">





      





        <!-- Modal Header -->





        <div class="modal-header">





			


          <h4 class="modal-title"><font color="purple" face="algerian"><?php echo $num2; ?> Completed Topics</font><font color="silver" face="algerian">&nbsp;[<?php echo $num1; ?>/<?php echo $f; ?>]</font></h4>





          <button type="button" class="close" data-dismiss="modal">&times;</button>





        </div>





        





        <!-- Modal body -->





        <div class="modal-body">





        


		<?php


		





			


			$ss="select * from record where course='$y' && name='$x'";





			$ss2=mysqli_query($conn,$ss);


			


			$i=1;


			while($row=mysqli_fetch_assoc($ss2))


			{


				echo "<font color='red' size='3'><b>"."[ ".$row['dt']." ]</b><br><br></font><font color='blue' size='3'>".$i."] ".$row['topic']."</font><br><hr>";


				$i++;


			}


		


		?>


		 





        </div>





        





        <!-- Modal footer -->





        <div class="modal-footer">





          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>





        </div>





        





      </div>





    </div>





  </div>





</div>