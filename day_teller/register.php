<?php
include("config.php");
error_reporting(0);
?>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="mystyle.css">
	<title>register</title>
</head>
<body>
  <form action="" method="post" >
  	<input type="text" name="urname" placeholder="username" required>
  	<input type="email" name="uremail" placeholder="email" required>
  	<input type="password" name="urpass" placeholder="password" required>
  	<input type="submit" name="submit" value="submit" />
  </form>
  <?php
  if($_POST['submit'])
  {
   $urn=$_POST['urname'];
   $urem=$_POST['uremail'];
   $urp=$_POST['urpass'];
   $query="SELECT username FROM users WHERE username='$urn' ";
   $res=mysqli_query($conn,$query);
   if(mysqli_num_rows($res)>0)
   {
   	echo "username already exist,try another username";
   }
   else
   {
   $query="INSERT INTO users VALUES ('','$urn','$urem','$urp')";
   $data=mysqli_query($conn,$query);
     if($data)
      {
	    header('location:login.php');
      }
  }
  }
  ?>
</body>
</html>