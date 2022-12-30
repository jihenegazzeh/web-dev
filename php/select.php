<html>
<body>
<?php 
$conn = mysqli_connect("localhost","root","","db_of_restaurant");
?>

<form method="post" action='/jihene/hayt/index.php'>
city <select name="city">
<?php 
$query="SELECT * FROM city";
$result=mysqli_query($conn,$query);
while($row=mysqli_fetch_array($result)){
?>
<option value="<?php echo $row['id'];?>"><?php echo $row['name'];?></option>
<?php } ?>
</select>
<br><br>

type <select name="type">
<?php 
$query="SELECT * FROM type";
$result=mysqli_query($conn,$query);
while($row=mysqli_fetch_array($result)){
?>
<option value="<?php echo $row['id'];?>"><?php echo $row['name'];?></option>
<?php } ?>
</select>
<br><br>

size <select name="size">
<?php 
$query="SELECT * FROM size";
$result=mysqli_query($conn,$query);
while($row=mysqli_fetch_array($result)){
?>
<option value="<?php echo $row['id'];?>"><?php echo $row['name'];?></option>
<?php } ?>
</select>
<br><br>
<input type="submit"  value="Button1"  name="Button1"/><br><br>

</body>
</html>