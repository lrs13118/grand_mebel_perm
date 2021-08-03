<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/connection.php";
	require_once $_SERVER['DOCUMENT_ROOT'] . "/config/constants.php";

	$page = 1;
	$itemsPerPage = 10;

	if (isset($_GET['page']))
	{
		$page = $_GET['page'];
	}

	$arNews = [];
	$newsResult = mysqli_query($connection, 'SELECT * FROM news_promotion ORDER BY id DESC');
	while ($news = mysqli_fetch_assoc($newsResult))
	{
		$arNews[] = $news;
	}

	$pagesCount = ceil(count($arNews)/$itemsPerPage);
	$arAllNews = $arNews;
	$arNews = [];
	$newsCount = count($arAllNews);
	$start = 0;
	$end = 0;

	if ($page < $pagesCount)
	{
		if ($page > 1)
		{
			$start = ($itemsPerPage*$page)-$itemsPerPage;
			$end = $itemsPerPage*$page;
		}
		if ($page == 1)
		{
			$end = $itemsPerPage;
		}
	}
	if ($page == $pagesCount)
	{
		if ($page > 1)
		{
			$start = $newsCount-($newsCount%$itemsPerPage);
		}
		if ($page >= 1)
		{
			$end = $newsCount;
		}
	}

	for ($i=$start;$i<$end;$i++)
	{
		$arNews[] = $arAllNews[$i];
	}
?>
<!DOCTYPE html>
<html>
<head>
	<?php
	require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/meta.php";
	?>
	<title>Новости и акции | <?php echo TITLE;?></title>
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
					<li class="breadcrumb-item active" aria-current="page">Новости и акции</li>
				</ol>
			</nav>
		</div>
		<style type="text/css">
			.title-pagination-container {display: flex; justify-content: space-between;}
		</style>
		<div class="margin-container news-container">
			<div class="brandface-img">
				<div><img src="/web/img/brandface.png"></div>
			</div>
			<div>
				<div class="title-pagination-container">
					<div class="h">Новости и акции</div>
					<div>
						<nav aria-label="Page navigation example">
								<ul class="pagination pagination-sm">
									<?php if ($page != 1) {?>
									<li class="page-item">
										<a class="page-link" href="/pages/news.php?page=<?php echo ($page-1);?>" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										</a>
									</li>
									<?php } ?>
									<?php if ($pagesCount != 1) {
									for ($i=1;$i<=$pagesCount;$i++) {?>
									<li class="page-item <?php if ($page == $i) {echo 'blackcolor';}?>"><a class="page-link" href="/pages/news.php?page=<?php echo $i;?>"><?php echo $i;?></a></li>
									<?php } }?>
									<?php if ($pagesCount != $page && $pagesCount != 0) { ?>
									<li class="page-item">
										<a class="page-link" href="/pages/news.php?page=<?php echo ($page+1);?>" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										</a>
									</li>
									<?php } ?>
								</ul>
							</nav>
					</div>
				</div>
				<?php
				foreach ($arNews as $news)
				{?>
				<div id="<?php echo $news['identification'];?>">
					<div class="grey-background line"></div>
					<div class="news-block block">
						<div><img src="/web/img/promotion/<?php echo $news['img'];?>"></div>
						<div class="news-desc-container">
							<div class="news-title"><?php echo $news['title'];?></div>
							<div class="news-description"><?php echo $news['description'];?></div>
						</div>
					</div>
				</div>
				<?php } ?>
				<div class="title-pagination-container">
					<div></div>
					<div>
						<nav aria-label="Page navigation example">
								<ul class="pagination pagination-sm">
									<?php if ($page != 1) {?>
									<li class="page-item">
										<a class="page-link" href="/pages/news.php?page=<?php echo ($page-1);?>" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										</a>
									</li>
									<?php } ?>
									<?php if ($pagesCount != 1) {
									for ($i=1;$i<=$pagesCount;$i++) {?>
									<li class="page-item <?php if ($page == $i) {echo 'blackcolor';}?>"><a class="page-link" href="/pages/news.php?page=<?php echo $i;?>"><?php echo $i;?></a></li>
									<?php } }?>
									<?php if ($pagesCount != $page && $pagesCount != 0) { ?>
									<li class="page-item">
										<a class="page-link" href="/pages/news.php?page=<?php echo ($page+1);?>" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										</a>
									</li>
									<?php } ?>
								</ul>
							</nav>
					</div>
				</div>
			</div>
		</div>
	</main>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/footer.php";
	?>
</body>
</html>