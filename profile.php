<?php 
include_once 'functions.php';
$username = $_SESSION['name'];
$email = $_SESSION['email'];
$id = $_SESSION['id'] ;
$encode_id = base64_encode("encodeuserid{$id}");
//extract email adress instead of id 

$page_title = "User Authentication - Profile";
include_once 'headers.php';

//template_header("profile");

$user_pic="default profile picture/".$username.".png";
$default="default profile picture/default_image.png";
if(file_exists($user_pic)){
    $profile_picture = $user_pic;

}else{
    $profile_picture=$default;
}

?>
<center>
    
<div class="row col-lg-3" style="margin-bottom: 10px;">
    <img src="<?php if(isset($profile_picture)) echo $profile_picture; ?>" class="img img-rounded" width="200"/>
</div>

<div>
    <b>Username: </b><?php if(isset($username)) echo $username; ?> <br>
    <b>Email: </b><?php if(isset($email)) echo $email; ?>      
    <a class="" href="edit-profile.php?user_identity=<?php if(isset($encode_id)) echo $encode_id; ?>">
        <span class=""></span>Edit Profile</a> &nbsp; &nbsp;
</div>

</center>
<?=template_footer()?>