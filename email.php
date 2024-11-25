

<?php
$to="yashghole12@gmail.com";

$subject="Testing";

$message="Hello, How are you?";

$headers="From:Yashwant Ghole<yashghole12@gmail.com>";

if(mail($to,$subject,$message,$headers))
{
echo "message send successfully";
}
else
{
echo "not send";
}
?>
