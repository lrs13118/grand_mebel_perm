<?php
session_start();
if ($_SESSION['auth_admin'] == "yes_auth_admin")
{
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";

	$arProductsByCategories = [];
	$productsResult = mysqli_query($connection, 'SELECT * FROM products');
	while ($product = mysqli_fetch_assoc($productsResult))
	{
		$arProductsByCategories[$product['main_cat']]['products'][] = $product;
	}

	foreach ($arProductsByCategories as $key => $category)
	{
		$categoryResult = mysqli_query($connection, 'SELECT * FROM sections WHERE category_id = "' . $key . '"');
		$category = mysqli_fetch_assoc($categoryResult);

		$arProductsByCategories[$key]['category'] = $category;
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
					<li class="breadcrumb-item active" aria-current="page">Список товаров</li>
				</ol>
			</nav>
		</div>
		<div class="margin-container">
			<div class="h">Список товаров</div>
			<div>
				<table class="table table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col" class="th-align">#</th>
							<th scope="col" class="th-align">ID</th>
							<th scope="col" class="th-align">Картинка</th>
							<th scope="col" class="th-align">Название</th>
							<th scope="col" class="th-align">Показывать</th>
							<th scope="col" class="th-align">Редактировать</th>
							<th scope="col" class="th-align">Удалить</th>
						</tr>
					</thead>
					<?php foreach($arProductsByCategories as $category) {?>
					<thead class="table-secondary">
						<tr>
							<th scope="col" colspan="7"><?php echo $category['category']['title'];?></th>
						</tr>
					</thead>
					<tbody>
					<?php 
					$n = 1;
					foreach($category['products'] as $product) {?>
						<tr>
							<th scope="row" class="td-width-5"><?php echo $n;?></th>
							<td class="td-width-5"><?php echo $product['id']; ?></td>
							<td class="table-small-img td-width-10"><a href=""><img src="/web/img/products/<?php echo $product['img'];?>" alt=""></a></td>
							<td class="td-width-65 table-product-title"><a href=""><?php echo $product['title']; ?></a></td>
							<td class="td-width-5">
								<form method="post">
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" id="product-active-<?php echo $product['id'];?>" <?php if ($product['active'] == 1) {echo 'checked';} ?> onclick="editActive(<?php echo $product['id'];?>);">
									</div>
								</form>
							</td>
							<td class="td-width-5 table-product-title"><a href=""><em class="fa fa-edit"></em></a></td>
							<td class="td-width-5"><button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button></td>
						</tr>
						<?php $n++; }?>
					</tbody>
					<?php }?>
				</table>
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