<header>
	<?php
		$arRequestsCount = [];
		$requestsIdResult = mysqli_query($connection, 'SELECT id FROM requests WHERE processed = 0');
		while ($requestsId = mysqli_fetch_assoc($requestsIdResult))
		{
			$arRequestsCount[] = $requestsId;
		}
		$requestsCount = count($arRequestsCount);

		$unread = '';
		if (in_array($requestsCount, [1,21,31,41,51]))
		{
			$unread = $requestsCount . ' непрочитанное сообщение, полученное';
		} else {
			$unread = $requestsCount . ' непрочитанных сообщения, полученных';
		}

		if (($_SESSION['auth_admin'] == "yes_auth_admin") && ($requestsCount > 0) && ($_SERVER['REQUEST_URI'] != '/pages/admin/requests-list.php')) { ?>
		<div class="red-background">
			<div class="margin-container request-notification">
				Имеется <?php echo $unread;?> через веб-форму.
				<a href="/pages/admin/requests-list.php">Просмотреть</a>
			</div>
		</div>
	<?php } ?>
		<div class="margin-container">
			<div class="top-header-container">
				<div class="top-header-mob">
					<div class="top-header-mob-menu-icon">
						<div class="top-header-logo"><img src="/web/img/<?php echo LOGO;?>"></div>
						<div class="menu-icon"><em class="fa fa-bars"></em></div>	
					</div>
					<div class="top-header-mob-wrapper">
						<div>
							<div>
								<div class="top-header-block">
									<div>
										<div><img src="/web/img/viber.png"></div>
										<div class="top-header-block-content"><a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_IRINA);?>" title="Ирина Viber"><?php echo PHONE_IRINA;?></a></div>
									</div>
									<div>
										<div><img src="/web/img/viber.png"></div>
										<div class="top-header-block-content"><a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_KRISTINA);?>" title="Кристина Viber"><?php echo PHONE_KRISTINA;?></a></div>
									</div>
								</div>
								<div class="top-header-block">
									<div>
										<div><img src="/web/img/place.png"></div>
										<div class="top-header-block-content"><?php echo ADDRESS;?></div>
									</div>
									<div>
										<div class="icon"><em class="fa fa-clock"></em></div>
										<div class="top-header-block-content"><?php echo WORKING_HOURS;?></div>
									</div>
								</div>
								<div class="get-touch">
									<div><p>По всем вопросам обращайтесь по почте:</p></div>
									<div><a href="mailto:<?php echo EMAIL;?>"><em class="fa fa-envelope"></em> <?php echo EMAIL;?></a></div>
								</div>
							</div>
							<div >
								<nav class="menu">
									<ul>
										<li><a href="/pages/partners.php">Наши партнеры</a></li>
										<li><a href="/pages/payment.php">Оплата и доставка</a></li>
										<li><a href="/pages/news.php">Новости и акции</a></li>
										<li><a href="/pages/articles.php">Заметки</a></li>
										<li><a href="/pages/contacts.php">Контакты</a></li>
										<li><a href="/pages/sitemap.php">Карта сайта</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<div class="top-header">
					<div class="top-header-block">
						<div>
							<div><img src="/web/img/place.png"></div>
							<div class="top-header-block-content"><?php echo ADDRESS;?></div>
						</div>
					</div>
					<div class="top-header-block first-block-hide">
						<div>
							<div><img src="/web/img/viber.png"></div>
							<div class="top-header-block-content"><a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_IRINA);?>" title="Ирина Viber"><?php echo PHONE_IRINA;?></a></div>
						</div>
						<div class="second-block-hide">
							<div><img src="/web/img/viber.png"></div>
							<div class="top-header-block-content"><a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_KRISTINA);?>" title="Кристина Viber"><?php echo PHONE_KRISTINA;?></a></div>
						</div>
					</div>
					<div class="top-header-block extra-block-hide">
						<div>
							<div class="icon"><em class="fa fa-clock"></em></div>
							<div class="top-header-block-content"><?php echo WORKING_HOURS;?></div>
						</div>
					</div>
					<nav class="menu">
						<ul>
							<li><a href="/pages/partners.php">Наши партнеры</a></li>
							<li><a href="/pages/payment.php">Оплата и доставка</a></li>
							<li><a href="/pages/news.php">Новости и акции</a></li>
							<li><a href="/pages/articles.php">Заметки</a></li>
							<li><a href="/pages/contacts.php">Контакты</a></li>
							<li><a href="/pages/sitemap.php">Карта сайта</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="middle-header-container">
				<div class="logo"><a href="/"><img src="/web/img/<?php echo LOGO;?>"></a></div>
				<div class="get-touch">
					<div><p>По всем вопросам обращайтесь по почте:</p></div>
					<div><a href="mailto:<?php echo EMAIL;?>"><em class="fa fa-envelope"></em> <?php echo EMAIL;?></a></div>
				</div>
			</div>
		</div>
		<div class="grey-background">
			<div class="bottom-header-mob">
				<div class="catalog-menu-icon">Каталог <em class="fa fa-bars"></em></div>
				<div class="bottom-header-mob-wrapper">
					<nav>
						<div>
							<ul>
								<li><a href="/pages/catalog.php?type=softfurniture">Мягкая мебель</a></li>
								<li><a href="/pages/catalog.php?type=kitchen">Кухни</a></li>
								<li><a href="/pages/catalog.php?type=wardrobe">Шкафы-купе</a></li>
								<li><a href="/pages/catalog.php?type=cabinetfurniture">Корпусная мебель</a></li>
							</ul>
						</div>
						<div>
							<ul>
								<li><a href="/pages/catalog.php?type=other">Другое</a></li>
								<li class="red-color"><a href="/pages/catalog.php?type=sale">% Sale</a></li>
								<li class="red-color bold"><a href="/pages/custommadefurniture.php">! Мебель под заказ !</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<div class="bottom-header-container">
				<nav class="catalog">
					<ul>
						<li class="red-color hide-menu-item"><a href="/pages/catalog.php?type=sale">% Sale</a></li>
						<li><a href="/pages/catalog.php?type=softfurniture">Мягкая мебель</a></li>
						<li><a href="/pages/catalog.php?type=kitchen">Кухни</a></li>
						<li><a href="/pages/catalog.php?type=wardrobe">Шкафы-купе</a></li>
						<li><a href="/pages/catalog.php?type=cabinetfurniture">Корпусная мебель</a></li>
						<li><a href="/pages/catalog.php?type=other">Другое</a></li>
						<li class="red-background bold hide-menu-item"><a href="/pages/custommadefurniture.php">! Мебель под заказ !</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>