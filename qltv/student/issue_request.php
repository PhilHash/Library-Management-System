<?php
require('dbconn.php');

$id=$_GET['id'];

$roll=$_SESSION['RollNo'];

$sql = "SELECT COUNT(*) FROM LMS.record WHERE RollNo = '$roll' AND BookId = $id";
$result = $conn->query($sql);
$row = $result->fetch_row();

if ($row[0] > 0) {
    // Record already exists, display error message
    echo "<script type='text/javascript'>alert('Bạn đã mượn rồi.')</script>";
    header("Refresh:0.01; url=book.php", true, 303);
} else {
    // Record does not exist, insert new record
    $sql = "INSERT INTO LMS.record (RollNo, BookId, Time) VALUES ('$roll', $id, CURTIME())";
    if ($conn->query($sql) === TRUE) {
        echo "<script type='text/javascript'>alert('Yêu cầu đã được gửi đến admin.')</script>";
        header("Refresh:0.01; url=book.php", true, 303);
    } else {
        // Handle the mysqli_query() failure
        echo "<script type='text/javascript'>alert('Đã xảy ra lỗi. Vui lòng thử lại sau.')</script>";
        header("Refresh:0.01; url=book.php", true, 303);
    }
}


?>