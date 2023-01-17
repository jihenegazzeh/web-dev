<?php
$page_title = "Homepage";
include_once 'headers.php';
// Get the 3 most recently added products
$stmt = $pdo->prepare('SELECT * FROM events ORDER BY date DESC LIMIT 3');
$stmt->execute();
$recently_added_products = $stmt->fetchAll(PDO::FETCH_ASSOC);

//<?=template_header('Home')
?> 



<div class="featured">
    <h2 >TBS Events</h2>
    <p>let's make our social life more dynamic</p>
</div>
<div class="recentlyadded content-wrapper">
    <h2>Recent Events</h2>
    <div class="products">
        <?php foreach ($recently_added_products as $product): ?>
        <a href="index.php?page=product&id=<?=$product['id']?>" class="product">
            <img src="imgs/<?=$product['img']?>" width="200" height="200" alt="<?=$product['name']?>">
            <span class="name"><?=$product['name']?></span>
            <span class="place">
                <?=$product['place']?>
            </span>
        </a>
        <?php endforeach; ?>
    </div>
</div>

<?=template_footer()?>