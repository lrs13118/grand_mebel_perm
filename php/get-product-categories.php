<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";

$dataType = trim($_POST['data_type']);

if ($dataType == 'cat')
{
	$mainCatId = (isset($_POST['main_cat_id'])) ? $_POST['main_cat_id'] : '';

	if ($mainCatId)
	{
		$query = 'SELECT * FROM product_categories WHERE main_cat = "' . $mainCatId . '"';
	}
}
if ($dataType == 'prod_cat')
{
	$catId = (isset($_POST['cat_id'])) ? $_POST['cat_id'] : '';

	if ($catId)
	{
		$query = 'SELECT * FROM product_categories WHERE cat = "' . $catId . '" AND prod_cat != 0';
	}
}

$arResult = [];
$queryResult = mysqli_query ($connection, $query);
while ($result = mysqli_fetch_assoc($queryResult))
{
	if ($result['title'] != 'Вся мягкая мебель' && $result['title'] != 'Вся кухонная мебель' && $result['title'] != 'Вся корпусная мебель')
	{
		$arResult[] = [
			'id' =>  $result[$dataType],
			'title' => $result['title']
		];
	}
}

echo json_encode($arResult);
?>