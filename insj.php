<!DOCTYPE html>
<html lang="en">
<head>
	<title>restaurant</title>
</head>
<body>
	<center>
		<h1>Storing Form data in Database</h1>
		<form action="insert.php" method="post">
			
<p>
			<label for="firstName">First Name:</label>
			<input type="text" name="f_name" id="firstName">
			</p>

			
<p>
			<label for="lastName">Last Name:</label>
			<input type="text" name="l_name" id="lastName">
			</p>

			
<p>
			<label for="phone number ">phone number :</label>
			<input type="text" name="phone_number" id="phone number ">
			</p>
<p>
			city <select name="city">
			<?php 
			$conn=mysqli_connect("localhost","root","","db_of_restaurant") or die("failed to connect");
			$query="select * from city";
			$result=mysqli_query($conn,$query);
			while($row=mysqli_fetch_array($result)){
			?>
			<option value="<?php echo $row['id'];?>"><?php echo $row['name'];?></option>
			<?php } ?>
			</select>
</p>			
<p>
			<label for="Address">Address:</label>
			<input type="text" name="address" id="Address">
			</p>

			
<p>
			<label for="emailAddress">Email Address:</label>
			<input type="text" name="email" id="emailAddress">
			</p>

			<input type="submit" name="button1" class="button" value="Button1" />
		</form>
	</center>
</body>
</html>
