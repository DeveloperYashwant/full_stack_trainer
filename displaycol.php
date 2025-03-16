



















<?php



$conn=mysqli_connect("localhost","root","","hacker");






if(!$conn)



{



echo "not connected";



}







$result=mysqli_query($conn,"select * from backimg");











while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))



{











$ig=$row['myimg'];







}



?>







<html>



    <head>



        <style>



        body{



            background-image:url('<?php echo $ig; ?>');



        }



        </style>



        </head>



</html>