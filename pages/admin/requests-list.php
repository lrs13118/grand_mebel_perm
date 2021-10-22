<?php
session_start();
if ($_SESSION['auth_admin'] == "yes_auth_admin")
{
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";

	$arRequests = [];
	$requestsResult = mysqli_query($connection, 'SELECT * FROM requests ORDER BY id DESC');
	while ($request = mysqli_fetch_assoc($requestsResult))
	{
		$arRequests[] = $request;
	}
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Сообщения через форму | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Сообщения через форму</li>
				</ol>
			</nav>
		</div>
		<div class="margin-container">
			<div class="h">Сообщения через форму</div>
			<div>
				<table class="table table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col" class="th-align">#</th>
							<th scope="col" class="th-align">Дата/время</th>
							<th scope="col" class="th-align">Контакт</th>
							<th scope="col" class="th-align">Сообщение</th>
							<th scope="col" class="th-align">Просмотрено</th>
							<th scope="col" class="th-align">Удалить</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$n = 1;
						foreach ($arRequests as $request) {?>
							<tr>
								<th scope="row"><?php echo $n;?></th>
								<td><?php echo $request['message_date'];?></td>
								<td><?php echo $request['phone'] . '<br>' . $request['email'];?></td>
								<td><?php echo $request['message'];?></td>
								<td class="td-width-5">
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" id="request-status-<?php echo $request['id'];?>" <?php if ($request['processed'] == 1) {echo 'checked';} ?> onclick="processedRequest(<?php echo $request['id'];?>);">
									</div>
								</td>
								<td class="td-width-5">
									<button type="button" class="btn-close del-prod"aria-label="Close"></button>
								</td>
							</tr>
						<?php $n++;?>
					<?php } ?>
					</tbody>
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
} else {
	$backUrl = $_SERVER['REQUEST_URI'];
	header("location:/pages/admin/auth.php?backurl=$backUrl");
}
?>