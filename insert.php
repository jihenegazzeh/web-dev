<!DOCTYPE html>
<html>

<head>
	<title>Insert Page page</title>
</head>

<body>
	<center>
		<?php
    if(array_key_exists('button1', $_POST)) {
	button1();}
		
		function button1() {
		$f_name = $_REQUEST['f_name'];
		$l_name = $_REQUEST['l_name'];
		$phone_number = $_REQUEST['phone_number'];
		$address = $_REQUEST['address'];
		$email = $_REQUEST['email'];
		$city = $_POST['city'];

		$conn= mysqli_connect("localhost","root","","db_of_restaurant") or die("failed to connect");
		
		$q1="SELECT * FROM city WHERE id=$city";
		$r1 = mysqli_query($conn, $q1);
		$line1=mysqli_fetch_array($r1);
		$hi=$line1['name'];
		
		$sql = "INSERT INTO customer VALUES ('$f_name',
			'$l_name','$hi','$address','$phone_number','$email')";

		if(mysqli_query($conn, $sql)){
			echo "<h3>data stored in a database successfully.";
		}
		else{
			echo "ERROR. ";
		}
		
		mysqli_close($conn);}
		?>
	</center>
</body>

</html>
