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
	<title>Контакты | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Контакты</li>
				</ol>
			</nav>
		</div>
		<div class="margin-container contacts-container">
			<div class="map-container">
				<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A550f39236529587717876579f4206a46e0361daf97ecaef82008db5de303c37e&amp;width=100%&amp;height=600&amp;lang=ru_RU&amp;scroll=true"></script>
			</div>
			<div>
				<div class="grey-background line"></div>
				<div class="block contacts-block">
					<div class="h">Адрес</div>
					<div><?php echo ADDRESS;?></div>
					<div class="h">Время работы</div>
					<div><?php echo WORKING_HOURS;?></div>
					<div class="h">Телефон</div>
					<div><a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_IRINA);?>" title="Ирина Viber"><?php echo PHONE_IRINA;?></a> - Ирина</div>
					<div><a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_KRISTINA);?>" title="Кристина Viber"><?php echo PHONE_KRISTINA;?></a> - Кристина</div>
					<div class="h">Электорнная почта</div>
					<div><a href="mailto:<?php echo EMAIL;?>"><?php echo EMAIL;?></a></div>
					<div class="h">Социальные сети</div>
					<div class="social-networks contacts-social-networks">
						<div><a href="<?php echo INSTAGRAM_LINK;?>" target="_blank"><img src="/web/img/insta.jpg"></a></div>
						<div><a href="<?php echo VK_LINK;?>" target="_blank"><img src="/web/img/vk.jpg"></a></div>
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