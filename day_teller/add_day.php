<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="mystyle.css">
	<title>Add A Day</title>
</head>
<header>
	<h1 align="center">ADD A DAY</h1>
</header>
 <div id="div1">
  	<form action="day_added.php" method="post">
    <input type="text" name="date" placeholder="Enter Date" id="input_field" required maxlength="2">
    <br>
    <input type="text" name="month" placeholder="Enter Month" id="input_field" required maxlength="2">
    <br>
    <input type="text" name="ca" placeholder="Enter Day" id="input_field" required>
    <br>
    <input type="submit" name="save" id="button" value="Save">
    <input type="reset" id="button" value="Reset">
    </form>
  </div>
<footer>
	<p align="center">&copy; <?php echo date("Y") ?></p>
</footer>
<body>

</body>
</html>