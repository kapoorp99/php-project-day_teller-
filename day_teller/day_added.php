<?php
include("config.php");
error_reporting(0);
?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="mystyle.css">
	<title>DAY ADDED</title>
</head>
<body>
<a href="index.php">homepage</a>
<br>
<a href="add_day.php">Add more days</a>
<br>
 <?php
  if($_POST['save'])
  {
   $d=$_POST['date'];
   $m=$_POST['month'];
   $dn=$_POST['ca'];  // dn -- day_name , ca -- celebrated_as
   $check="SELECT day_date,day_month FROM days WHERE day_date='$d' && day_month='$m' ";
   $res=mysqli_query($conn,$check);
   if(mysqli_num_rows($res)>0)
   {
   	echo "day already exists!";
   }
   else
   {
   $query="INSERT INTO days VALUES ('','$d','$m','$dn')";
   $data=mysqli_query($conn,$query);
     if($data)
      {
	    echo "A day is added successfully.";
      }
  }
  }
  ?>
</body>
</html>
