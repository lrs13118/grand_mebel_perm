<?php
session_start();
if ($_SESSION['auth_admin'] == "yes_auth_admin")
{
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";

	$constantsFileContent = getConstantsFileContent();
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
<style>
</style>
		<div class="margin-container">
			<div class="h">Редактировать основные данные</div>
			<div>
				<div id="edit-constants-response"></div>
				<div id="edit-constants-form-container">
					<form method="post">
						<div class="input">
							<textarea name="constants-file-content" id="constants-file-content" cols="100%" rows="20">
								<?php print_r($constantsFileContent);?>
							</textarea>
							<!--сделать загрузку файла ??-->
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