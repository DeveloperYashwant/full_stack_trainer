<?php
session_start();


if(empty($_SESSION['username']))
{
session_destroy();
echo "<script>alert('You need to Login');window.location.href='index.html';</script>";
}

?>

<head>
<title>Yashwant Ghole</title>
<link rel="icon" href="img2.jpg">

<frameset rows="20%,80%" border="0" noresize>
<frame src="data.html" scrolling="no">
<frame src="col.php" name="link">
</frameset>
</head>

<body onload="myFun();">
<div id="preloder">
		<img src="myload.gif" style="position:absolute;top:20%;right:40%"></img>
</div>



	
<script>
var load=document.getElementById('preloder');

function myFun()
{
load.style.display='none';
}
</script>
</body>