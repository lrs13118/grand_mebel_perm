<?php
session_start();
if ($_SESSION['auth_admin'] == "yes_auth_admin")
{
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";

	$arProduct = [];

	if (isset($_GET['id']) && (int)$_GET['id'] > 0)
	{
		$productResult = mysqli_query($connection, 'SELECT * FROM products WHERE id = "'.$_GET['id'].'"');
		$arProduct = mysqli_fetch_assoc($productResult);

		$arProductImages = [];
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

		$arFoldingMechanisms = [0 => ['id' => 0, 'title' => 'Не выбрано']];
		$foldingMechanismsResult = mysqli_query($connection, 'SELECT * FROM folding_mechanisms');
		while ($arfoldingMechanism = mysqli_fetch_assoc($foldingMechanismsResult))
		{
			if (str_replace(',', '', trim($arProduct['folding_mechanism'])) == $arfoldingMechanism['title'])
			{
				$arfoldingMechanism['selected'] = true;
			}
			$arFoldingMechanisms[] = $arfoldingMechanism;
		}

		$arMainCategories = [0 => ['id' => 0, 'title' => 'Не выбрано']];
		$mainCategoriesResult = mysqli_query($connection, 'SELECT * FROM sections');
		while ($mainCategory = mysqli_fetch_assoc($mainCategoriesResult))
		{
			if ($mainCategory['category_id'] != 1 && $mainCategory['category_id'] != 14)
			{
				if ($arProduct['main_cat'] == $mainCategory['category_id'])
				{
					$mainCategory['selected'] = true;
				}
				$arMainCategories[] = $mainCategory;
			}
		}

		$arCategories = [0 => ['id' => 0, 'title' => 'Не выбрано']];
		$arPodCategories = [0 => ['id' => 0, 'title' => 'Не выбрано']];
		$categoriesResult = mysqli_query($connection, 'SELECT * FROM product_categories');
		while ($category = mysqli_fetch_assoc($categoriesResult))
		{
			if ($category['id'] != 1 && $category['id'] != 8 && $category['id'] != 13)
			{

				if (($category['main_cat'] == $arProduct['main_cat']) && ($category['pod_cat'] == 0))
				{
					if ($arProduct['cat'] == $category['cat'])
					{
						$category['selected'] = true;
					}
					$arCategories[] = $category;
				}
				if (($arProduct['cat'] == $category['cat']) && ($category['prod_cat'] != 0))
				{
					if ($arProduct['pod_cat'] == $category['prod_cat'])
					{
						$category['selected'] = true;
					}
					$arPodCategories[] = $category;
				}
			}
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Список товаров | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item"><a href="/pages/admin/index.php">Админ-панель</a></li>
					<li class="breadcrumb-item"><a href="/pages/admin/view-products-list.php">Список товаров</a></li>
					<li class="breadcrumb-item active" aria-current="page">Редактировать продукт</li>
				</ol>
			</nav>
		</div>
		<div class="margin-container">
			<div class="h">Редактировать <?php echo $arProduct['title'];?></div>
			<div>
				<div id="edit-product-response"></div>
				<form method="post">
					<div class="input">
						<div class="edit-product-input-container">
							<label for="edit-product-width">Галерея: </label>
							<div>
								<div class="gallery-container">
									<?php foreach ($arProductImages as $key => $img) {?>
										<div class="gallery-item-container">
											<input type="radio" name="img" id="img-<?php echo $key;?>" <?php if ($key === 'mainImg') {echo "checked";}?> value="<?php echo $img;?>">
											<label for="img-<?php echo $key;?>"><img src="/web/img/products/<?php echo $img;?>" alt=""></label>
											<div class="img-remover">
												<form method="post">
													<button type="button" class="btn-close del-prod" aria-label="Close"></button>
												</form>
											</div>
										</div>
									<?php } ?>
									<div>
										<!--upload img-->
									</div>
								</div>
							</div>
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-active">Показывать на сайте: </label>
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" id="edit-product-active" name="edit-product-active" <?php if ($arProduct['active'] == 1) {echo 'checked';} ?>>
							</div>
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-main-cat">Тип продукта: </label>
							<select name="edit-product-main-cat" id="edit-product-main-cat" class="form-select">
								<?php foreach($arMainCategories as $arMainCategory) {?>
									<option for="edit-product-main-cat" value="<?php echo $arMainCategory['category_id'];?>" <?php if (isset($arMainCategory['selected'])) {echo 'selected';}?>><?php echo $arMainCategory['title'];?></option>
								<?php } ?>
							<select>
						</div>
						<div class="edit-product-input-container <?php if (!$arProduct['cat']) {echo "hidden";}?>">
							<label for="edit-product-cat">Вид продукта: </label>
							<select name="edit-product-cat" id="edit-product-cat" class="form-select">
								<?php foreach($arCategories as $arCategory) {?>
									<option for="edit-product-cat" value="<?php echo $arCategory['cat'];?>" <?php if (isset($arCategory['selected'])) {echo 'selected';}?>><?php echo $arCategory['title'];?></option>
								<?php } ?>
							<select>
						</div>
						<div class="edit-product-input-container <?php if (!$arProduct['pod_cat']) {echo "hidden";}?>">
							<label for="edit-product-pod-cat">Подвид продукта: </label>
							<select name="edit-product-pod-cat" id="edit-product-pod-cat" class="form-select">
								<?php foreach($arPodCategories as $arPodCategory) {?>
									<option for="edit-product-pod-cat" value="<?php echo $arPodCategory['pod_cat'];?>" <?php if (isset($arPodCategory['selected'])) {echo 'selected';}?>><?php echo $arPodCategory['title'];?></option>
								<?php } ?>
							<select>
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-title">Название: </label>
							<input type="text" name="edit-product-title" id="edit-product-title" value="<?php echo $arProduct['title'];?>">
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-price">Цена: </label>
							<input type="text" name="edit-product-price" id="edit-product-price" value="<?php echo transformPriceForDisplaying($arProduct['price']);?>">
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-maker">Производитель: </label>
							<input type="text" name="edit-product-maker" id="edit-product-maker" value="<?php echo $arProduct['maker'];?>">
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-height">Высота: </label>
							<input type="text" name="edit-product-height" id="edit-product-height" value="<?php echo $arProduct['height'];?>">
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-width">Ширина: </label>
							<input type="text" name="edit-product-width" id="edit-product-width" value="<?php echo $arProduct['width'];?>">
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-depth">Глубина: </label>
							<input type="text" name="edit-product-depth" id="edit-product-depth" value="<?php echo $arProduct['depth'];?>">
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-other-dimensions">Другие размеры: </label>
							<input type="text" name="edit-product-other-dimensions" id="edit-product-other-dimensions" value="<?php echo $arProduct['other_dimensions'];?>">
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-description">Описание: </label>
							<input type="text" name="edit-product-description" id="edit-product-description" value="<?php echo $arProduct['description'];?>">
						</div>
						<div class="edit-product-input-container">
							<label for="edit-product-additionally">Дополнительно: </label>
							<input type="text" name="edit-product-additionally" id="edit-product-additionally" value="<?php echo $arProduct['additionally'];?>">
						</div>
						<div class="<?php if ($arProduct['main_cat'] != 2) {echo "hidden";}?>">
							<div class="edit-product-input-container">
								<label for="edit-product-folding-mechanism">Раскладной механизм: </label>
								<select name="edit-product-folding-mechanism" id="edit-product-folding-mechanism" class="form-select">
									<?php foreach($arFoldingMechanisms as $arFoldingMechanism) {?>
										<option value="<?php echo $arFoldingMechanism['title'];?>" <?php if (isset($arFoldingMechanism['selected'])) {echo 'selected';}?>><?php echo $arFoldingMechanism['title'];?></option>
									<?php } ?>
								<select>
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-filling">Наполнение: </label>
								<input type="text" name="edit-product-filling" id="edit-product-filling" value="<?php echo str_replace(',', '', trim($arProduct['filling']));?>">
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-metal-frame">Металлокаркас: </label>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" id="edit-product-metal-frame" name="edit-product-metal-frame" <?php if ($arProduct['metal_frame'] == 1) {echo 'checked';} ?>>
								</div>
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-removable-case">Съемный чехол: </label>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" id="edit-product-removable-case" name="edit-product-removable-case" <?php if ($arProduct['removable_case'] == 1) {echo 'checked';} ?>>
								</div>
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-angle-universal">Угол универсальный: </label>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" id="edit-product-angle-universal" name="edit-product-angle-universal" <?php if ($arProduct['angle_universal'] == 1) {echo 'checked';} ?>>
								</div>
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-niche-under-taundry">Ниша под бельё: </label>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" id="edit-product-niche-under-taundry" name="edit-product-niche-under-taundry" <?php if ($arProduct['niche_under_taundry'] == 1) {echo 'checked';} ?>>
								</div>
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-wallpaper-protection">Защита для обоев: </label>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" id="edit-product-wallpaper-protection" name="edit-product-wallpaper-protection" <?php if ($arProduct['wallpaper_protection'] == 1) {echo 'checked';} ?>>
								</div>
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-adjustable-headrests">Регулируемые подголовники: </label>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" id="edit-product-adjustable-headrests" name="edit-product-adjustable-headrests" <?php if ($arProduct['adjustable_headrests'] == 1) {echo 'checked';} ?>>
								</div>
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-backrest-positions">Три положения спинки: </label>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" id="edit-product-backrest-positions" name="edit-product-backrest-positions" <?php if ($arProduct['backrest_positions'] == 1) {echo 'checked';} ?>>
								</div>
							</div>
						</div>
						<div <?php if (!$arProduct['tag_for_kd']) {echo "hidden";}?>>
							<div class="edit-product-input-container">
								<label for="edit-product-price0">1.6 м </label>
								<input type="text" name="edit-product-price0" id="edit-product-price0" value="<?php echo transformPriceForDisplaying($arProduct['price0']);?>">
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-price1">1.7 м </label>
								<input type="text" name="edit-product-price1" id="edit-product-price1" value="<?php echo transformPriceForDisplaying($arProduct['price1']);?>">
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-price2">1.8 м </label>
								<input type="text" name="edit-product-price2" id="edit-product-price2" value="<?php echo transformPriceForDisplaying($arProduct['price2']);?>">
							</div>
							<div class="edit-product-input-container">
								<label for="edit-product-price3">2.0 м </label>
								<input type="text" name="edit-product-price3" id="edit-product-price3" value="<?php echo transformPriceForDisplaying($arProduct['price3']);?>">
							</div>
						</div>
					</div>
					<input type="hidden" id="main-cat" value="<?php echo $arProduct['main_cat'];?>">
					<input type="hidden" id="product-id" value="<?php echo $arProduct['id'];?>">
					<div class="submit-container">
						<div class="submit-block" id="edit-product-submit-container">
							<input type="button" name="edit-product-submit" id="edit-product-submit" value="Сохранить">
						</div>
						<div class="spinner-grow loading" id="edit-product-loading-container" role="status">
							<span class="sr-only">Loading...</span>
						</div>
					</div>
				</form>
			</div>
		</div>
	</main>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/footer.php";
	?>
</body>
</html>
<?php 
} else {header("location:/pages/admin/auth.php");}
?>