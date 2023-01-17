<?php
include_once 'functions.php';
include_once 'db_conn1.php';

?>

<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?php if(isset($page_title)) echo $page_title; ?></title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body>
        <header>

            <div class="content-wrapper">

                <h1>Welcome To TBS Events</h1>
                <nav>

                    <a href="index.php">Home</a>
                    <?php if((isset($_SESSION['name']) || isCookieValid($conn))): ?>
                    <a href="index.php?page=Products">Events</a>
					<a href="index.php?page=profile">My account</a>
                    <a href="logout1.php">Logout</a>
                    <?php else: ?>
                    <a href="index.php?page=Products">Events</a>
                    <a href="index1.php">Login</a>
                    <a href="signup1.php">Sign up</a>
                    <?php endif ?>
                </nav>
                <div class="link-icons">
                    <a href="index.php?page=cart">
						<i class="fa fa-star"></i>
						<span> <?php $num_items_in_cart ?> </span>
					</a>
                </div>
            </div>
        </header>
        <main>