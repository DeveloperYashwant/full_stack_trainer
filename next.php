<head>    <style>table{border:1px solid #ece8ec;border-radius:20px;background:#b1a6a6;}th{color:yellow;font-size:16px;font-family:algerian;}td{color:white;font-size:19px;font-weight:bold;}body{background:white;}</style></head><?php$a=$_POST['fn'];$b=$_POST['ln'];$c=$_POST['cn'];$d=$_POST['dof'];$e=$_POST['pa'];$g=$_POST['em'];$email='yashghole12@gmail.com';$to=$g;$conn=mysqli_connect("localhost","id14567499_mylog","Yashwantghole@123","id14567499_log");if(!$conn){die("connection failed".mysqli_error());}$bam=0;$sqlR="insert into att(fn,ln,cn,dof,pa,email,ba) values('$a','$b','$c','$d','$e','$g','$bam')";$sqlR2=mysqli_query($conn,$sqlR);$sql1="select sum(pa) AS total1 from att where fn='$a' AND ln='$b'";$sql2="select tf AS total2 from details where fn='$a' AND ln='$b'";$sql3="select sum(pa) AS total3 from att where fn='$a' AND ln='$b'";$sq1=mysqli_query($conn,$sql1);$sq2=mysqli_query($conn,$sql2);$sq3=mysqli_query($conn,$sql3);$row1=mysqli_fetch_assoc($sq1);$row2=mysqli_fetch_assoc($sq2);$row3=mysqli_fetch_assoc($sq3);$num1=$row1['total1'];$num2=$row2['total2'];$num3=$row3['total3'];$bam=$num2-$num3;$sqlRR="update att set ba='$bam' where fn='$a' AND ln='$b'";$sqlRR2=mysqli_query($conn,$sqlRR);$sql1="select sum(pa) AS total1 from att where fn='$a' AND ln='$b'";$sql2="select tf AS total2 from details where fn='$a' AND ln='$b'";$sql3="select sum(pa) AS total3 from att where fn='$a' AND ln='$b'";$sq1=mysqli_query($conn,$sql1);$sq2=mysqli_query($conn,$sql2);$sq3=mysqli_query($conn,$sql3);$row1=mysqli_fetch_assoc($sq1);$row2=mysqli_fetch_assoc($sq2);$row3=mysqli_fetch_assoc($sq3);$num1=$row1['total1'];$num2=$row2['total2'];$num3=$row3['total3'];$bam=$num2-$num3;$subject=$a.' Your Payment has been successfully proceed,Thanks!';//$message="Your Contact Number ".$c."\n"."Your Payment Amount:".$e." Rs"."\n"."Your Balance Amount:".$bam." Rs";$headers= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";$headers.="From: ".$email;$body="<h1 align='center'><font face='algerian' color='orange'>Receipt</font></h1><table border='3' align='center' cellspacing='5' height='40%' width='40%' style='border:1px solid #ece8ec;border-radius:20px;background:#b1a6a6;'><tr><td style='color:white;font-size:14px;font-weight:bold;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date : ".$d."</td></tr><tr><td style='color:white;font-size:14px;font-weight:bold;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name : ".$a." ".$b."</td></tr><tr><td style='color:white;font-size:14px;font-weight:bold;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact No : ".$c."</td></tr><tr><td style='color:white;font-size:14px;font-weight:bold;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Paid Amount : ".$e." Rs</td></tr><tr><td style='color:white;font-size:14px;font-weight:bold;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Amount : ".$num2." Rs</td></tr><tr><td style='color:white;font-size:14px;font-weight:bold;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Balance Amount : ".$bam." Rs</td></tr></table>";if(mail($to,$subject,$body,$headers) && $sqlRR2){echo "<script>alert('Save Successfully');window.location.href='attent.php';</script>";}?>