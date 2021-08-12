	<footer>
		<div>
			<div class="margin-container top-footer-container">
				<div class="footer-logo">
					<div><a href="/"><img src="/web/img/<?php echo LOGO;?>"></a></div>
					<div>
						<p>
							-Большой ассортимент мебели<br>
							-Любые ценовые категории<br>
							-Преимущественно пермские производители<br>
							-Опыт в сфере мебели более 20 лет
						</p>
					</div>
				</div>
				<div class="top-footer-block">
					<ul>
						<li class="h">О нас</li>
						<li><a href="/pages/partners.php">Наши партнеры</a></li>
						<li><a href="/pages/payment.php">Оплата и доставка</a></li>
						<li><a href="/pages/news.php">Новости и акции</a></li>
						<li><a href="/pages/articles.php">Заметки</a></li>
						<li><a href="/pages/contacts.php">Контакты</a></li>
						<li><a href="/pages/sitemap.php">Карта сайта</a></li>
					</ul>
				</div>
				<div class="top-footer-block">
					<ul>
						<li class="h">Каталог</li>
						<li class="red-color"><a href="/pages/catalog.php?type=sale">% Sale</a></li>
						<li><a href="/pages/catalog.php?type=softfurniture">Мягкая мебель</a></li>
						<li><a href="/pages/catalog.php?type=kitchen">Кухни</a></li>
						<li><a href="/pages/catalog.php?type=wardrobe">Шкафы-купе</a></li>
						<li><a href="/pages/catalog.php?type=cabinetfurniture">Корпусная мебель</a></li>
						<li><a href="/pages/catalog.php?type=other">Другое</a></li>
						<li class="red-color"><a href="/pages/custommadefurniture.php">! Мебель под заказ !</a></li>
					</ul>				
				</div>
				<div class="top-footer-block">
					<ul>
						<li class="h">Контакты</li>
						<li>
							<div class="top-footer-element">
								<div class="footer-img"><img src="/web/img/place.png"></div>
								<div><?php echo ADDRESS;?></div>
							</div>
						</li>
						<li>
							<div class="top-footer-element">
								<div class="footer-icon"><em class="fa fa-clock"></em></div>
								<div><?php echo WORKING_HOURS;?></div>
							</div>
						</li>
						<li>
							<div class="get-touch">
								<div class="get-touch-footer"><a href="mailto:<?php echo EMAIL;?>"><em class="fa fa-envelope"></em> <?php echo EMAIL;?></a></div>
							</div>
						</li>
						<li>
							<div class="top-footer-element">
								<div class="footer-img"><img src="/web/img/viber.png"></div>
								<div><a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_IRINA);?>" title="Ирина Viber"><?php echo PHONE_IRINA;?></a> - Ирина</div>
							</div>
						</li>
						<li>
							<div class="top-footer-element">
								<div class="footer-img"><img src="/web/img/viber.png"></div>
								<div><a href="viber://add?number=<?php echo str_replace(' ', '', PHONE_KRISTINA);?>" title="Кристина Viber"><?php echo PHONE_KRISTINA;?></a> - Кристина</div>
							</div>
						</li>
						<li>
							<div class="social-networks">
								<div><a href="<?php echo INSTAGRAM_LINK;?>" target="_blank"><img src="/web/img/insta.jpg"></a></div>
								<div><a href="<?php echo VK_LINK;?>" target="_blank"><img src="/web/img/vk.jpg"></a></div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="bottom-footer-container grey-background">
				<div class="footer-info">
					<div>© 2017-<?php echo date("Y");?> Мебельный салон "Гранд-мебель" (ТЦ "Терра-Интерьера")</div>
					<div>
						<a href="/pages/admin/index.php">Админ</a>
						<?php if ($_SESSION['auth_admin'] == "yes_auth_admin") { ?>
							<span>  </span>
							<a href="javascript:void(0);" id="log-out">Выход</a>
						<?php } ?>
					</div>
				</div>
				<div><a href=""><img src="/web/img/LRS.jpg"></a></div>
			</div>
		</div>
	</footer>