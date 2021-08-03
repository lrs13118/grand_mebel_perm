<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";

if (isset($_GET['id']))
{
	$productResult = mysqli_query($connection, 'SELECT * FROM products WHERE id = "'.$_GET['id'].'"');
	$arProduct = mysqli_fetch_assoc($productResult);

	//echo '<pre>';
	//print_r($arProduct);
	//echo '</pre>';

	$title = $arProduct['title'];

	$arProductImages['mainImg'] = 'no-foto.jpg';
	if ($arProduct['img'])
	{
		$arProductImages['mainImg'] = $arProduct['img'];
	}
	if ($arProduct['img1'])
	{
		$arImages = explode(',', $arProduct['img1']);
		foreach($arImages as $image)
		{
			$arProductImages[] = trim($image);
		}
	}
	$dimensions = '';
	if ($arProduct['height'] != null) $dimensions .= $arProduct['height'];
	if ($arProduct['width'] != null) $dimensions .= $arProduct['width'];
	if ($arProduct['depth'] != null) $dimensions .= $arProduct['depth'];

	$productDescription = '';
	if ($arProduct['folding_mechanism'] != null) {$productDescription .= 'Раскладной механизм ' . $arProduct['folding_mechanism'] . ' '; }
	if ($arProduct['filling'] != null) {$productDescription .= $arProduct['filling'] . ' '; }
	if ($arProduct['metal_frame'] != 0) {$productDescription .= 'металлокаркас, '; }
	if ($arProduct['removable_case'] != 0) {$productDescription .= 'съемный чехол, '; }
	if ($arProduct['angle_universal'] != 0) {$productDescription .= 'угол универсальный, '; }
	if ($arProduct['niche_under_taundry'] != 0) {$productDescription .= 'ниша под белье, '; }
	if ($arProduct['wallpaper_protection'] != 0) {$productDescription .= 'защита для обоев, '; }
	if ($arProduct['adjustable_headrests'] != 0) {$productDescription .= 'регулируемые подголовники, '; }
	if ($arProduct['backrest_positions'] != 0) {$productDescription .= 'три положения спинки, '; }
	if ($arProduct['additionally'] != null) {$productDescription .= $arProduct['additionally']; }
	if (substr(trim($productDescription), -1) == ',')
	{
		$productDescription = mb_substr(trim($productDescription), 0, -1);
	}

	$section = [];
	$subSection = [];
	$subNavItem = [];

	if ($arProduct["main_cat"])
	{
		$sectionResult = mysqli_query($connection, 'SELECT * FROM sections WHERE category_id = "' . $arProduct["main_cat"] . '"');
		$section = mysqli_fetch_assoc($sectionResult);
	}
	if ($arProduct["cat"])
	{
		$subSectionResult = mysqli_query($connection, 'SELECT * FROM product_categories WHERE cat = "' . $arProduct["cat"] . '"');
		$subSection = mysqli_fetch_assoc($subSectionResult);
	}
	if ($arProduct["pod_cat"])
	{
		$subNavItemResult = mysqli_query($connection, 'SELECT * FROM product_categories WHERE prod_cat = "' . $arProduct["pod_cat"] . '"');
		$subNavItem = mysqli_fetch_assoc($subNavItemResult);
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title><?php echo $title;?> | <?php echo TITLE;?></title>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/links.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/scripts.php";
	?>
</head>
<body>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/header.php";
	?>
	<main>
		<div class="margin-container">
			<nav aria-label="breadcrumb" class="breadcrumbs-container">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/">Главная</a></li>
					<?php if ($section) {?>
					<li class="breadcrumb-item"><a href="/pages/catalog.php?type=<?php echo $section['section_type'];?>"><?php echo $section['title'];?></a></li>
					<?php } if ($subSection) {?>
					<li class="breadcrumb-item"><a href="/pages/catalog.php?type=<?php echo $subSection['anchor'];?>"><?php echo $subSection['title'];?></a></li>
					<?php } if ($subNavItem) { ?>
					<li class="breadcrumb-item"><a href="/pages/catalog.php?type=<?php echo $subNavItem['anchor'];?>"><?php echo $subNavItem['title'];?></a></li>
					<?php } ?>
					<li class="breadcrumb-item active" aria-current="page"><a href=""><?php echo $arProduct['title'];?></a></li>
				</ol>
			</nav>
		</div>
		<style>
			.product-container {display: grid; grid-template-columns: 50% 50%;}
			.product-img-container {display: grid; grid-template-columns: 15% 85%;}
			.product-img-container div {margin: 5px;}
			.product-img-container img {width: 100%;}
			.crop-img-container img {cursor: pointer;}
			.product-desc-container {padding-left: 20px;}
			.product-price {font-size: 20pt; margin-bottom: 10px;}
			.product-price span {font-size: 25pt; color: red; font-weight: bold;}
			.product-desc {font-size: 14pt;}
			.product-desc-preview {margin-bottom: 10px;}
			.product-desc-description {margin-bottom: 10px;}
			.kitchen-prices {font-size: 14pt; margin-top: 10px;}
			.kitchen-prices div {margin-bottom: 5px;}
		</style>
		<div class="margin-container">
			<div>
				<div class="h"><?php echo $title;?></div>
			</div>
		</div>
		<div>
			<div class="product-container">
				<div class="product-img-container">
					<div class="crop-img-container">
						<?php foreach ($arProductImages as $image)
						{ ?>
						<div><img class="crop-img" src="/web/img/products/<?php echo $image;?>" alt=""></div>
						<?php }?>
					</div>
					<div>
						<div><img id="mainImg" src="/web/img/products/<?php echo $arProductImages['mainImg'];?>" alt=""></div>
					</div>
				</div>
				<div class="product-desc-container">
					<div class="product-price">
						<?php if ($arProduct['price'] == 0)
						{
							echo '<span>Цену уточняйте</span>';
						} else {
							echo 'от <span>' . transformPriceForDisplaying($arProduct['price']) . '</span> руб.';
						} ?>
					</div>
					<div class="product-desc">
						<?php
						if($arProduct['description']) {?>
							<div class="product-desc-preview"><?php echo $arProduct['description'];?></div><?php }
						if($productDescription) {?>
							<div class="product-desc-description"><strong>Описание:</strong><br><?php echo $productDescription;?></div><?php }
						if($arProduct['maker']) {?>
							<div>Производитель: <?php echo $arProduct['maker'];?></div><?php }
						if($dimensions) {?>
							<div>Общие размеры: <?php echo $dimensions; ?></div><?php }
						if ($arProduct['other_dimensions'] != null) {?>
							<div><?php echo $arProduct['other_dimensions']; ?></div><?php } ?>
					</div>
					<?php if($arProduct['tag_for_kd']) { ?>
					<div class="kitchen-prices">
						<?php
							if ($arProduct['price0']) { ?>
								<div><b>1,6</b> м - <b><?php echo transformPriceForDisplaying($arProduct['price0']); ?></b> руб.</div>
							<?php }
							if ($arProduct['price1']) { ?>
								<div><b>1,7</b> м - <b><?php echo transformPriceForDisplaying($arProduct['price1']); ?></b> руб.</div>
							<?php }
							if ($arProduct['price2']) { ?>
								<div><b>1,8</b> м - <b><?php echo transformPriceForDisplaying($arProduct['price2']); ?></b> руб.</div>
							<?php }
							if ($arProduct['price3']) { ?>
								<div><b>2,0</b> м - <b><?php echo transformPriceForDisplaying($arProduct['price3']); ?></b> руб.</div>
							<?php }
						?>
					</div>
					<?php } ?>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(".crop-img").click(function() {
				$("#mainImg").attr('src', $(this).attr('src'));
			});
		</script>
	</main>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/footer.php";
	?>
</body>
</html>