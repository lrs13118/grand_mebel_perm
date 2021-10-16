
	<?php
	$arConstants = [
		'TITLE' => 'Гранд-мебель, мягкая мебель Пермь',
		'LOGO' => 'logo.jpg',
		'ADDRESS' => 'г. Пермь, ул. Свиязева 39<br>(ТЦ "Терра-Интьера", 2 этаж)',
		'WORKING_HOURS' => 'ПН-СБ 10:00-19:00<br>ВС 11:00-18:00',
		'INSTAGRAM_LINK' => 'https://www.instagram.com/grandmebelperm/',
		'INSTAGRAM' => '@grandmebelperm',
		'VK_LINK' => 'https://vk.com/grandmebelperm',
		'EMAIL' => 'grandmebelperm@mail.ru',
		'ADMIN_EMAIL' => 'lrs1311@mail.ru',
		'PHONE_IRINA' => '+7 908 274 90 69',
		'PHONE_KRISTINA' => '+7 909 106 81 87',
	];

	foreach ($arConstants as $constantName => $constantValue)
	{
		define($constantName, $constantValue);
	}
	?>