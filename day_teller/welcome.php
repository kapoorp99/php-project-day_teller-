<?php 
  session_start();
  error_reporting(0);
  include("config.php");
  $uname=$_SESSION['user_name'];
  if($uname==true)
  {
    $query="SELECT * FROM users WHERE username='$uname'";
    $data=mysqli_query($conn,$query);
    $result=mysqli_fetch_assoc($data);
?>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="mystyle.css">
  <title><?php echo $uname; ?></title>
</head>
<body>
  <table border="3">
    <tr>
         <th>id</th>
         <th>name</th>
         <th>email</th>
         <th>password</th>
    </tr>   
    <tr>
          <td><?php echo $result['id']; ?></td>
          <td><?php echo $result['username']; ?></td>
          <td><?php echo $result['email']; ?></td>
          <td><?php echo $result['password']; ?></td>
    </tr> 
  </table>
<br>
<br>
<footer align="center">
  <a href="logout.php">logout</a>
</footer>
</body>
</html>
<?php 
}
else
{
  header('location:login.php');
}
 ?>
