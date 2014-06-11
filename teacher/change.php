<html>
<head>
</head>

<body>
<?php
#echo "HELLO";
$myusername=$_POST['username'];
Header("Location: teacher.php?username=$myusername");
?>
</body>
</html>
