<?php
session_start();
if ($_SESSION['auth_admin'] == "yes_auth_admin")
{
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Редактировать основные данные | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Редактировать основные данные</li>
				</ol>
			</nav>
		</div>
		<div class="margin-container">
			<div class="h">Редактировать основные данные</div>
			<div>
				<div id="edit-constants-response" class="ajax-response"></div>
				<div id="edit-constants-form-container">
					<form method="post">
						<div class="input">
							<div class="edit-constant-input-container">
								<label for="edit-constant-title">Название: </label>
								<input type="text" name="edit-constant-title" id="edit-constant-title" value='<?php echo TITLE;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-logo">Логотип: </label>
								<!--add file selection-->
								<input type="text" name="edit-constant-logo" id="edit-constant-logo" value='<?php echo LOGO;?>'>
								<!--add new file adding-->
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-address">Адрес: </label>
								<input type="text" name="edit-constant-address" id="edit-constant-address" value='<?php echo ADDRESS;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-working-hours">Режим работы: </label>
								<input type="text" name="edit-constant-working-hours" id="edit-constant-working-hours" value='<?php echo WORKING_HOURS;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-instagram-link">Ссылка на Instagram: </label>
								<input type="text" name="edit-constant-instagram-link" id="edit-constant-instagram-link" value='<?php echo INSTAGRAM_LINK;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-instagram">Instagram ник: </label>
								<input type="text" name="edit-constant-instagram" id="edit-constant-instagram" value='<?php echo INSTAGRAM;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-vk-link">Ссылка на Vk: </label>
								<input type="text" name="edit-constant-vk-link" id="edit-constant-vk-link" value='<?php echo VK_LINK;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-email">Email: </label>
								<input type="text" name="edit-constant-email" id="edit-constant-email" value='<?php echo EMAIL;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-admin-email">Email админа: </label>
								<input type="text" name="edit-constant-admin-email" id="edit-constant-admin-email" value='<?php echo ADMIN_EMAIL;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-phone-irina">Телефон - Ирина: </label>
								<input type="text" name="edit-constant-phone-irina" id="edit-constant-phone-irina" value='<?php echo PHONE_IRINA;?>'>
							</div>
							<div class="edit-constant-input-container">
								<label for="edit-constant-phone-kristina">Телефон - Кристина: </label>
								<input type="text" name="edit-constant-phone-kristina" id="edit-constant-phone-kristina" value='<?php echo PHONE_KRISTINA;?>'>
							</div>
						</div>
						<div class="submit-container">
							<div class="submit-block" id="edit-constants-submit-container">
								<input type="button" name="edit-constants-submit" id="edit-constants-submit" value="Сохранить">
							</div>
							<div class="spinner-grow loading" id="edit-constants-loading-container" role="status">
								<span class="sr-only">Loading...</span>
							</div>
						</div>
					</form>
				</div>
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