<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Мебель под заказ | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Мебель под заказ</li>
				</ol>
			</nav>
		</div>
		<div id="custommadefurniture">
			<div class="margin-container custommadefurniture-block-container">
				<div>
					<div class="h">Мягкая мебель по индивидуальным заказам</div>
				</div>
				<div>Наш салон является крупным поставщиком мягкой мебели пермских производителей. Мы предлагаем услуги по изготовлению мягкой мебели на заказ: диваны, кресла, наборы.
					Изготовление мебели проводится с учетом размеров, пожеланий заказчика.
				</div>
				<div class="custommadefurniture-title">Что вы получите работая с нами ?</div>
				<div>
					<div class="ul-title">Заказав мягкую мебель у нас, Вы получите:</div>
					<ul>
						<li>индивидуальные габариты мебели;</li>
						<li>разнообразный выбор материалов, подходящих под любой заказ и удовлетвоярющий любые вкусы;</li>
						<li>гарантия и качество - всю работу выполняют профессионалы, гарантия на мебель 1,5 года;</li>
						<li>уникальность Вашего интерьера.</li>
					</ul>
				</div>
			</div>
			<div class="custommadefurniture-img"><img src="/web/img/custommadefurniture/advantages.jpg" alt=""></div>
		</div>
		<div>
			<div class="margin-container custommadefurniture-block-container">
				<div class="custommadefurniture-title">Процесс работы</div>
				<div>
					<div class="ul-title">Заказ мебели проходит следующие этапы:</div>
					<ul>
						<li>приходите в наш салон по адресу: <a href="contacts.php" target="_blank"><?php echo str_replace("<br>", " ", ADDRESS);?></a>, либо свяжитесь нами по номеру телефона <a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_IRINA);?>" title="Ирина Viber"><?php echo PHONE_IRINA;?></a> или по почте <a href="mailto:<?php echo EMAIL;?>"><?php echo EMAIL;?></a>;</li>
						<li>подбор модели по каталогу либо по вашим фото;</li>
						<li>выбор материалов: обивка, декор, детали;</li>
						<li>расчет стоимости и утверждение;</li>
						<li>заключение договора и предоплата (30-50%);</li>
						<li>изготовление заказа в течение 14-21 дня;</li>
						<li>доставка, установка и доплата.</li>
					</ul>
				</div>
			</div>
			<div class="custommadefurniture-img"><img src="/web/img/custommadefurniture/process.jpg" alt=""></div>
		</div>
		<div id="beds">
			<div class="margin-container custommadefurniture-block-container">
				<div>
					<div class="h">Кровати по индивидуальным заказам</div>
				</div>
				<div>Решив изготовить кровать на заказ, важно ориентироваться на предполагаемые габариты мебели и сопоставить их с пространством комнаты, продумать дизайн кровати, чтобы вписаться в интерьер, а также учитывать свой рост и вес. Так же немаловажно обратить внимание на проемы дверей и предусмотреть возможность вноса мебели.
				</div>
				<div class="custommadefurniture-title">Наши предложения</div>
				<div>
					<div class="ul-title">Изготовление кроватей под заказ происходит с учетом следующих факторов:</div>
					<ul>
						<li>размеры (0,9м; 1,2м; 1,4м; 1,6м; 1,8м);</li>
						<li>конструкторские особенности (с подъемным механизмом / без подъемного механизма);</li>
						<li>дизайн (большое разнообразие тканей; выбор формы спинки по каталогу или по вашим фото).</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="kitchens">
			<div class="margin-container custommadefurniture-block-container">
				<div>
					<div class="h">Кухни по индивидуальным заказам</div>
				</div>
				<div>Неоспоримые достоинства кухонь под заказ - удовлетворение любых потребностей, путем подбора материалов и комплектации, подходящих именно Вам; возможность продумать и учесть все детали для Вашего комфорта.
				</div>
				<div class="custommadefurniture-title">Преимущества заказных кухонь</div>
				<div>
					<div class="ul-title">Заказав кухню у нас, Вы получите:</div>
					<ul>
						<li>индивидуальные размеры;</li>
						<li>своеобразная конструкция модулей под нестандартные размеры и запросы;</li>
						<li>придание кухне любого стиля;</li>
						<li>сборка профессионалами;</li>
						<li>одна из самых низких цен по городу.</li>
					</ul>
				</div>
				<div class="custommadefurniture-img"><img src="/web/img/custommadefurniture/kitchens.png" alt=""></div>
			</div>
		</div>
	</main>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/footer.php";
	?>
</body>
</html>