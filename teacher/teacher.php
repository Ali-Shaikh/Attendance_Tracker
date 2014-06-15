<html>

<head>
<link rel="stylesheet" type="text/css" href="../css/retrieve.css">
</head>    

<body>
<?php
$host="localhost"; // Host name
$username="root"; // Mysql username
$password="root"; // Mysql password
$db_name="at"; // Database name
$tbl_name="sub1"; // Table name

// Connect to server and select databse.
mysql_connect("$host", "$username", "$password")or die("cannot connect");
mysql_select_db("$db_name")or die("cannot select DB");
$myusername = $_GET['username'];
$sql="SELECT * FROM $tbl_name WHERE teacher=('$myusername')";
$result=mysql_query($sql);

echo "<center>";
echo "<center>";
echo "<font size='6' color='white' /><div><h1>Attendance Tracker</h1></div><br \><br \><br \>";
echo "<table border='1'>";
echo "<tr>";
echo "<th><font size=\"5\" color=\"white\">Courses Offered</font></th>";
echo "</tr>";

while($row = mysql_fetch_array($result))
  {
  echo "<tr>";
  echo "<td><font size='4' color='white'><a href='retrieve_teacher.php?username=$myusername&subcode=".$row['Subject_code']."'>" . $row['Subject_code'] . "</a></font></td>";
  echo "</tr>"; 
  }
?>
</body>
</html>
