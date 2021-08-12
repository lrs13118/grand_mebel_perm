<?php
session_start();
if ($_SESSION['auth_admin'] == "yes_auth_admin")
{
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Админ-панель | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Админ-панель</li>
				</ol>
			</nav>
		</div>
		<div class="margin-container">
			<div class="h">Админ-панель</div>
			<div>
				<ul>
					<li><a href="/pages/admin/edit-constants.php">Редактировать основные данные</a></li>
					<li><a href="/pages/admin/view-products-list.php">Редактировать каталог</a></li>
				</ul>
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