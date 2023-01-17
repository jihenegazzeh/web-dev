<?php
$page_title = " my account";
include_once 'headers.php';
?>

<!DOCTYPE html>
<html>
<body>
 <?= //template_header('myaccount')?>
	<center>
		<h1>create an account</h1>
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
			<label for="emailAddress">Email Address:</label>
			<input type="text" name="email" id="emailAddress">
			</p>

			<input type="submit" name="button1" class="button" value="sign up" />
		</form>
	</center>

</body>
</html>
