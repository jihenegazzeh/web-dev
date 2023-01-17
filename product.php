<?php
// Check to make sure the id parameter is specified in the URL
if (isset($_GET['id'])) {
    // Prepare statement and execute, prevents SQL injection
    $stmt = $pdo->prepare('SELECT * FROM events WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    // Fetch the product from the database and return the result as an Array
    $product = $stmt->fetch(PDO::FETCH_ASSOC);
    // Check if the product exists (array is not empty)
    if (!$product) {
        // Simple error to display if the id for the product doesn't exists (array is empty)
        exit('Product does not exist!');
    }
} else {
    // Simple error to display if the id wasn't specified
    exit('Product does not exist!');
}
$page_title = "User Authentication - Product";
include_once 'headers.php';
?>
<?=t//emplate_header('Product')?>

<div class="product content-wrapper">
    <img src="imgs/<?=$product['img']?>" width="500" height="500" alt="<?=$product['name']?>">
    <div>
        <h1 style='text-align:center;' class="name"><?=$product['name']?></h1>
		<span class="place">
            <?=$product['place']?>
        </span><br>
        <span class="place">
            <?=$product['date']?>
        </span><br>
        <span class="place">
            Organized by <?=$product['club']?>
        </span>
		<span style='color: #555555;' class="price">
            <?=$product['price']?>
        </span>
		<div class="description">
		    <p style="font-size:25px;color:#63748e;">description:</p>
            <?=$product['desc']?>
        </div>
        <form action="index.php?page=cart" method="post">
            <input type="hidden" name="product_id" value="<?=$product['id']?>">
            <input type="submit" value="going" name="going">
        </form>

    </div>
</div>

<?=template_footer()?>