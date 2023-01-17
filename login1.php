<?php 
session_start(); 
include "db_conn1.php";
include_once 'functions.php';

if (isset($_POST['uname']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['uname']);
	$pass = validate($_POST['password']);

	if (empty($uname)) {
		header("Location: index1.php?error=User Name is required");
	    exit();
	}else if(empty($pass)){
        header("Location: index1.php?error=Password is required");
	    exit();
	}else{
		// hashing the password
        $pass = md5($pass);

        
		$sql = "SELECT * FROM users WHERE user_name='$uname' AND password='$pass'";

		$result = mysqli_query($conn, $sql);
		$arr=[];
		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['user_name'] === $uname && $row['password'] === $pass) {
            	$_SESSION['user_name'] = $row['user_name'];
            	$_SESSION['name'] = $row['name'];
            	$_SESSION['id'] = $row['id'];
            	header("Location: home1.php");
		        exit();
            }else{
				header("Location: index1.php?error=Incorect User name or password");
		        exit();
			}
		}else{
			header("Location: index1.php?error=Incorect User name or password");
	        exit();
		}
		$arr.push();
	}
	
	
}else{
	header("Location: index1.php");
	exit();
}






//collect form data
$user = $_POST['name'];
$password = $_POST['password'];

isset($_POST['remember']) ? $remember = $_POST['remember'] : $remember = "";

//check if user exist in the database
$sqlQuery = "SELECT * FROM users WHERE username = :username";
$statement = $conn->prepare($sqlQuery);
$statement->execute(array(':username' => $user));

if($row = $statement->fetch()){
	$id = $row['id'];
	$hashed_password = $row['password'];
	$username = $row['name'];

	if(password_verify($password, $hashed_password)){
		$_SESSION['id']= $id;
		$_SESSION['name']=$username;

		if($remember == "yes"){
			rememberMe($id);
		}
	}else{
		$result = flashMessage("You have entered an invalid password");
	}

}else{
	$result = flashMessage("You have entered an invalid username");
}

