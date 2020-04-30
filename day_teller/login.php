<?php
session_start();
include("config.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="mystyle.css">
	<title>login</title>
</head>
<body>
<div class="login_form">
<form action="" method="post">
  <div class="login_form_field">
   <input type="text" name="uname" placeholder="username" required>
   <br>
   <input type="password" name="upass" placeholder="password" required>
   <br>
   <input type="submit" name="submit" value="Login">
   <br>
 </div>
</form>
</div>
</body>
</html>
<?php

  if(isset($_POST['submit']))
  {
  	$user=$_POST['uname'];
  	$pwd=$_POST['upass'];

     
        $query="SELECT * FROM users WHERE username='$user' && password='$pwd' ";
        $data=mysqli_query($conn,$query);
        $total=mysqli_num_rows($data);
      if($total==1)
      {
    	   $_SESSION['user_name']=$user;
    	   header('location:welcome.php');
      }
      else
      {
      	echo "login failed";
      }
    
  }
?>