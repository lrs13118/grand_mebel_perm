<?php
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
	<title>Главная | <?php echo TITLE;?></title>
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
		<div class="margin-container slider-container">
			<div class="slider">
				<div class="slider__wrapper">
					<div class="slider__items">
						<div class="slider__item">
							<div><img src="/web/img/slideshow-1.jpg"></div>
						</div>
						<div class="slider__item">
							<div><img src="/web/img/slideshow-2.jpg"></div>
						</div>
						<div class="slider__item">
							<div><img src="/web/img/slideshow-3.jpg"></div>
						</div>
					</div>
				</div>
				<a class="slider__control slider__control_prev" href="#" role="button"></a>
				<a class="slider__control slider__control_next" href="#" role="button"></a>
			</div>
			<div class="near-slider-right-block">
        		<div>
        			<?php 
						$sideProductResult = mysqli_query($connection, 'SELECT * FROM products WHERE cat = 3 ORDER BY id DESC LIMIT 1');
						$sideProduct = mysqli_fetch_assoc($sideProductResult);
					?>
        			<div>
        				<div class="sticker">Новинка</div>
        				<div>
        					<img src="/web/img/products/<?php echo $sideProduct['img'];?>">
        				</div>
        			</div>
        			<div class="side-product-desc-container">
        				<div class="side-product-title"><?php echo $sideProduct['title'];?></div>
        				<div>
        					<div><b>Общие размеры:</b> <?php echo $sideProduct['width'] . $sideProduct['height'] . $sideProduct['depth'];?></div>
        					<div><b>Характеристики:</b></div>
        					<div> - <?php echo str_replace(",", "", mb_strtolower($sideProduct['folding_mechanism']));?></div>
        					<div> - <?php echo str_replace(",", "", mb_strtolower($sideProduct['filling']));?></div>
        					<?php if ($sideProduct['metal_frame'] != 0)
        					{ ?>
        						<div><?php echo '- металлокаркас';?></div>
        					<?php } ?>
        				</div>
        				<div class="side-product-price">от <span><?php echo transformPriceForDisplaying($sideProduct['price']);?></span> руб.</div>
        			</div>
        		</div>
      		</div>
		</div>
		<div class="margin-container">
			<div>
				<div class="h">Популярное</div>
				<div class="grey-background line"></div>
			</div>
			<div class="blocks-container">
				<div class="block">
					<?php 
						$firstLeaderResult = mysqli_query($connection, 'SELECT * FROM products WHERE id = 21');
						$firstLeader = mysqli_fetch_assoc($firstLeaderResult);
					?>
					<a href="product.php?id=<?php echo $firstLeader['id']?>">
						<div><img src="/web/img/products/<?php echo $firstLeader['img'];?>"></div>
						<div class="block-desc">
							<div class="block-name"><?php echo $firstLeader['title'];?></div>
							<div class="block-price">
								от <span><?php echo transformPriceForDisplaying($firstLeader['price']);?></span> руб.
							</div>
						</div>
					</a>
				</div>
				<div class="block block-hide-two">
					<?php 
						$firstLeaderResult = mysqli_query($connection, 'SELECT * FROM products WHERE id = 13');
						$firstLeader = mysqli_fetch_assoc($firstLeaderResult);
					?>
					<a href="product.php?id=<?php echo $firstLeader['id']?>">
						<div><img src="/web/img/products/<?php echo $firstLeader['img'];?>"></div>
						<div class="block-desc">
							<div class="block-name"><?php echo $firstLeader['title'];?></div>
							<div class="block-price">
								от <span><?php echo transformPriceForDisplaying($firstLeader['price']);?></span> руб.
							</div>
						</div>
					</a>
				</div>
				<div class="block block-hide-three">
					<?php 
						$firstLeaderResult = mysqli_query($connection, 'SELECT * FROM products WHERE id = 165');
						$firstLeader = mysqli_fetch_assoc($firstLeaderResult);
					?>
					<a href="product.php?id=<?php echo $firstLeader['id']?>">
						<div><img src="/web/img/products/<?php echo $firstLeader['img'];?>"></div>
						<div class="block-desc">
							<div class="block-name"><?php echo $firstLeader['title'];?></div>
							<div class="block-price">
								от <span><?php echo transformPriceForDisplaying($firstLeader['price']);?></span> руб.
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="grey-background request-form">
			<div >
				<div class="h">Оставьте свою заявку</div>
				<div>
					<p>
						Напишите пожелание или вопрос.<br>
						Укажите предпочтительный способ связи (номер телефона или электронную почту).<br>
						Мы объязательно свяжемся с вами!
					</p>
				</div>
				<div id="request-response"></div>
				<div id="request-form-container">
					<form method="post">
						<div class="input">
							<div><input type="text" name="request-name" id="request-name" placeholder="Имя" onkeyup="checkParams()"></div>
							<div><input type="tel" pattern="" name="request-phone-number" id="request-phone-number" placeholder="Номер телефона" onkeyup="checkParams()"></div>
							<div><input type="email" name="request-email" id="request-email" placeholder="Email" onkeyup="checkParams()"></div>
							<div><textarea name="request-message" id="request-message" placeholder="Введите текст сообщения" onkeyup="checkParams()"></textarea></div>
						</div>
						<div class="submit-container">
							<div class="submit-block" id="request-submit-container">
								<input type="button" name="request-submit" id="request-submit" value="Отправить" disabled>
							</div>
							<div class="spinner-grow loading" id="request-loading-container" role="status">
								<span class="sr-only">Loading...</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="margin-container">
			<div>
				<div class="h">Новое</div>
				<div class="red-background line"></div>
			</div>
			<div class="blocks-container">
				<?php
				$n = 0;
				$newResult = mysqli_query($connection, 'SELECT * FROM products ORDER BY id DESC LIMIT 3');
				while ($new = mysqli_fetch_assoc($newResult))
				{
					$n++;
				?>
				<div class="block <?php if ($n == 2) {echo 'block-hide-two';} if ($n == 3) {echo 'block-hide-three';}?>">
					<a href="product.php?id=<?php echo $new['id']?>">
						<div><img src="/web/img/products/<?php echo $new['img']? $new['img'] : 'kot.jpg';?>"></div>
						<div class="block-desc">
							<div class="block-name"><?php echo $new['title'];?></div>
							<div class="block-price">
								<?php 
									if ($new['price'] == 0)
									{
										echo '<span>Цену уточняйте</span>';
									} else {
										echo 'от <span>' . transformPriceForDisplaying($new['price']) . '</span> руб.';
									}
								?>
							</div>
						</div>
					</a>
				</div>
				<?php } ?>
			</div>
		</div>
		<div class="square-grid">
			<div class="h">Специальные предложения под индивидуальный заказ</div>
			<div class="square-grid-container">
				<div class="square-grid-block">
					<a href="custommadefurniture.php#custommadefurniture">
						<div class="increase-img-block"><img src="/web/img/cmf-sofa.png"></div>
						<div>Мягкая мебель</div>
					</a>
				</div>
				<div class="square-grid-block">
					<a href="custommadefurniture.php#beds">
						<div class="increase-img-block"><img src="/web/img/cmf-bed.png"></div>
						<div>Кровати</div>
					</a>
				</div>
				<div class="square-grid-block">
					<a href="catalog.php?type=wardrobe">
						<div class="increase-img-block"><img src="/web/img/cmf-wardrobes.png"></div>
						<div>Шкафы-купе</div>
					</a>
				</div>
				<div class="square-grid-block">
					<a href="custommadefurniture.php#kitchens">
						<div class="increase-img-block"><img src="/web/img/cmf-kitchen.png"></div>
						<div>Кухни</div>
					</a>
				</div>
			</div>
		</div>
		<div class="margin-container">
			<div>
				<div class="h">Новости и акции</div>
				<div class="grey-background line"></div>
			</div>
			<div class="blocks-container">
				<?php
					$p = 0;
					$promotionResult = mysqli_query($connection, 'SELECT * FROM news_promotion ORDER BY id DESC LIMIT 3');
					while ($promotion = mysqli_fetch_assoc($promotionResult)) {
					$p++;
				?>
				<div class="block <?php if ($p == 2) {echo 'block-hide-two';} if ($p == 3) {echo 'block-hide-three';}?>">
					<a href="news.php#<?php echo $promotion['identification'];?>">
						<div><img src="/web/img/promotion/<?php echo $promotion['img'];?>"></div>
						<div class="block-desc">
							<div class="block-promo-name"><?php echo $promotion['title'];?></div>
							<div class="block-promo-desc">
								<p>
									<?php 
										echo mb_substr($promotion['description'], 0, 150, 'utf-8');
										if (strlen($promotion['description']) > 180)
										{
											echo '...';
										}
									?>									
								</p>
							</div>
						</div>
					</a>
				</div>
				<?php } ?>
			</div>
		</div>
		<style>
			.articles-list-inst-container {display: grid; grid-template-columns: 70% 30%;}
		</style>
		<!--<div class="grey-background">
			<div class="margin-container articles-list-inst-container">
				<div>
					
				</div>
				<div><iframe src='/web/inwidget/index.php' data-inwidget scrolling='no' frameborder='no' style='border:none;width:260px;height:330px;overflow:hidden;'></iframe></div>
			</div>
		</div>-->
		<div class="margin-container map-container">
			<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A550f39236529587717876579f4206a46e0361daf97ecaef82008db5de303c37e&amp;width=100%&amp;height=600&amp;lang=ru_RU&amp;scroll=true"></script>
		</div>
	</main>
	<?php
		require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/footer.php";
	?>
</body>
</html>