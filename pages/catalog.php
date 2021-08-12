<?php
	session_start();
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";

	$sectionType = '';
	$page = 1;
	$selectedsorting = 'pricetolow';
	$sorting = 'ORDER BY price DESC';
	$subSection = [];
	$isSubSection = false;
	$isSubNavitem = false;
	$title = '';
	$arSubNavItems = [];
	$arSubNavItem = '';
	$arProducts = [];
	$itemsPerPage = 20;

	if ($_GET)
	{
		if (isset($_GET['type']))
		{
			$sectionType = $_GET['type'];
		}
		if (isset($_GET['page']))
		{
			$page = $_GET['page'];
		}
		if (isset($_GET['sorting']))
		{
			switch ($_GET['sorting']) {
				case 'pricetolow':
					$sorting = 'ORDER BY price DESC';
					break;
				case 'pricetohigh':
					$sorting = 'ORDER BY price ASC';
					$selectedsorting = 'pricetohigh';
					break;
				default:
					$sorting = $sorting;
					break;
			}
		}
	}
	if ($sectionType)
		{
			$sectionResult = mysqli_query($connection, 'SELECT * FROM sections WHERE section_type = "'.$sectionType.'"');
			$section = mysqli_fetch_assoc($sectionResult);

			if (!$section)
			{
				$subSectionResult = mysqli_query($connection, 'SELECT * FROM product_categories WHERE anchor = "'.$sectionType.'"');
				$subSection = mysqli_fetch_assoc($subSectionResult);

				if ($subSection['main_cat'])
				{
					$isSubSection = true;

					$sectionResult = mysqli_query($connection, 'SELECT * FROM sections WHERE category_id = "'.$subSection["main_cat"].'"');
					$section = mysqli_fetch_assoc($sectionResult);

					$subSectionPositionsResult = mysqli_query($connection, 'SELECT * FROM product_categories WHERE cat = "'.$subSection['cat'].'"');
					while ($subSectionPosition = mysqli_fetch_assoc($subSectionPositionsResult))
					{
						if ($subSectionPosition['id'] != $subSection['id'])
						{
							$arSubNavItems[] = $subSectionPosition;
						}
					}
				} else {
					$isSubSection = true;
					$isSubNavitem = true;

					$arSubNavItem = $subSection;

					$subSectionsResult = mysqli_query($connection, 'SELECT * FROM product_categories WHERE cat = "'.$subSection['cat'].'"');
					while ($subSectionResult = mysqli_fetch_assoc($subSectionsResult))
					{
						if ($subSectionResult['main_cat'])
						{
							$subSection = $subSectionResult;
							break;
						}
					}

					if ($subSection)
					{
						$sectionResult = mysqli_query($connection, 'SELECT * FROM sections WHERE category_id = "'.$subSection["main_cat"].'"');
						$section = mysqli_fetch_assoc($sectionResult);

						$arSubNavItems = [];
						$subSectionPositionsResult = mysqli_query($connection, 'SELECT * FROM product_categories WHERE cat = "'.$subSection['cat'].'"');
						while ($subSectionPosition = mysqli_fetch_assoc($subSectionPositionsResult))
						{
							if ($subSectionPosition['id'] != $subSection['id'])
							{
								$arSubNavItems[] = $subSectionPosition;
							}
						}
					}
				}
			} else {
				$title = $section['title'];
			}

			$arNavItems = [];
			if ($section)
			{
				$sectionsResult = mysqli_query($connection, 'SELECT * FROM product_categories WHERE main_cat = "'.$section["category_id"].'"');
				while ($sectionNavItem = mysqli_fetch_assoc($sectionsResult))
				{
					$arNavItems[] = $sectionNavItem;
				}
			}

			if ($arNavItems)
			{
				if (!$title)
				{
					foreach ($arNavItems as $arNavItem)
					{
						if ($arNavItem['anchor'] == $sectionType)
						{
							$title = $arNavItem['title'];
							break;
						}
					}
				}
			}

			if ($arSubNavItem)
			{
				$title = $arSubNavItem['title'];
			}

			//PRODUCTS
			if ($arSubNavItem)
			{
				$productsResult = mysqli_query($connection, 'SELECT * FROM products WHERE pod_cat = "'.$arSubNavItem["prod_cat"].'" '.$sorting);
				while ($product = mysqli_fetch_assoc($productsResult))
				{
					$arProducts[] = $product;
				}
			}
			if ($subSection && !$arSubNavItem)
			{
				$productsResult = mysqli_query($connection, 'SELECT * FROM products WHERE cat = "'.$subSection["cat"].'" '.$sorting);
				while ($product = mysqli_fetch_assoc($productsResult))
				{
					$arProducts[] = $product;
				}
			}
			if ($section && !$subSection && !$arSubNavItem)
			{
				$productsResult = mysqli_query($connection, 'SELECT * FROM products WHERE main_cat = "'.$section["category_id"].'" '.$sorting);
				while ($product = mysqli_fetch_assoc($productsResult))
				{
					$arProducts[] = $product;
				}
			}
			if ($sectionType == "sale")
			{
				$productsResult = mysqli_query($connection, 'SELECT * FROM products WHERE sale_price > 0 '.$sorting);
				while ($product = mysqli_fetch_assoc($productsResult))
				{
					$arProducts[] = $product;
				}
			}

			//PAGINATION
			$pagesCount = ceil(count($arProducts)/$itemsPerPage);
			$arAllProducts = $arProducts;
			$arProducts = [];
			$productsCount = count($arAllProducts);
			$start = 0;
			$end = 0;

			if ($page < $pagesCount)
			{
				if ($page > 1)
				{
					$start = ($itemsPerPage*$page)-$itemsPerPage;
					$end = $itemsPerPage*$page;
				}
				if ($page == 1)
				{
					$end = $itemsPerPage;
				}
			}
			if ($page == $pagesCount)
			{
				if ($page > 1)
				{
					$start = $productsCount-($productsCount%$itemsPerPage);
				}
				if ($page >= 1)
				{
					$end = $productsCount;
				}
			}

			for ($i=$start;$i<$end;$i++)
			{
				$arProducts[] = $arAllProducts[$i];
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
					<?php if ($isSubSection)
					{ 
						if ($isSubNavitem)
						{ ?>
							<li class="breadcrumb-item"><a href="/pages/catalog.php?type=<?php echo $section['section_type'];?>"><?php echo $section['title'];?></a></li>
							<li class="breadcrumb-item"><a href="/pages/catalog.php?type=<?php echo $subSection['anchor'];?>"><?php echo $subSection['title'];?></a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo $title;?></li>
						<?php } else { ?>
							<li class="breadcrumb-item"><a href="/pages/catalog.php?type=<?php echo $section['section_type'];?>"><?php echo $section['title'];?></a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo $title;?></li>
						<?php }
					} else { ?>
						<li class="breadcrumb-item active" aria-current="page"><?php echo $title;?></li>
					<?php } ?>
				</ol>
			</nav>
		</div>
		<?php
		if ($sectionType == 'wardrobe' || $sectionType == 'sale' || $sectionType == 'other')
		{ 
			if ($sectionType == 'wardrobe')
			{
				require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/wardrobes.php";
			} else { ?>
			<div>
				
			</div>
			<div class="margin-container">
				<div class="parameters-container">
					<div class="sorting-container">
						<?php if ($productsCount > 0) { ?>
						<div <?php if ($selectedsorting == 'pricetolow') {echo 'class="blackcolor"';}?>><a href="/pages/catalog.php?type=<?php echo $sectionType; ?>&sorting=pricetolow#catalog">Цена (по убыванию)</a></div>
						<div <?php if ($selectedsorting == 'pricetohigh') {echo 'class="blackcolor"';}?>><a href="/pages/catalog.php?type=<?php echo $sectionType; ?>&sorting=pricetohigh#catalog">Цена (по возрастанию)</a></div>
						<?php } ?>
					</div>
					<div class="pagination-container">
						<div class="products-count">
							<?php if ($pagesCount != 1 && $productsCount != 0) {echo ($start+1). '-'. $end .' из ' .$productsCount;}
							if ($pagesCount == 1) {echo $productsCount .' из ' .$productsCount;}
							?>
						</div>
						<div>
							<nav aria-label="Page navigation example">
								<ul class="pagination pagination-sm">
									<?php if ($page != 1) {?>
									<li class="page-item">
										<a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo ($page-1);?>&sorting=<?php echo $selectedsorting;?>#catalog" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										</a>
									</li>
									<?php } ?>
									<?php if ($pagesCount != 1) {
									for ($i=1;$i<=$pagesCount;$i++) {?>
									<li class="page-item <?php if ($page == $i) {echo 'blackcolor';}?>"><a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo $i;?>&sorting=<?php echo $selectedsorting;?>#catalog"><?php echo $i;?></a></li>
									<?php } }?>
									<?php if ($pagesCount != $page && $pagesCount != 0) { ?>
									<li class="page-item">
										<a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo ($page+1);?>&sorting=<?php echo $selectedsorting;?>#catalog" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										</a>
									</li>
									<?php } ?>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<?php if ($arProducts)
				{?>
				<div class="catalog-blocks-container-withoutmenu">
					<?php foreach($arProducts as $arProduct)
					{?>
						<div class="catalog-block">
							<div class="grey-background line"></div>
							<div class="product-block">
								<a href="/pages/product.php?id=<?php echo $arProduct['id']?>">
									<div><img src="/web/img/products/<?php if ($arProduct['img']) {echo $arProduct['img'];} else {echo 'no-foto.jpg';}?>"></div>
									<div class="prod-block-desc">
										<div><?php echo $arProduct['title'];?></div>
										<div>
											<?php 
												if ($arProduct['price'] == 0)
												{
													echo '<span>Цену уточняйте</span>';
												} else {
													echo 'от <span>' . transformPriceForDisplaying($arProduct['price']) . '</span> руб.';
												}
											?>
										</div>
									</div>
								</a>
							</div>
						</div>
					<?php } ?>
				</div>
				<?php } else { ?>
				<div class="empty-catalog">
					<img src="/web/img/products/no-foto.jpg">
				</div>
				<?php }?>
			</div>
		<?php }
		} else { ?>
		<div id="catalog" class="catalog-container margin-container">
			<div class="catalog-nav-container">
				<ul>
					<?php
					foreach ($arNavItems as $arNavItem)
					{ ?>
						<li <?php if ($arNavItem['anchor'] == $sectionType || $isSubNavitem && $arNavItem['cat'] == $subSection['cat']) { ?> class="active-nav-item" <?php } ?>>
							<a href="/pages/catalog.php?type=<?php echo $arNavItem['anchor'];?>">
								<div class="nav-item-block">
									<div><?php echo $arNavItem['title'];?></div>
									<div><span class="arrow">></span></div>
								</div>
							</a>
						</li>
					<?php } ?>
				</ul>
			</div>
			<div class="main-catalog-block">
				<div class="parameters-container">
					<div class="sorting-container">
						<?php if ($productsCount > 0) { ?>
						<div <?php if ($selectedsorting == 'pricetolow') {echo 'class="blackcolor"';}?>><a href="/pages/catalog.php?type=<?php echo $sectionType; ?>&sorting=pricetolow#catalog">Цена (по убыванию)</a></div>
						<div <?php if ($selectedsorting == 'pricetohigh') {echo 'class="blackcolor"';}?>><a href="/pages/catalog.php?type=<?php echo $sectionType; ?>&sorting=pricetohigh#catalog">Цена (по возрастанию)</a></div>
						<?php } ?>
					</div>
					<div class="pagination-container">
						<div class="products-count">
							<?php if ($pagesCount != 1 && $productsCount != 0) {echo ($start+1). '-'. $end .' из ' .$productsCount;}
							if ($pagesCount == 1) {echo $productsCount .' из ' .$productsCount;}
							?>
						</div>
						<div>
							<nav aria-label="Page navigation example">
								<ul class="pagination pagination-sm">
									<?php if ($page != 1) {?>
									<li class="page-item">
										<a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo ($page-1);?>&sorting=<?php echo $selectedsorting;?>#catalog" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										</a>
									</li>
									<?php } ?>
									<?php if ($pagesCount != 1) {
									for ($i=1;$i<=$pagesCount;$i++) {?>
									<li class="page-item <?php if ($page == $i) {echo 'blackcolor';}?>"><a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo $i;?>&sorting=<?php echo $selectedsorting;?>#catalog"><?php echo $i;?></a></li>
									<?php } }?>
									<?php if ($pagesCount != $page && $pagesCount != 0) { ?>
									<li class="page-item">
										<a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo ($page+1);?>&sorting=<?php echo $selectedsorting;?>#catalog" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										</a>
									</li>
									<?php } ?>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<?php if($arSubNavItems)
				{ ?>
				<div class="sub-nav-items">
					<ul>
						<?php 
						foreach ($arSubNavItems as $arSubNavItem)
						{ ?>
							<li <?php if ($arSubNavItem['anchor'] == $sectionType) {?> class="blackcolor" <?php }?>>
								<a href="/pages/catalog.php?type=<?php echo $arSubNavItem['anchor'];?>">
									<?php echo $arSubNavItem['title'];?>
								</a>
							</li>
						<?php } ?>
					</ul>
				</div>
				<?php }
				if ($arProducts)
				{?>
				<div class="catalog-blocks-container">
					<?php foreach($arProducts as $arProduct)
					{?>
						<div class="catalog-block">
							<div class="grey-background line"></div>
							<div class="product-block">
								<a href="/pages/product.php?id=<?php echo $arProduct['id']?>">
									<div><img src="/web/img/products/<?php if ($arProduct['img']) {echo $arProduct['img'];} else {echo 'no-foto.jpg';}?>"></div>
									<div class="prod-block-desc">
										<div><?php echo $arProduct['title'];?></div>
										<div>
											<?php 
												if ($arProduct['price'] == 0)
												{
													echo '<span>Цену уточняйте</span>';
												} else {
													echo 'от <span>' . transformPriceForDisplaying($arProduct['price']) . '</span> руб.';
												}
											?>
										</div>
									</div>
								</a>
							</div>
						</div>
					<?php } ?>
				</div>
				<?php } else { ?>
				<div class="empty-catalog">
					<img src="/web/img/products/no-foto.jpg">
				</div>
				<?php }
				if ($productsCount > 8)
				{ ?>
				<div class="parameters-container">
					<div></div>
					<div class="pagination-container">
						<div class="products-count">
							<?php if ($pagesCount != 1 && $productsCount != 0) {echo ($start+1). '-'. $end .' из ' .$productsCount;}
							if ($pagesCount == 1) {echo $productsCount .' из ' .$productsCount;}
							?>
						</div>
						<div>
							<nav aria-label="Page navigation example">
								<ul class="pagination pagination-sm">
									<?php if ($page != 1) {?>
									<li class="page-item">
										<a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo ($page-1);?>&sorting=<?php echo $selectedsorting;?>#catalog" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										</a>
									</li>
									<?php } ?>
									<?php if ($pagesCount != 1) {
									for ($i=1;$i<=$pagesCount;$i++) {?>
									<li class="page-item <?php if ($page == $i) {echo 'blackcolor';}?>"><a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo $i;?>&sorting=<?php echo $selectedsorting;?>#catalog"><?php echo $i;?></a></li>
									<?php } }?>
									<?php if ($pagesCount != $page && $pagesCount != 0) { ?>
									<li class="page-item">
										<a class="page-link" href="/pages/catalog.php?type=<?php echo $sectionType; ?>&page=<?php echo ($page+1);?>&sorting=<?php echo $selectedsorting;?>#catalog" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										</a>
									</li>
									<?php } ?>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
		<?php } ?>
	</main>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/footer.php";
	?>
</body>
</html>