<?php
 include("config.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="mystyle.css">
	<title>DAY TELLER</title>
</head>
<body>
  <header>
    <a href="login.php">Login</a>
    <br>
    <a href="register.php">Register</a>
    <br>
    <a href="add_day.php">Add A Day</a>
  </header>
  <div id="div1">
  	<form action="" method="post">
    <input type="text" name="date" placeholder="Enter Date" id="input_field" required maxlength="2">
    <br>
    <input type="text" name="month" placeholder="Enter Month" id="input_field" required
    maxlength="2">
    <br>
    <input type="submit" name="submit" id="button" value="Submit">
    <input type="reset" id="button" value="Reset">
    </form>
  </div>

<?php
  if(isset($_POST['submit']))
  {
   $d=$_POST['date'];
   $m=$_POST['month'];
   $resquery="SELECT day_name FROM days WHERE day_date='$d' && day_month='$m' ";
   $res=mysqli_query($conn,$resquery);
   if(mysqli_num_rows($res)>0)
   {
    $show_day_name=mysqli_fetch_assoc($res);
  ?>

         <p>
           <?php echo $show_day_name['day_name']; ?></td>
         </p>
<br>

<footer>
	<p align="center">&copy; <?php echo date("Y") ?></p>
</footer>
</body>
</html>
<?php 
}
else
{
 echo "Error in finding day!";
}
}
?>