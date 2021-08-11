<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";

$name = trim($_POST['name']);
$phone = trim($_POST['phone']);
$email = trim($_POST['email']);
$messageContent = trim($_POST['message']);

if (!empty($messageContent))
{
	$arUnwantedWords = [
		'рассылк',
		'рассылок',
		'предлагаем',
		'реклам',
		'домен',
		'продвижени',
		'приглаша',
		'базы клиентов',
		'базу клиентов',
		'база клиентов',
		'59grandmebelperm.ru',
		'заказывайте и покупайте',
		'играть бесплатно и без регистрации',
		'играть в игры онлайн',
		'поисковые системы',
		'обзвон',
		'колл-центр',
		'рекламные аккаунты',
		'промокоды',
		'адвокат',
		'контент',
		'подборк',
		'оставьте заявку',
		'смотрите по ссылке',
		'целевых клиентов',
		'целевые клиенты',
		'предлагаем оформить',
		'thank you',
		'ranking keywords',
		'reputable company',
		'your SEO',
		'partner consultant',
		'Hello. And Bye.',
		'SEO ranks',
		'boost in ranks',

	];

	$isMailing = false;
	$isInSpam = false;
	if (stripos($email, 'no-reply')) 
	{
		$isMailing = true;
	}
	if (!$isMailing)
	{
		$spamEmailsResult = mysqli_query($connection, 'SELECT `email` FROM `spam` WHERE `email` = "'.$email.'"');
		$spamEmail = mysqli_fetch_assoc($spamEmailsResult);

		if ($spamEmail)
		{
			$isMailing = true;
			$isInSpam = true;
		}
	}
	if (!$isMailing)
	{
		foreach ($arUnwantedWords as $unwantedWord)
		{
			if (stripos('f ' . $messageContent, $unwantedWord))
			{
				$isMailing = true;
				break;
			}
		}
	}

	if (!$isMailing)
	{
		if ($phone || filter_var($email, FILTER_VALIDATE_EMAIL))
		{
			$adminEmail = ADMIN_EMAIL;

			$message = "Отправитель: $name\r\n";
			if ($phone)
			{
				$message .= "Телефон: $phone\r\n";
			}
			if ($email)
			{
				$message .= "E-mail: $email\r\n";
			}
			$message .= "\r\nСообщение: \r\n$messageContent";

			$headers = "From: $adminEmail\r\n";

			mail($adminEmail, 'Заявка с сайта', $message, $headers);

			mysqli_query ($connection, "INSERT INTO `requests` (`id`, `name`, `phone`, `email`, `message`, `message_date`, `processed`) VALUES (NULL, '".$name."', '".$phone."', '".$email."', '".$messageContent."', NOW(), NULL )");

			echo "Success";

		} else {
			echo "Wrong data";
		}
	} else {
		if (!$isInSpam)
		{
			mysqli_query ($connection, "INSERT INTO `spam` (`id`, `name`, `phone`, `email`, `message`, `message_date`) VALUES (NULL, '".$name."', '".$phone."', '".$email."', '".$messageContent."', NOW() )");
		}

		echo "Mailing";
	}
} else {

	if (!$phone || !filter_var($email, FILTER_VALIDATE_EMAIL))
	{
		echo 'Empty message and wrong data';
	} else {
		echo 'Empty message';
	}
}
?>