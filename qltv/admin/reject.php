<?php
require('dbconn.php');

$rollno=$_GET['id'];

$sql="delete from LMS.user where RollNo='$rollno'";

if($conn->query($sql) === TRUE)
{
echo "<script type='text/javascript'>alert('Thành công')</script>";
header( "Refresh:0.01; url=issue_requests.php", true, 303);
}
else
{
	echo "<script type='text/javascript'>alert('Error')</script>";
    header( "Refresh:0.01; url=issue_requests.php", true, 303);

}




?>