<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";

	$arPartners = [];
	$partnersResult = mysqli_query($connection, 'SELECT * FROM partners');
	while ($partners = mysqli_fetch_assoc($partnersResult))
	{
		$arPartners[] = $partners;
	}
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Наши партнеры | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Наши партнеры</li>
				</ol>
			</nav>
		</div>
		<style type="text/css">
			.partners-container {display: grid; grid-template-columns: 25% 25% 25% 25%;}
			.partners-container div {margin: 10px 5px 0 5px;}
			.partners-block .partner-block {width: 90%; margin-left: 5%; margin-top: -30px; border: 1px solid #c9cad1;}
			.partner-block a {text-decoration: none;}
			.partner-block img {width: 100%;}
			.partner-block-desc div {color: #696a6e; font-size: 10pt;}
			.partner-block-desc .partner-title {font-weight: bold; font-size: 12pt;}
		</style>
		<div class="margin-container partners-container">
			<?php foreach ($arPartners as $arPartner){?>
				<div class="partners-block">
					<div class="grey-background line"></div>
					<div class="block partner-block">
						<a href="<?php echo $arPartner['href'];?>">
							<div><img src="/web/img/partners/<?php echo $arPartner['img'];?>"></div>
							<div class="partner-block-desc">
								<div class="partner-title"><?php echo $arPartner['title'];?></div>
								<div><?php echo $arPartner['description'] . ' ' . $arPartner['city'];?></div>
							</div>
						</a>
					</div>
				</div>
			<?php }?>			
		</div>
	</main>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/footer.php";
	?>
</body>
</html>