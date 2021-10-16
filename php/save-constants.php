<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/php/functions.php";

$title = trim($_POST['title']);
$logo = trim($_POST['logo']);
$address = trim($_POST['address']);
$workingHours = trim($_POST['working_hours']);
$instagramLink = trim($_POST['instagram_link']);
$instagram = trim($_POST['instagram']);
$vkLink = trim($_POST['vk_link']);
$email = trim($_POST['email']);
$adminEmail = trim($_POST['admin_email']);
$phoneIrina = trim($_POST['phone_irina']);
$phoneKristina = trim($_POST['phone_kristina']);

$arErrors = [];
if (!empty($title)){$arConstants['TITLE'] = $title;} else {$arErrors[] = 'Название не может быть пустым!';}
if (!empty($logo)){$arConstants['LOGO'] = $logo;} else {$arErrors[] = 'Логотип не может быть пустым!';}
if (!empty($address)){$arConstants['ADDRESS'] = $address;} else {$arErrors[] = 'Адрес не может быть пустым!';}
if (!empty($workingHours)){$arConstants['WORKING_HOURS'] = $workingHours;} else {$arErrors[] = 'Не заполнены часы работы!';}
if (!empty($email) && !empty($adminEmail))
{
	if (filter_var($email, FILTER_VALIDATE_EMAIL)) {$arConstants['EMAIL'] = $email;} else {$arErrors[] = 'Некорректный email ' . $email . '!';}
	if (filter_var($adminEmail, FILTER_VALIDATE_EMAIL)){$arConstants['ADMIN_EMAIL'] = $adminEmail;} else {$arErrors[] = 'Некорректный email админа ' . $adminEmail . '!';}
} else {
	$arErrors[] = 'Email не может быть пустым!';
}
if (!empty($phoneIrina) && !empty($phoneKristina)){$arConstants['PHONE_IRINA'] = $phoneIrina; $arConstants['PHONE_KRISTINA'] = $phoneKristina;} else {$arErrors[] = 'Номер телефона не может быть пустым!';}

if (!$arErrors)
{
	$content = "
	<?php
	\$arConstants = [
		'TITLE' => '" . $title . "',
		'LOGO' => '" . $logo . "',
		'ADDRESS' => '" . $address . "',
		'WORKING_HOURS' => '" . $workingHours . "',
		'INSTAGRAM_LINK' => '" . $instagramLink . "',
		'INSTAGRAM' => '" . $instagram . "',
		'VK_LINK' => '" . $vkLink . "',
		'EMAIL' => '" . $email . "',
		'ADMIN_EMAIL' => '" . $adminEmail . "',
		'PHONE_IRINA' => '" . $phoneIrina . "',
		'PHONE_KRISTINA' => '" . $phoneKristina . "',
	];

	foreach (\$arConstants as \$constantName => \$constantValue)
	{
		define(\$constantName, \$constantValue);
	}
	?>";

	putConstantsFileContent($content);

	echo json_encode([
		'status' => 'success',
		'text' => 'Данные успешно сохранены!'
	]);
} else {
	echo json_encode([
		'status' => 'error',
		'text' => implode('<br>', $arErrors)
	]);
}
?>