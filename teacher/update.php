<html>

<head>
</head>

<body>

<?php

$cb = $_POST['cb'];
$con = mysql_connect("localhost","root","root");

if (!$con)
{
  die('Could not connect: ' . mysql_error());
}

mysql_select_db("at", $con);
$subcode=$_POST['subcode'];
$myusername=$_POST['username'];
$query="UPDATE sub1 SET class_conducted=class_conducted+1 WHERE Subject_code=('$subcode')";
mysql_query($query) or die ('Error Updating the Database' . mysql_errno());

foreach($cb as $key=>$value)
{  $query="UPDATE sub1 SET class_attended=class_attended+1 WHERE USN='$value' AND Subject_code=('$subcode')";
  mysql_query($query) or die ('Error Updating the Database' . mysql_errno());
}
header("location:retrieve_teacher.php?username=$myusername&subcode=$subcode");
?>
</body>
</html>
