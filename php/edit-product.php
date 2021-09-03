<?php
require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";

$arErrors = [];

$productId = $_POST['product_id'];
$mainImg = $_POST['main_img'];
$images = $_POST['images'];
$img = $_POST['img'];
$active = $_POST['active'];
$mainCat = (int)$_POST['main_cat'];
$cat = (int)$_POST['cat'];
$podCat = (int)$_POST['pod_cat'];
$title = trim($_POST['title']);
$price = $_POST['price'];
$maker = trim($_POST['maker']);
$height = (int)trim($_POST['height']);
$width = (int)trim($_POST['width']);
$depth = (int)trim($_POST['depth']);
$otherDimensions = trim($_POST['other_dimensions']);
$description = trim($_POST['description']);
$additionally = trim($_POST['additionally']);
$foldingMechanism = trim($_POST['folding_mechanism']);
$filling = trim($_POST['filling']);
$metalFrame = $_POST['metal_frame'];
$removableCase = $_POST['removable_case'];
$angleUniversal = $_POST['angle_universal'];
$nicheUnderTaundry = $_POST['niche_under_taundry'];
$wallpaperProtection = $_POST['wallpaper_protection'];
$adjustableHeadrests = $_POST['adjustable_headrests'];
$backrestPositions = $_POST['backrest_positions'];
$price0 = $_POST['price0'];
$price1 = $_POST['price1'];
$price2 = $_POST['price2'];
$price3 = $_POST['price3'];

//img
foreach ($images as $key => $image)
{
	if ($image == $mainImg) unset($images[$key]);
}
$images = implode(',', $images);

//price
$price = str_replace(" ", "", $price);

//demensions
$height = $height ? $height : null;
$width = $width ? $width : null;
$depth = $depth ? $depth : null;

//main cat
$arMainCat = [2, 9, 15, 41];
if (!in_array($mainCat, $arMainCat)) $arErrors[] = "Не выбран тип продукта";

//cat
switch ($mainCat) {
	case 2:
		$arCat = [3, 4, 5, 6, 7, 8];
		break;
	case 9:
		$arCat = [10, 11, 12, 13];
		break;
	case 15:
		$arCat = [16, 17, 18, 19, 20, 25, 30, 33, 34, 37, 38, 39, 40];
		break;
	default:
		$arCat = [0];
		break;
}
if (!in_array($cat, $arCat)) $cat = 0;

//pod cat
switch ($cat) {
	case 20:
		$arPodCat = [21, 22, 23, 24];
		break;
	case 25:
		$arPodCat = [26, 27, 28, 29];
		break;
	case 30:
		$arPodCat = [31, 32];
		break;
	case 34:
		$arPodCat = [35, 36];
		break;
	default:
		$arPodCat = [0];
		break;
}
if (!in_array($podCat, $arPodCat)) $podCat = 0;

//folding mechanism
if ($foldingMechanism == 'Не выбрано') $foldingMechanism = null;

//filling
if (!$filling) $filling = null;

//tag for kd
$tagForKd = 0;
if ($mainCat == 9 && $cat == 10) 
	$tagForKd = 1;

//kd price
if ($price0) $price0 = str_replace(" ", "", $price0);
if ($price1) $price1 = str_replace(" ", "", $price1);
if ($price2) $price2 = str_replace(" ", "", $price2);
if ($price3) $price3 = str_replace(" ", "", $price3);

$updateResult = mysqli_query ($connection, "
	UPDATE `products` 
	SET 
		`title` = '".$title."',
		`img` = '".$mainImg."',
		`img1` = '".$images."',
		`price` = '".(int)$price."',
		`maker` = '".$maker."',
		`height` = '".$height."',
		`width` = '".$width."',
		`depth` = '".$depth."',
		`other_dimensions` = '".$otherDimensions."',
		`main_cat` = '".$mainCat."',
		`cat` = '".$cat."',
		`pod_cat` = '".$podCat."',
		`folding_mechanism` = '".$foldingMechanism."',
		`filling` = '".$filling."',
		`metal_frame` = '".$metalFrame."',
		`removable_case` = '".$removableCase."',
		`angle_universal` = '".$angleUniversal."',
		`niche_under_taundry` = '".$nicheUnderTaundry."',
		`wallpaper_protection` = '".$wallpaperProtection."',
		`adjustable_headrests` = '".$adjustableHeadrests."',
		`backrest_positions` = '".$backrestPositions."',
		`additionally` = '".$additionally."',
		`tag_for_kd` = '".$tagForKd."',
		`price0` = '".(int)$price0."',
		`price1` = '".(int)$price1."',
		`price2` = '".(int)$price2."',
		`price3` = '".(int)$price3."',
		`active` = '".$active."' 
	WHERE `id` = '".$productId."'
");

echo json_encode(mysqli_error($connection));
?>