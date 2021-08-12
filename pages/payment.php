<?php
	session_start();
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Оплата и доставка | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Оплата и доставка</li>
				</ol>
			</nav>
		</div>
		<div class="margin-container">
			<div class="payment-container">
				<div>
					<div class="h">Оплата</div>
					<div class="grey-background line"></div>
					<div class="block payment-block">
						<div>Оплата наличными по адресу:</div>
						<div><a href="/pages/contacts.php">г. Пермь, ул. Свиязева 39 (2 этаж)</a></div>
					</div>
				</div>
				<div>
					<div class="h">Оптовым покупателям</div>
					<div class="grey-background line"></div>
					<div class="block payment-block">
						<div>Для получения подробной информации и прайса для оптовых покупателей обращайтесь на почту:</div>
						<div><a href="mailto:<?php echo EMAIL;?>">grandmebelperm@mail.ru</a></div>
					</div>
				</div>
				<div>
					<div class="h">Сборка мебели</div>
					<div class="grey-background line"></div>
					<div class="block payment-block">
						<div>Сборка <a href="/pages/catalog.php?type=wardrobe">шкафов-купе</a> 10% от стоимости.</div>
						<div>Сборка <a href="/pages/catalog.php?type=kitchensets">кухонных гарнитуров</a> и другой <a href="/pages/catalog.php?type=cabinetfurniture">корпусной мебели</a> 15% от стоимости.</div>
						<div>Сборка <a href="/pages/custommadefurniture.php">кухонь по индивидуальным заказам</a> - сборка 10%.</div>
					</div>
				</div>
			</div>
			<div class="delivery-container">
				<div>
					<div class="h">Доставка мебели</div>
					<div class="grey-background line"></div>
					<div class="block delivery-block">
						<div><img src="/web/img/delivery.jpg"></div>
					</div>
				</div>
				<div>
					<div class="h">Подъем мебели</div>
					<div class="grey-background line"></div>
					<div class="block delivery-block">
						<div><img src="/web/img/lifting.jpg"></div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/footer.php";
	?>
</body>
</html>