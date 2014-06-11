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
$tbl_name="members"; // Table name

// Connect to server and select databse.
mysql_connect("$host", "$username", "$password")or die("cannot connect");
mysql_select_db("$db_name")or die("cannot select DB");

// username and password sent from form
$myusername=$_POST['myusername'];
$mypassword=$_POST['mypassword'];
#$mysubcode=$_POST['mysubcode'];

// To protect MySQL injection (more detail about MySQL injection)
$myusername = stripslashes($myusername);
$mypassword = stripslashes($mypassword);
#$mysubcode = stripslashes($mysubcode);
$myusername = mysql_real_escape_string($myusername);
$mypassword = mysql_real_escape_string($mypassword);
#$mysubcode = mysql_real_escape_string($mysubcode);

#$sql="SELECT * FROM $tbl_name WHERE username='$myusername' and password='$mypassword' and sub='$mysubcode'";
$sql="SELECT * FROM $tbl_name WHERE username='$myusername' and password='$mypassword'";
$result=mysql_query($sql);

// Mysql_num_row is counting table row
$count=mysql_num_rows($result);

if($count>=1)
{
	session_start();
	$_SESSION["myusername"] = $myusername;
	$_SESSION["mypassword"] = $mypassword;
	#header("location:retrieve_teacher.php?subcode=$mysubcode");
	header("location:teacher.php?username=$myusername");
}
else 
{
	echo '<form action="../back.php" method="post" >';
	echo "<div align='center'><font size='5' color='white'> Wrong Username or Password</div>";
	echo "<div align='center' ><input type='submit' name='back' value='Back'></div>";
	echo '</form>';
}

?>

</body>
</html>
