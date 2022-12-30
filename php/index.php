<?php 
session_start();
$conn = mysqli_connect("localhost","root","","db_of_restaurant");
if (isset($_POST['add_to_cart'])){
	if(isset($_SESSION['cart1'])){
		$session_array_id = array_column($_SESSION['cart1'],"id");
		if(!in_array($_GET['id'],$session_array_id)){
			$session_array = array(
			'id' => $_GET['id'],
			'size' => $_GET['si'],
			'name' => $_POST['name'],
			'price' => $_POST['price'],
			'quantity' => $_POST['quantity']);
			$_SESSION['cart1'][] = $session_array;
			}
		}
	else{
	$session_array = array(
	'id' => $_GET['id'],
	'name' => $_POST['name'],
	'price' => $_POST['price'],
	'quantity' => $_POST['quantity']);
	$_SESSION['cart1'][] = $session_array;
	}
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Website</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>  
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="text-center">shopping cart</h2>
					<div class="col-md-12">
						<div class="row">
											
					<?php 
					$q1="SELECT * FROM menu";
					$r1= mysqli_query($conn,$q1);
					while($row=mysqli_fetch_array($r1)){ ?>
					<div class="col-md-4">
					<form method='post' action="index.php?id=<?=$row['id'] ;?>">
						<img src="<?= $row['image'] ?>" style='height:150px;width:150px;'>
						<h5 class="text-center"><?= $row['name']; ?></h5>
						<h5 class="text-center"><?= number_format($row['price']); ?></h5>
						<h6 class="text-center"><?= $row['r_name']; ?></h6>
						<h6 class="text-center"><?= $row['location']; ?></h6>
						<input type="hidden" name="name" value="<?= $row['name'] ?>">
						<input type="hidden" name="price" value="<?= $row['price'] ?>">
						<input type="number" name="quantity" value="1" class="form-control">
						<input type="submit" name="add_to_cart" class="btn btn-warning btn-block my-2" value="add to cart">
					</form>
					</div>
					<?php } ?>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<h2 class="text-center">item selected</h2>
					<?php 
					$total =0;
					$output = "";
					$output.="
					<table class='table table-bordered table-striped'>
					<tr>
					<th>ID</th>
					<th>Item Name</th>
					<th>Item Price</th>
					<th>Item Quantity</th>
					<th>Total Price</th>
					<th>Action</th>
					</tr>
					";
					if(!empty($_SESSION['cart1'])){
						foreach($_SESSION['cart1'] as $key => $value){
							$output.="
							<tr>
							<td>".$value['id']."</td>
							<td>".$value['name']."</td>
							<td>".$value['price']."</td>
							<td>".$value['quantity']."</td>
							<td>$".number_format($value['price'] * $value['quantity'])."</td>
							<td>
								<a href='index.php?action=remove&id=".$value['id']."'>
								<button class='btn btn-danger btn-block'>Remove</button>
								</a>
							</td>
							";
							$total=$total+$value['quantity']*$value['price'];
						}
						$output.="
						<tr>
						<td colspan='3'></td>
						<td></b>Total Price</b></td>
						<td>".number_format($total)."</td>
						<td>
							<a href='index.php?action=clearall'>
							<button class='btn btn-warning btn-block'>Clear</button>
							</a>
						</td>
						</tr>
						";
					}
				echo $output;
					
					?>
				</div>
            </div>
        </div>
    </div>
	<?php 
	if(isset($_GET['action'])){
		if($_GET['action']=="clearall"){
			unset($_SESSION['cart1']);
		}
		if($_GET['action']=="remove"){
			foreach($_SESSION['cart1'] as $key => $value){
				if($value['id'] == $_GET['id']){
					unset($_SESSION['cart1'][$key]);
				}
			}
		}
	}
					
	?>
</body>
</html>