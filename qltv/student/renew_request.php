<?php
require('dbconn.php');

$id=$_GET['id'];

$roll=$_SESSION['RollNo'];

$sql="insert into LMS.renew (RollNo,BookId) values ('$roll','$id')";

if($conn->query($sql) === TRUE)
{
echo "<script type='text/javascript'>alert('Yêu cầu đã gửi đến admin.')</script>";
header( "Refresh:0.01; url=current.php", true, 303);
}
else
{
	echo "<script type='text/javascript'>alert('Yêu cầu đã được gửi.')</script>";
    header( "Refresh:0.01; url=current.php", true, 303);

}




?>