<?php
session_start();
if ($_SESSION['auth_admin'] != "yes_auth_admin")
{
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";

	$redirectPage = '';
	if (isset($_GET['backurl']))
	{
		$redirectPage = $_GET['backurl'];
	}
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Вход в админ-панель | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Вход в админ-панель</li>
				</ol>
			</nav>
		</div>
		<div class="margin-container">
			<div class="h" align="center">Вход в админ-панель</div>
			<div>
				<div id="auth-response"></div>
				<div id="auth-form-container">
					<form method="post">
						<div class="input">
							<div><input type="text" name="auth-login" id="auth-login" placeholder="Логин" onkeyup="checkLoginParams()"></div>
							<div><input type="text" name="auth-password" id="auth-password" placeholder="Пароль" onkeyup="checkLoginParams()"></div>
						</div>
						<input type="hidden" id="backurl" value="<?php echo $redirectPage;?>">
						<div class="submit-container">
							<div class="submit-block" id="auth-submit-container">
								<input type="button" name="auth-submit" id="auth-submit" value="Вход" disabled>
							</div>
							<div class="spinner-grow loading" id="auth-loading-container" role="status">
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
} else {header("location:/pages/admin/index.php");}
?>