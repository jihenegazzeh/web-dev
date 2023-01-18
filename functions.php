<?php
include_once 'functions.php';
include_once 'db_conn1.php';



function pdo_connect_mysql() {
    // Update the details below with your MySQL details
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'event';
    try {
    	return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {
    	// If there is an error with the connection, stop the script and display the error.
    	exit('Failed to connect to database!');
    }
}
// Template header, feel free to customize this
function template_header($title) {
// Get the amount of items in the shopping cart, this will be displayed in the header.
$num_items_in_cart = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
echo <<<EOT
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>$title</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body>
        <header>
            <div class="content-wrapper">
                <h1>Welcome To TBS Events</h1>
                <nav>
                    <a href="index.php">Home</a>
                    
                    <a href="index.php?page=Products">Events</a>
					<a href="index.php?page=index1">My account</a>
					<a href="index.php?page=profile">Profile</a>
                </nav>
                <div class="link-icons">
                    <a href="index.php?page=cart">
						<i class="fa fa-star"></i>
						<span>$num_items_in_cart</span>
					</a>
                </div>
            </div>
        </header>
        <main>
EOT;
}

// Template footer
function template_footer() {
$year = date('Y');
echo <<<EOT
        </main>
        <footer>
            <div class="content-wrapper">
                <p>&copy; $year, Welcome To TBS Events</p>
            </div>
        </footer>
    </body>
</html>
EOT;
}

/**
 * @param $user_id
 */
function rememberMe($user_id){
    $encryptCookieData = base64_encode("UaQteh5i4y3dntstemYODEC{$user_id}");
    // Cookie set to expire in about 30 days
    setcookie("rememberUserCookie", $encryptCookieData, time()+60*60*24*100, "/");
}

/**
 * checked if the cookie used is same with the encrypted cookie
 * @param $conn, database connection link
 * @return bool, true if the user cookie is valid
 */
function isCookieValid($conn){
    $isValid = false;
    if (isset($_COOKIE['rememberUserCookie'])) {

        /**
         * Decode cookies and extract user ID
         */
        $decryptCookieData = base64_decode($_COOKIE['rememberUserCookie']);
        $user_id = explode("UaQteh5i4y3dntstemYODEC", $decryptCookieData);
        $userID = $user_id[1];

        /**
         * check if id retrieved from the cookie exist in the database
         * */
        $sqlQuery = "SELECT * FROM users WHERE id = :id";
        $statement = $conn->prepare($sqlQuery);
        $statement->execute(array(':id' => $userID));

        if($row = $statement->fetch()){
            $id = $row['id'];
            $email = $row['email'];
            $username = $row['name'];
            

            /**
             * Create the user session variable
             */
            $_SESSION['id'] = $id;
            $_SESSION['email'] = $email;
            $_SESSION['username'] = $username;
            $isValid = true;
        }else{
            /**
             * cookie ID is invalid destroy session and logout user
             */
            $isValid = false;
            signout();
        }
    }
    return $isValid;
}

/**
 * kill all sessions, cookies and regenrate session ID
 * Redirect to index page after all
 */
function signout(){
    unset($_SESSION['name']);
    unset($_SESSION['id']);

   if(isset($_COOKIE['rememberUserCookie'])){
        unset($_COOKIE['rememberUserCookie']);
        setcookie('rememberUserCookie', null, -1, '/');
    }
    session_destroy();
    session_regenerate_id(true);
    redirectTo('index');
}

/**
 *
 * @return bool, true if all good
 */
?>