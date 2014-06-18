<!DOCTYPE html>
<!-- saved from url=(0038)http://getbootstrap.com/examples/grid/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Grid Template for Bootstrap</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/grid.css" rel="stylesheet">
  </head>

  <body>
  	<?php
	$host="localhost"; // Host name
	$username="root"; // Mysql username
	$password="root"; // Mysql password
	$db_name="at"; // Database name
	$tbl_name="sub1"; // Table name
	mysql_connect("$host", "$username", "$password")or die("cannot connect");
	mysql_select_db("$db_name")or die("cannot select DB");
	$myusername = $_GET['username'];
	$sql="SELECT DISTINCT Subject_code FROM $tbl_name WHERE teacher=('$myusername')";
	$result=mysql_query($sql);
	?>
    <div class="container">

      <div class="page-header">
        <h1>Attendance Tracker</h1>
      </div>

      <h3>Courses Offered</h3>
      <div class="row">
	  <?php
	  while($row = mysql_fetch_array($result))
	  {
	  $sub = $row['Subject_code'];
	  $url = "retrieve_teacher.php?username=$myusername&subcode=$sub";
	  echo "<div class=\"col-md-4\"><a href=\"$url\">$sub</a></div>";
	  }
	  ?>
      </div>

    </div>

</body></html>