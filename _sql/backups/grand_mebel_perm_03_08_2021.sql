-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: grand_mebel_perm
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `class1` varchar(255) DEFAULT NULL,
  `class2` varchar(255) DEFAULT NULL,
  `class3` varchar(255) DEFAULT NULL,
  `class4` varchar(255) DEFAULT NULL,
  `class5` varchar(255) DEFAULT NULL,
  `description` text,
  `img_f1` varchar(255) DEFAULT NULL,
  `desc_f1` varchar(255) DEFAULT NULL,
  `img_f2` varchar(255) DEFAULT NULL,
  `desc_f2` varchar(255) DEFAULT NULL,
  `img_f3` varchar(255) DEFAULT NULL,
  `desc_f3` varchar(255) DEFAULT NULL,
  `img_f4` varchar(255) DEFAULT NULL,
  `desc_f4` varchar(255) DEFAULT NULL,
  `img_b1` varchar(255) DEFAULT NULL,
  `desc_b1` varchar(255) DEFAULT NULL,
  `img_b2` varchar(255) DEFAULT NULL,
  `desc_b2` varchar(255) DEFAULT NULL,
  `img_b3` varchar(255) DEFAULT NULL,
  `desc_b3` varchar(255) DEFAULT NULL,
  `img_b4` varchar(255) DEFAULT NULL,
  `desc_b4` varchar(255) DEFAULT NULL,
  `description1` text,
  `img_f5` varchar(255) DEFAULT NULL,
  `desc_f5` varchar(255) DEFAULT NULL,
  `img_f6` varchar(255) DEFAULT NULL,
  `desc_f6` varchar(255) DEFAULT NULL,
  `img_f7` varchar(255) DEFAULT NULL,
  `desc_f7` varchar(255) DEFAULT NULL,
  `img_f8` varchar(255) DEFAULT NULL,
  `desc_f8` varchar(255) DEFAULT NULL,
  `img_b5` varchar(255) DEFAULT NULL,
  `desc_b5` varchar(255) DEFAULT NULL,
  `img_b6` varchar(255) DEFAULT NULL,
  `desc_b6` varchar(255) DEFAULT NULL,
  `img_b7` varchar(255) DEFAULT NULL,
  `desc_b7` varchar(255) DEFAULT NULL,
  `img_b8` varchar(255) DEFAULT NULL,
  `desc_b8` varchar(255) DEFAULT NULL,
  `description2` text,
  `img_f9` varchar(255) DEFAULT NULL,
  `desc_f9` varchar(255) DEFAULT NULL,
  `img_f10` varchar(255) DEFAULT NULL,
  `desc_f10` varchar(255) DEFAULT NULL,
  `img_f11` varchar(255) DEFAULT NULL,
  `desc_f11` varchar(255) DEFAULT NULL,
  `img_b9` varchar(255) DEFAULT NULL,
  `desc_b9` varchar(255) DEFAULT NULL,
  `img_b10` varchar(255) DEFAULT NULL,
  `desc_b10` varchar(255) DEFAULT NULL,
  `img_b11` varchar(255) DEFAULT NULL,
  `desc_b11` varchar(255) DEFAULT NULL,
  `description3` text,
  `img_f13` varchar(255) DEFAULT NULL,
  `desc_f13` varchar(255) DEFAULT NULL,
  `img_f14` varchar(255) DEFAULT NULL,
  `desc_f14` varchar(255) DEFAULT NULL,
  `img_f15` varchar(255) DEFAULT NULL,
  `desc_f15` varchar(255) DEFAULT NULL,
  `img_b13` varchar(255) DEFAULT NULL,
  `desc_b13` varchar(255) DEFAULT NULL,
  `img_b14` varchar(255) DEFAULT NULL,
  `desc_b14` varchar(255) DEFAULT NULL,
  `img_b15` varchar(255) DEFAULT NULL,
  `desc_b15` varchar(255) DEFAULT NULL,
  `description4` text,
  `img_f17` varchar(255) DEFAULT NULL,
  `desc_f17` varchar(255) DEFAULT NULL,
  `img_f18` varchar(255) DEFAULT NULL,
  `desc_f18` varchar(255) DEFAULT NULL,
  `img_f19` varchar(255) DEFAULT NULL,
  `desc_f19` varchar(255) DEFAULT NULL,
  `img_b17` varchar(255) DEFAULT NULL,
  `desc_b17` varchar(255) DEFAULT NULL,
  `img_b18` varchar(255) DEFAULT NULL,
  `desc_b18` varchar(255) DEFAULT NULL,
  `img_b19` varchar(255) DEFAULT NULL,
  `desc_b19` varchar(255) DEFAULT NULL,
  `description5` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Заметки',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Конфигурация мягкой мебели','three','two','two','three',NULL,'Диваны – основной и многофункциональный предмет интерьера. На данный момент производители мягкой мебели предлагают множество вариантов их конфигурации, при этом постоянно изобретаются новые модели диванов. Диваны имеют прямую и угловые формы. Сегодня более популярной является конечно угловая планировка. Но необходимо заметить, что данная конфигурация требует много места, так как угол намного габаритней прямого дивана и визуально съедает свободное пространство. Поэтому размер помещения является одним из основных критериев подбора мягкой мебели, наряду с ценой, наполнением и материалом. Дополнительно о механихмах раскладки вы можете прочитать <a href=articles.php?id=3 target=”_blink”>здесь</a>, а о выборе ткани <a href=articles.php?id=4 target=”_blink”>здесь</a>.<br>Средний по размерам, угловой диван-кровать в среднем будет стоить от 20 до 40 тысяч рублей плюс/минус 5 тысяч рублей. Прямой диван-кровать будет стоить примерно столько же, так как при раскладывании прямой диван — как и угловой — образует полноценное спальное место, и на их изготовление идёт примерно такое же количество материалов.<br>\r\nЛюбой прямой диван можно переконфигурировать в угловой диван. При этом сделав либо полноценный угол либо угол с помощью оттоманки.\r\n','1.jpg','Прямой диван','4.jpg','Угловой диван','2.jpg','Угловой диван с оттоманкой',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Точно так же можно сделать кресло для любого дивана. Кресло может быть простое для отдыха либо раскладное кресло-кровать.','див.jpg','Диван','кре.jpg','Кресло',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Еще одним вариантом выступает п-образный диван, являющийся своеобразным образцом развития углового дивана. <br> Диваны данного вида предназначены для зонирования больших помещений, а так же часто отличаются увеличенными размерами спального места.','4.jpg','Угловой диван','3.jpg','П-образный  диван',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Если вы располагаете достаточной площадью, то П-образный диван становится вполне практичным элементом меблировки, так как имеет несколько особенностей: предоставляет достаточное количество не только сидячих, но и спальных мест, а так же снимает проблему хранения вещей, если по всему периметру будут иметься ящики для хранения белья (зависит от <a href=articles.php?id=3 target=”_blink”>раскладного механизма</a>).<br>\r\nП-образные диваны могут быть симметричными, а так же разносторонними. Симметричные: либо углы с двух сторон, либо оттоманки. Разносторонние: с одной стороны угол с другой оттоманка. Хотя в принципе вариантов развития множество, так как сейчас некоторые производители предлагают различные встройки столов и раздвижных кресел в конструкцию дивана. \r\n','пп.jpg','П-образный диван','ппп.jpg','П-образный диван с двумя углами','пппп.jpg','П-образный диван с двумя оттоманками',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Виды раскладных механизмов','two','two','two','two',NULL,'Существует большое разнообразие механизмов раскладки диванов и при этом они постоянно множатся. Мы используем в основном механизмы бельгийского производства. Попробуем разобрать достоинства и недостатки механизмов представленных в нашем салоне. ','рм1.jpg','1. Книжка','рм2.jpg','2. Евро-книжка',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Диван <b>«Книжка»</b> - самый простой в производстве, поэтому самый экономичный, но при этом надежный. Плюсы: механизм легок в раскладке и дает возможность поместить в диван ящик для белья. Минусы: при раскладывании необходимо немного отодвигать от стены (хотя сейчас уже имеются модели книжек, так называемые «с нулевым шагом», которые отодвигать не нужно, например <a class=\"imagetip\" href= block.php?id=131 target=\"_blank\">диван Марсель<span><img class=\"alignnone\" src=\"img/131-диван-марсель.jpg\" /></span></a>).<br><br>\r\n<b>«Евро-книжка»</b> - надежный, универсальный и легкий в использовании вариант. Так же прост в раскладке, есть вместительный ящик для белья, не нужно отодвигать от стены, в отличие от обычной книжки, и при этом спальное место шире. Минус: возможно повреждение напольного покрытия от частых перемещений.\r\n','рм3.jpg','3. Аккордеон','рм4.jpg','4. Пантограф',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<b>«Аккордеон»</b> - является весьма популярным из-за широкого спального места в разложенном виде, имитирующего кровать, при относительно небольших габаритах самого дивана. Максимальная ширина механизма 2,05 м. При этом механизм достаточно долговечный, так как спинки практически не прикасаются при раскладке. Подходит для ежедневного использования. Возможны варианты с ящиком под белье, например в <a class=\"imagetip\" href= block.php?id=4 target=\"_blank\">диване Оскар<span><img class=\"alignnone\" src=\"img/4-диван-оскар.jpg\" /></span></a>.<br><br>\r\n<b>«Пантограф»</b> - отличная альтернатива евро-книжке, так как борется с проблемой повреждения напольного покрытия. А в остальном так же прост в эксплуатации, прочен и комфортен, с широким спальным местом, с нишей под белье. Один из лидеров продаж <a class=\"imagetip\" href= block.php?id=20 target=\"_blank\">диван Техно<span><img class=\"alignnone\" src=\"img/20-диван-техно2.jpg\" /></span></a>, как раз представитель данного механизма.\r\n','рм5.jpg','5. Дельфин','рм6.jpg','6. Лабиринт',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<b>«Дельфин»</b> - увы, вместительным ящиком для белья данный механизм похвастаться не может, поэтому чаще всего применяется в угловых диванах, зато диваны с таким механизмом имеют достаточно большое спальное место, например <a class=\"imagetip\" href= block.php?id=29 target=\"_blank\">угловой диван Тренд 2<span><img class=\"alignnone\" src=\"img/29-угловой-диван-тренд-22.jpg\" /></span></a>.','рм7.jpg','7. Французская раскладушка','рм8.jpg','8. Пума',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<b>«Французская раскладушка»</b> - часто используется в гостевых вариантах диванов, как например <a class=\"imagetip\" href= block.php?id=14 target=\"_blank\">диван Неаполь<span><img class=\"alignnone\" src=\"img/14-диван-неаполь.jpg\" /></span></a>, так как не предназначен для частого использования, к тому же не имеет ниши под белье. Хотя механизм сам по себе компактный и дает возможность экспериментировать с внешним видом дивана.  <br><br>\r\n<b>«Пума»</b> - новый, прочный и надежный механизм, легкий и простой в обращении. Часто используется в модульных диванах, например <a class=\"imagetip\" href= block.php?id=112 target=\"_blank\">модульный диван Конструктор<span><img class=\"alignnone\" src=\"img/112-модульный-диван-конструктор.jpg\" /></span></a>. Компактный диван раскладывается, превращаясь в просторное спальное место. Предназначен для ежедневного использования, хотя ниши под белье не имеет.\r\n'),(4,'Виды мебельных тканей ','four','three',NULL,NULL,NULL,'Одним из немаловажных критериев выбора мягкой мебли является подбор подходящей ткани. Какие ткани более подходят для семей с детьми, животными, для офисов и т.д.? Какие более износоустойчивы и прочны? Экологичные ткани? Постараемся разобрать основные их виды:','т1-микровелюр.jpg','Микровелюр','т2-рогожка.jpg','Рогожка','т3-кожзам.jpg','Кажзам','т4-замша.jpg ','Замша',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<b>«Микровелюр»</b> - тканевый материал, вид флоксов, от обычного велюра отличается длиной ворса. Прорезиненная основа, позволяет легко очищать ткань от загрязнений, поэтому микровелюр по праву считается антивандальной тканью. Подходит для клиентов, у которых дети или животные. Кошки не зацепляются коготками за ткань. Так же микровелюр гипоаллергенен, устойчив к выгоранию. <br><br>\r\n<b>«Рогожка»</b> - разновидность шенилловых тканей. Очень плотный, прочный и упругий материал, не мнется и не растягивается. Противопоказано с животными, так как данная ткань склонна к образованию зацепок. <br><br>\r\n<b>«Кожзам»</b> - высокотехнологичный материал, имитирующий натуральную кожу, однако более демократичный по цене. Прочная, износоустойчивая, при этом более неприхотлива в уходе, чем натуральная кожа. Однако в отличие от кожи кожзам почти не пропускает воздух, поэтому появляется риск скопления прений внутри мебели, по этой же причине подвержен воздействию перепада температур и влажности, выгоранию. Кожзам подходит для гостевых и офисных вариантов мебели.  <br><br>\r\n<b>«Замша»</b> - для производства мягкой мебели предпочитают использовать искусственную замшу, так как данный материал износостойкий, устойчив к выгоранию и влажности, не требует большого ухода. На вид практически не отличается от натуральной замши, при этом стоит гораздо дешевле. Ткань бархатистая, тактильно приятная и мягкая, в отличие от натуральной замшевой обивки не образует заломов и не боится царапин.\r\n','т5-экокожа.jpg','Экокожа','т6-жаккард.jpg','Жаккард','т7-терможаккард.jpg','Терможаккард',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<b>«Экокожа»</b> - прочный, гладкий и приятный на ощупь материал, полностью воздухопроницаемый. Данный материал был изобретен в США, дабы уменьшить количество убиваемых животных. Отлично подходит для изготовления одежды и обуви, но для производства именно мягкой мебели не советуем, хотя в остальном это отличное изобретение !! <br><br>\r\n<b>«Жаккард»</b> - изысканный стиль, внешний лоск и красота. Однако данный вид ткани не любит влажной уборки. Материал плотный и износоустойчивый, не теряет форму, гипоаллергенен. <br><br>\r\n<b>«Терможаккард»</b> - прочная, долговечная и износостойкая обивка для мягкой мебели, которая устойчива к перепадам температур и незначительным загрязнениям, однако подвержена воздействию солнечных лучей и не любит влажную уборку. Технология термопечати и стойкие красители помогают терможаккарду надолго сохранять четкость и яркость рисунка, насыщенность и богатство оттенков.\r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Матрасы','three',NULL,NULL,NULL,NULL,NULL,'м1.jpg','','м2.jpg','','м3.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'У нас представленный матрасы брендов Морфей, Perinka, Domingo. Различные размеры и наполнение матрасов, детские матрасы, и матрасы с памятью. <br><br>\r\nДля правильного подбора матраса советуем прочитать статью Комсомольской правды<a href=https://www.kp.ru/guide/kak-vybrat-matras.html target=”_blink”> «Как правильно выбрать матрас, или В поисках здорового сна»</a>.\r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Стеновые панели','one','one',NULL,NULL,NULL,'Пластиковые стеновые панели являются отличной альтернативой плитке, имеют широкую цветовую гамму. При этом их можно легко резать на загибы стены. Установка не требует тщательной подготовки стен, поэтому панели просто и быстро монтировать. Панели бывают матовые и глянцевые, размер 2800мм на 610мм. Матовые – 2800 руб., глянцевые – 3500 руб. <br><br>\r\nГлянцевые:\r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'сп11.jpg',NULL,'сп12.jpg',NULL,'сп13.jpg',NULL,NULL,NULL,'<p align=”center”><a href=http://albico.ru/products/fartuki-vysokoglyantsevye-6-mm/ target=”_blink”>Посмотреть все глянцевые панели</a></p><br><br>\r\nМатовые:\r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'сп21.jpg',NULL,'сп22.jpg',NULL,'сп23.jpg',NULL,NULL,NULL,'<p align=”center”><a href=http://albico.ru/products/fartuki-matovye-6mm/ target=”_blink”>Посмотреть все матовые панели 6мм</a><br>\r\n<a href=http://albico.ru/products/fartuki-matovye-4mm/ target=”_blink”>Посмотреть все матовые панели 4мм</a></p>\r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Мойки','three',NULL,NULL,NULL,NULL,NULL,'мойка500.jpg','500*600<br>1000 руб.','мойка600.jpg','600*600<br>1100 руб.','мойка800.jpg','800*600<br>1400 руб.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Мойки накладные на правую и левую сторону',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_nav`
--

DROP TABLE IF EXISTS `footer_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_nav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_nav`
--

LOCK TABLES `footer_nav` WRITE;
/*!40000 ALTER TABLE `footer_nav` DISABLE KEYS */;
INSERT INTO `footer_nav` VALUES (1,'Наши партнеры','partners.php'),(2,'Оплата, доставка, подъем и сборка мебели','payment.php'),(3,'Информация для оптовых покупателей','payment.php#whoresale'),(4,'Акции и новости','promotions.php'),(5,'Наши заметки','articles.php?id=1'),(6,'Мебель по индивидуальным заказам','special-offers.php');
/*!40000 ALTER TABLE `footer_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_nav`
--

DROP TABLE IF EXISTS `header_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_nav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_nav`
--

LOCK TABLES `header_nav` WRITE;
/*!40000 ALTER TABLE `header_nav` DISABLE KEYS */;
INSERT INTO `header_nav` VALUES (1,'Наши партнеры','partners.php'),(2,'Оплата и доставка','payment.php'),(3,'Новости и акции','promotions.php'),(4,'Наши заметки','articles.php?id=1'),(5,'Контакты','contacts.php'),(6,'Карта сайта','sitemap.php');
/*!40000 ALTER TABLE `header_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_promotion`
--

DROP TABLE IF EXISTS `news_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_promotion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identification` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_promotion`
--

LOCK TABLES `news_promotion` WRITE;
/*!40000 ALTER TABLE `news_promotion` DISABLE KEYS */;
INSERT INTO `news_promotion` VALUES (1,'sale20','Внимание! Скидка 20% на избранные товары!','nov-sale20.jpg','Успейте купить выстовочную мебель с невероятной скидкой 20%!'),(2,'mif','Обновление ассортимента!! В нашем салоне появился отдел фабрики МИФ!!','nov-МИФ.jpg','Мебельный салон \"Гранд-мебель\" дополняет свой ассортимент товарами пензенской мебельной фабрики МИФ. Сочетание цены и качества порадует всех покупателей. Кухни, корпусная мебель для гостиных, детских, спален и многое другое теперь вы сможете найти у нас. Заходите и подарите себе красоту и комфорт в своем доме!!'),(3,'wholesaleint','Приглашаем к сотрудничеству оптовиков !','nov-wholesale.jpg','Наш салон готов сотрудничать с оптовыми покупателями со всех регионов России. Прайс, информацию по доставке и оплате можно получить, обратившись по тел. 89082749069, либо писать на почту grandmebelperm@mail.ru\r\n\r\n'),(4,'modsofas','Представляем Вам эксклюзивные модульные диваны от фабрики Viktoria !','nov-modular.jpg','Предлагаем дополнить интерьер вашего дома потрясающими модульными диванами от мебельной фабрики Viktoria по самым привлекательным ценам !! Изящные формы, линии и изгибы перевернут ваше представление о стандартах типовой планировки в интерьере, помогут преобразить любое пространство !'),(5,'sale5weekend','Внимание! Скидка на мягкую мебель по выходным !!','nov-sale5weeken.jpg','Приглашаем Вас в наш мебельный салон !! Успейте получить скидку 5% в ближайшие выходные !!'),(6,'mirrors','В нашем ассортименте появились зеркала в шикарных рамах!','nov-mirrors.jpg','В нашем ассортименте появились зеркала в шикарных резных рамах под бронзу, серебро, беленное золото, различных размеров и форм от 3 000 руб. Так же появились другие товары для дома: картины и пастельное белье. '),(7,'insurance','Все виды страхования! КАСКО, ОСАГО, имущество, техосмотр, скидки!!','insurance.jpg','Все виды страхования! Страхование жизни, недвижимости, КАСКО, ОСАГО, техосмотр.<br>Тел. 89822583673 - Елена'),(8,'insurance2','Страхование - тел. 89822583673 - Елена','insurance2.jpg','Все виды страхования! Страхование жизни, недвижимости, КАСКО, ОСАГО, техосмотр.<br>Тел. 89822583673 - Елена');
/*!40000 ALTER TABLE `news_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'Мебельная фабрика \"Гранд-мебель\"','logogrand.jpg','https://vk.com/grandmebel59','Производство мягкой мебели','(Пермь)'),(2,'Мебельная фабрика \"Viktoria\"','logoviktoria.jpg','https://www.viktoria-perm.com','Производство мягкой мебели','(Пермь)'),(3,'Компания \"Сто диванов и диванчиков\"','logo100.jpg','http://stodivanov.ru/','Производство и продажа мягкой мебели','(Пермь)'),(4,'OOO \"Ломбард\"Кредитный двор\"','logokredit.jpg',NULL,'Товарный кредит, денежный кредит','(Пермь)'),(5,'Мебельная компания \"МИФ\"','logomif.jpg','http://mebelmif.ru/','Производство корпусной мебели','(Пенза)'),(6,'Мебельная фабрика \"Витра\" (\"DaVita\")','logodavita.jpg','https://davitamebel.ru/','Производство и продажа корпусной мебели','(Томск)'),(7,'Мебельная фабрика \"НИСОН\"','logonison.jpg','http://nison59.ru/','Производство и продажа корпусной мебели','(Пермь)'),(8,'Мебельная фабрика \"Триумф-М\"','logotriumphm.jpg',NULL,'Производство мебели','(Ульяновск)'),(9,'Мебельная фабрика \"Millenium\"','mfml.png',NULL,'Производство и продажа мягкой мебели','(Пермь)');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_categories`
--

DROP TABLE IF EXISTS `prod_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_for_bc` varchar(255) DEFAULT NULL,
  `pod_title_for_bc` varchar(255) DEFAULT NULL,
  `main_id` int NOT NULL,
  `title_id` int NOT NULL,
  `categories` int NOT NULL,
  `cat` int NOT NULL,
  `pod_cat` int NOT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_categories`
--

LOCK TABLES `prod_categories` WRITE;
/*!40000 ALTER TABLE `prod_categories` DISABLE KEYS */;
INSERT INTO `prod_categories` VALUES (1,NULL,'Sale',NULL,NULL,0,0,1,0,0,'sale.php'),(2,'Мягкая мебель','Вся мягкая мебель',NULL,NULL,2,0,2,2,0,'container.php?id=2'),(3,'Мягкая мебель','Диваны','Диваны',NULL,2,3,2,0,0,'container.php?id=3'),(4,'Мягкая мебель','Угловые диваны','Угловые диваны',NULL,2,4,2,0,0,'container.php?id=4'),(5,'Мягкая мебель','Модульные диваны','Модульные диваны',NULL,2,5,2,0,0,'container.php?id=5'),(6,'Мягкая мебель','Комплекты','Комплекты',NULL,2,6,2,0,0,'container.php?id=6'),(7,'Мягкая мебель','Кресла','Кресла',NULL,2,7,2,0,0,'container.php?id=7'),(8,'Мягкая мебель','Пуфы','Пуфы',NULL,2,8,2,0,0,'container.php?id=8'),(9,'Кухни','Вся кухонная мебель',NULL,NULL,9,0,9,3,0,'container.php?id=9'),(10,'Кухни','Кухонные гарнитуры','Кухонные гарнитуры',NULL,9,10,9,0,0,'container.php?id=10'),(11,'Кухни','Кухонные уголки','Кухонные уголки',NULL,9,11,9,0,0,'container.php?id=11'),(12,'Кухни','Столы обеденные','Столы обеденные',NULL,9,12,9,0,0,'container.php?id=12'),(13,'Кухни','Буфеты','Буфеты',NULL,9,13,9,0,0,'container.php?id=13'),(14,NULL,'Шкафы-купе',NULL,NULL,0,0,1,0,0,'wardrobes.php'),(15,'Корпусная мебель','Вся корпусная мебель',NULL,NULL,15,0,15,5,0,'container.php?id=15'),(16,'Корпусная мебель','Гостиные','Гостиные',NULL,15,16,15,0,0,'container.php?id=16'),(17,'Корпусная мебель','Спальни','Спальни',NULL,15,17,15,0,0,'container.php?id=17'),(18,'Корпусная мебель','Прихожие','Прихожие',NULL,15,18,15,0,0,'container.php?id=18'),(19,'Корпусная мебель','Детские ','Детские ',NULL,15,19,15,0,0,'container.php?id=19'),(20,'Корпусная мебель','Столы','Столы',NULL,15,20,15,0,0,'container.php?id=20'),(21,'Корпусная мебель','Столы письменные/компьютерные','Столы','Столы письменные/компьютерные',15,20,7,20,20,NULL),(22,'Корпусная мебель','Столы туалетные','Столы','Столы туалетные',15,20,7,20,20,NULL),(23,'Корпусная мебель','Столы журнальные','Столы','Столы журнальные',15,20,7,20,20,NULL),(24,'Корпусная мебель','Столы-книжки','Столы','Столы-книжки',15,20,7,20,20,NULL),(25,'Корпусная мебель','Модульные шкафы','Модульные шкафы',NULL,15,25,15,0,0,'container.php?id='),(26,'Корпусная мебель','Шкафы двустворчатые','Модульные шкафы','Шкафы двустворчатые',15,25,8,25,25,NULL),(27,'Корпусная мебель','Шкафы трехстворчатые','Модульные шкафы','Шкафы трехстворчатые',15,25,8,25,25,NULL),(28,'Корпусная мебель','Шкафы четырехстворчатые','Модульные шкафы','Шкафы четырехстворчатые',15,25,8,25,25,NULL),(29,'Корпусная мебель','Шкафы угловые','Модульные шкафы','Шкафы угловые',15,25,8,25,25,NULL),(30,'Корпусная мебель','Кровати','Кровати',NULL,15,0,15,0,0,NULL),(31,'Корпусная мебель','Кровати','Кровати','Кровати',15,30,0,30,30,NULL),(32,'Корпусная мебель','Кровати детские','Кровати','Кровати детские',15,30,0,30,30,NULL),(33,'Корпусная мебель','Пеналы','Пеналы',NULL,15,33,15,0,0,NULL),(34,'Корпусная мебель','Стеллажи','Стеллажи',NULL,15,34,15,0,0,NULL),(35,'Корпусная мебель','Стеллажи прямые','Стеллажи','Стеллажи прямые',15,34,10,34,34,NULL),(36,'Корпусная мебель','Стеллажи угловые','Стеллажи','Стеллажи угловые',15,34,10,34,34,NULL),(37,'Корпусная мебель','Комоды','Комоды',NULL,15,37,15,0,0,NULL),(38,'Корпусная мебель','Тумбы','Тумбы',NULL,15,38,15,0,0,NULL),(39,'Корпусная мебель','Полки','Полки',NULL,15,39,15,0,0,NULL),(40,'Корпусная мебель','Вешалки','Вешалки',NULL,15,40,15,0,0,NULL),(41,'Другое','Другое',NULL,NULL,15,0,1,0,0,'other.php');
/*!40000 ALTER TABLE `prod_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anchor` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `main_cat` int NOT NULL,
  `cat` int NOT NULL,
  `prod_cat` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'softfurniture','Вся мягкая мебель',2,0,0),(2,'sofas','Диваны',2,3,0),(3,'cornersofas','Угловые диваны',2,4,0),(4,'modularsofas','Модульные диваны',2,5,0),(5,'softfurnituresets','Комплекты',2,6,0),(6,'armchairs','Кресла',2,7,0),(7,'poufs','Пуфы',2,8,0),(8,'kitchen','Вся кухонная мебель',9,0,0),(9,'kitchensets','Кухонные гарнитуры',9,10,0),(10,'kitchensofas','Кухонные уголки',9,11,0),(11,'diningtables','Обеденные столы',9,12,0),(12,'buffets','Буфеты',9,13,0),(13,'cabinetfurniture','Вся корпусная мебель',15,0,0),(14,'livingrooms','Гостинные',15,16,0),(15,'bedrooms','Спальни',15,17,0),(16,'hallwayfurniture','Прихожие',15,18,0),(17,'childrensfurniture','Детские',15,19,0),(18,'tables','Столы',15,20,0),(19,'writingcomputertables','Письменные/компьютерные столы',0,20,21),(20,'dressingtables','Туалетные столики',0,20,22),(21,'coffeetables','Журнальные столики',0,20,23),(22,'booktables','Столы-книжки',0,20,24),(23,'modularcabinets','Модульные шкафы',15,25,0),(24,'doublewardrobes','Двустворчатые шкафы',0,25,26),(25,'threedoorwardrobes','Трехстворчатые шкафы',0,25,27),(26,'fourdoorwardrobes','Четырехстворчатые шкафы',0,25,28),(27,'cornerwardrobes','Угловые шкафы',0,25,29),(28,'beds','Кровати',15,30,0),(29,'adultbeds','Кровати для взрослых',0,30,31),(30,'childrensbeds','Детские кровати',0,30,32),(31,'wardrobepencilcase','Пеналы',15,33,0),(32,'racks','Стеллажи',15,34,0),(33,'straightracks','Прямые стеллажи',0,34,35),(34,'cornerracks','Угловые стеллажи',0,34,36),(35,'chestofdrawers','Комоды',15,37,0),(36,'pedestals','Тумбы',15,38,0),(37,'shelves','Полки',15,39,0),(38,'hangers','Вешалки',15,40,0);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_nav`
--

DROP TABLE IF EXISTS `product_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_nav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `cat` int NOT NULL,
  `identification` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_nav`
--

LOCK TABLES `product_nav` WRITE;
/*!40000 ALTER TABLE `product_nav` DISABLE KEYS */;
INSERT INTO `product_nav` VALUES (1,'%Sale',0,'sale','sale.php'),(2,'Мягкая мебель',1,NULL,'container.php?id=2'),(9,'Кухни',1,NULL,'container.php?id=9'),(14,'Шкафы-купе',0,NULL,'wardrobes.php'),(15,'Корпусная мебель',1,NULL,'container.php?id=15'),(41,'Другое ',0,NULL,'other.php');
/*!40000 ALTER TABLE `product_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `categories` int NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `old_price` int NOT NULL,
  `sale_price` int NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `maker` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `depth` varchar(255) DEFAULT NULL,
  `other_dimensions` varchar(255) DEFAULT NULL,
  `main_cat` int NOT NULL,
  `cat` int NOT NULL,
  `pod_cat` int NOT NULL,
  `description` text,
  `folding_mechanism` varchar(255) DEFAULT NULL,
  `filling` varchar(255) DEFAULT NULL,
  `metal_frame` int NOT NULL,
  `removable_case` int NOT NULL,
  `angle_universal` int NOT NULL,
  `niche_under_taundry` int NOT NULL,
  `wallpaper_protection` int NOT NULL,
  `adjustable_headrests` int NOT NULL,
  `backrest_positions` int NOT NULL,
  `additionally` text,
  `tag_for_kd` int NOT NULL,
  `price0` int NOT NULL,
  `price1` int NOT NULL,
  `price2` int NOT NULL,
  `price3` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Диван Ника-эконом',2,'1-диван-ника-эконом.jpg','',10400,0,0,NULL,'Общие размеры: 1900*900','Гранд-мебель',NULL,'1900*','900','Спальное место: 1850*1400',2,3,0,NULL,'Евро-книжка,','пружинный блок,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(2,'Диван Ника',2,'2-диван-ника.jpg','',14000,0,0,NULL,'Общие размеры: 2050*900 ','Гранд-мебель',NULL,'2050*','900','Спальное место: 1900*1500',2,3,0,NULL,'Евро-книжка,','пружинный блок, ',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(3,'Диван Сильвия',2,'3-диван-сильвия.jpg','',30000,0,0,NULL,'Массив бук','Viktoria',NULL,'2300*','1020','Спальное место: 1900*1500',2,3,0,NULL,'Евро-книжка,','пружинный блок,',0,0,0,0,0,0,0,'массив бук',0,0,0,0,0),(4,'Диван Оскар',2,'4-диван-оскар.jpg','',23000,0,0,NULL,'Общие размер: 1800*1100','Гранд-мебель',NULL,'1800*','1100','Спальное место: 1500*2100',2,3,0,NULL,'Аккордеон,','пенополиуретан,',1,1,0,1,1,0,0,NULL,0,0,0,0,0),(5,'Диван София',2,'5-диван-софия.jpg','',27000,0,0,NULL,'Подлокотники массив','Viktoria',NULL,'2050*','1000','Спальное место: 1950*1400',2,3,0,NULL,'Книжка,','пружинный матрас,',1,1,0,1,0,0,1,'подлокотники массив',0,0,0,0,0),(7,'Диван Маркиз',2,'7-диван-маркиз.jpg','',26300,0,0,NULL,'Общие размеры: 2200*1000','Viktoria',NULL,'2200*','1000',NULL,2,3,0,NULL,'Пантограф,','пружинный блок,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(8,'Диван Каприз',2,'8-диван-каприз.jpg','',19800,0,0,NULL,'Общие размеры: 1900*1000','Viktoria',NULL,'1900*','1000',NULL,2,3,0,NULL,'Книжка,','пружинный блок',1,1,0,1,0,0,1,NULL,0,0,0,0,0),(10,'Диван Соло Массив',2,'10-диван-соло-массив.jpg','',27000,0,0,NULL,'Массив бук','Viktoria',NULL,'1850*','1000','Спальное место: 2000*1600',2,3,0,NULL,'Аккордеон,','пружинный блок,',0,0,0,0,0,0,0,'массив бук',0,0,0,0,0),(11,'Диван Цезарь',2,'11-диван-цезарь.jpg','',29000,0,0,NULL,'Массив бук','Viktoria',NULL,'2160*','1007','Спальное место: 1940*1500',2,3,0,NULL,'Евро-книжка,','пенополиуретан,',0,0,0,0,0,0,0,'массив бук',0,0,0,0,0),(12,'Диван Делиос',2,'12-диван-делиос.jpg','',24500,0,0,NULL,'Полки в подлокотниках','Viktoria',NULL,'1950*','1000','Спальное место: 1900*2050',2,3,0,NULL,'Аккордеон,','пенополиуретан,',0,1,0,1,1,0,0,'полки в подлокотниках',0,0,0,0,0),(13,'Диван Император',2,'13-диван-император2.jpg','13-диван-император.jpg',27000,0,0,NULL,'С перекидным матрасом','Viktoria',NULL,'2450*','900','Спальное место: 1600*1900',2,3,0,NULL,'Евро-книжка,','пенополиуретан,',0,0,0,1,0,0,0,'с перекидным матрасом',0,0,0,0,0),(14,'Диван Неаполь',2,'14-диван-неаполь.jpg','',40000,0,0,NULL,'Гостевой вариант','Viktoria',NULL,'2100*','1000','Спальное место: 1400*1900',2,3,0,NULL,'Французская раскладушка,',NULL,0,0,0,0,0,0,0,'гостевой вариант',0,0,0,0,0),(15,'Диван Классик-Люкс 2',2,'15-диван-классик-люкс-2.jpg','',27500,0,0,NULL,'Массив бук','Viktoria',NULL,'2150*','1000','Спальное место: 1950*1350',2,3,0,NULL,'Книжка,','пружинный блок,',1,1,0,1,0,0,1,'массив бук',0,0,0,0,0),(16,'Диван Даллас 2',2,'16-диван-даллас-2.jpg','16.jpg',22950,0,0,NULL,'Общие размеры: 2120*1000','Viktoria',NULL,'2120*','1000','Спальное место: 1950*1350',2,3,0,NULL,'Книжка, ','пружинный блок,',1,1,0,1,0,0,1,NULL,0,0,0,0,0),(17,'Диван Комфорт 2',2,'17-диван-комфорт-2.jpg','',27000,0,0,NULL,'Общие размеры: 2300*900','Viktoria',NULL,'2300*','900','Спальное место: 1900*1250',2,3,0,NULL,'Дельфин,',NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(18,'Диван Фаворит ',2,'18-диван-фаворит.jpg','',43000,0,0,NULL,'Массив бук','Viktoria',NULL,'1720*','1050','Спальное место: 1550*2100',2,3,0,NULL,'Аккордеон,','пенополиуретан,',0,0,0,0,0,0,0,'массив бук',0,0,0,0,0),(19,'Диван Фаворит 2 ',2,'19-диван-фаворит-2.jpg','',43000,0,0,NULL,'Массив бук','Viktoria',NULL,'1720*','1050','Спальное место: 1550*2100',2,3,0,NULL,'Аккордеон,','пенополиуретан,',0,0,0,0,0,0,0,'массив бук',0,0,0,0,0),(20,'Диван Техно',2,'20-диван-техно2.jpg','20-диван-техно.jpg',25650,0,0,NULL,'Общие размеры: 2200*1000','Viktoria',NULL,'2000*','1000','Спальное место: 1500*1900',2,3,0,NULL,'Пантограф,','пружинный блок,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(21,'Диван Нью-Йорк',2,'21-диван-нью-йорк2.jpg','21-диван-нью-йорк.jpg',25000,0,0,NULL,'Общие размеры: 2200*1050','Viktoria',NULL,'2200*','1050','Спальное место: 1500*1900',2,3,0,NULL,'Евро-книжка,','пружинный блок,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(22,'Диван Михаэль',2,'22-диван-михаэль.jpg','',28000,0,0,NULL,'Новинка!','Viktoria',NULL,NULL,NULL,NULL,2,3,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(23,'Угловой диван Император',2,'23-угловой-диван-император.jpg','',43000,0,0,NULL,'Общие размеры: 3100*1900','Viktoria',NULL,'3100*','1900','Спальное место: 2400*1500',2,4,0,NULL,'Евро-книжка,','пенополиуретан,',0,0,0,1,0,0,0,'с перекидным матрасом',0,0,0,0,0),(25,'Угловой диван Версаль',2,'25-угловой-диван-версаль.jpg','',37400,0,0,NULL,'Общие размеры: 2700*1900','Гранд-мебель',NULL,'2700*','1900',NULL,2,4,0,NULL,'Дельфин,','пружинный блок,',0,0,1,1,0,0,0,NULL,0,0,0,0,0),(26,'Угловой диван Мюнхен',2,'26-угловой-диван-мюнхен.jpg','',38800,0,0,NULL,'Общие размеры: 2700*1650','Гранд-мебель',NULL,'2700*','1650',NULL,2,4,0,NULL,'Дельфин,',NULL,0,1,1,1,0,0,0,NULL,0,0,0,0,0),(27,'Угловой диван Тренд',2,'27-угловой-диван-тренд.jpg','',29900,0,0,NULL,'Общие размеры: 2650*1650','Гранд-мебель',NULL,'2650*','1650',NULL,2,4,0,NULL,'Дельфин,','пружинный блок,',0,0,1,1,0,0,0,NULL,0,0,0,0,0),(28,'Угловой диван Каприз',2,'28-угловой-диван-каприз.jpg','',42400,0,0,NULL,'Общие размеры: 3150*1600','Viktoria',NULL,'3150*','1600','Спальное место: 1950*1400<br>\r\n2-ое спальное место: 960*1950',2,4,0,NULL,'Книжка,','пружинный блок,',1,1,1,1,0,0,1,NULL,0,0,0,0,0),(29,'Угловой диван Тренд 2',2,'29-угловой-диван-тренд-22.jpg','29-угловой-диван-тренд-2.jpg,29-угловой-диван-тренд-222.jpg',37400,0,0,'','Регулируемые подголовники','Гранд-мебель',NULL,'2650*','1650',NULL,2,4,0,NULL,'Дельфин,','пружинный блок,',0,0,1,1,0,1,0,NULL,0,0,0,0,0),(30,'Угловой диван Бруклин',2,'30-угловой-диван-бруклин2.jpg','30-угловой-диван-бруклин.jpg',38700,0,0,NULL,'Общие размеры: 2600*1800','Гранд-мебель',NULL,'2600*','1800',NULL,2,4,0,NULL,'Дельфин,','пружинный блок,',0,0,1,1,0,1,0,NULL,0,0,0,0,0),(32,'Угловой диван Неаполь',2,'32-угловой-диван-неаполь.jpg','',55000,0,0,NULL,'Общие размеры: 3000*2100','Viktoria',NULL,'3000*','2100','Спальное место: 1400*1900',2,4,0,NULL,'Французская раскладушка',NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(33,'Угловой диван Кардинал Мини',2,'33-угловой-диван-кардинал-мини.jpg','',30000,0,0,NULL,'Полки в подлокотниках','Viktoria',NULL,'2320*','1750','Спальное место: 2000*2000',2,4,0,NULL,'Аккордеон,',NULL,0,0,0,0,0,0,0,'полки в подлокотниках',0,0,0,0,0),(34,'Угловой диван Комфорт',2,'34-угловой-диван-комфорт.jpg','',38000,0,0,NULL,'Общие размеры: 2350*1600','Viktoria',NULL,'2350*','1600','Спальное место: 1900*1250',2,4,0,NULL,'Дельфин,','пенополиуретан',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(35,'Угловой диван Тик-Так',2,'35-угловой-диван-тик-так.jpg','',32000,0,0,NULL,'Общие размеры: 2350*1480','Viktoria',NULL,'2350*','1480','Спальное место: 1400*2000',2,4,0,NULL,'Евро-книжка,','пружинный блок',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(37,'Угловой диван Цезарь',2,'37-угловой-диван-цезарь.jpg','',36100,0,0,NULL,'Общие размеры: 2700*1600','Гранд-мебель',NULL,'2700*','1600',NULL,2,4,0,NULL,'Аккордеон,','пружинный блок,',1,1,1,1,1,0,0,NULL,0,0,0,0,0),(38,'П-образный диван Каприз',2,'38-п-образный-диван-каприз.jpg','',55000,0,0,NULL,'Общие размеры: 4200*1600','Viktoria',NULL,'4200*','1600','Спальное место: 3850*1400',2,4,0,NULL,'Евро-книжка,','пружинный блок,',1,1,0,0,0,0,0,NULL,0,0,0,0,0),(39,'Угловой диван Каприз Мини',2,'39-угловой-диван-каприз-мини.jpg','',35000,0,0,'','Общие размеры: 2600*1600','Viktoria',NULL,'2600*','1600',NULL,2,4,0,NULL,'Книжка,','пружинный блок/пеноплиуретан,',1,1,1,1,0,0,1,NULL,0,0,0,0,0),(40,'Угловой диван Нью-Йорк',2,'40-угловой-диван-нью-йорк2.jpg','40-угловой-диван-нью-йорк.jpg',32400,0,0,NULL,'Общие размеры: 2400*1500','Viktoria\r\n',NULL,'2400*','1500','Спальное место: 2100*1500',2,4,0,NULL,'Евро-книжка,','пружинный блок,',0,0,1,1,0,0,0,NULL,0,0,0,0,0),(41,'Угловой диван Михаэль',2,'41-угловой-диван-михаэль.jpg','',35000,0,0,NULL,'Новинка!','Viktoria',NULL,NULL,NULL,NULL,2,4,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(43,'Модульный диван Александрия',2,'43-модульный-диван-александрия.jpg','',32000,0,0,NULL,'Новинка! Модульный диван!','Viktoria',NULL,'2900*','1950',NULL,2,5,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(44,'Модульный диван Александрия 2',2,'44-модульный-диван-александрия-2.jpg','',32000,0,0,NULL,'Новинка! Модульный диван!','Viktoria',NULL,'3400*','1200','Банкетка: 1900*1000',2,5,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(45,'Комплект Даллас',2,'45-комплект-даллас.jpg','',41000,0,0,NULL,'Диван + кресло-кровать + пуф!','Viktoria',NULL,'дивана: 2120*','1000','Спальное место дивана: 1950*1350<br>\r\nОбщий размер кресла: 900*1000<br>\r\nСпальное место кресла: 900*1300<br>\r\nОбщий размер пуфа: 600*600',2,6,0,'Диван + кресло-кровать + пуф!','Книжка,','пружинный блок,',1,1,0,1,0,0,1,NULL,0,0,0,0,0),(48,'Кресло Ника ',2,'48-кресло-ника.jpg','',5000,0,0,NULL,'Компактное кресло для отдыха','Гранд-мебель',NULL,'750*','750*',NULL,2,7,0,'Компактное кресло для отдыха',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(49,'Кресло-кровать Ника',2,'49-кресло-кровать-ника.jpg','',10000,0,0,NULL,'Общий размер: 970*900','Гранд-мебель',NULL,'970*','900','Спальное место: 970*1960',2,7,0,NULL,NULL,'Пружинный блок,',0,0,0,0,0,0,0,'раскладывается вперед',0,0,0,0,0),(50,'Кресло-кровать Манхеттен',2,'50-кресло-кровать-манхеттен.jpg','',18000,0,0,NULL,'Общие размеры: 900*1000','Viktoria',NULL,'900*','1000','Спальное место: 900*1300',2,7,0,NULL,'Книжка,',NULL,1,1,0,1,0,0,0,NULL,0,0,0,0,0),(51,'Диванчик Ника',2,'51-диванчик-ника.jpg','',10000,0,0,NULL,'Общие размеры: 1120*900','Гранд-мебель',NULL,'1120*','900','Спальное место: 1120*1096',2,7,0,NULL,NULL,'Пружинный блок,',0,0,0,0,0,0,0,'раскладывается вперед',0,0,0,0,0),(52,'Пуф Бочонок ',2,'52-пуф-бочонок.jpg','',1000,0,0,NULL,'Размеры: 400*400','Гранд-мебель',NULL,'400*','400',NULL,2,8,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(53,'Пуф Квадратный ',2,'53-пуф-квадратный.jpg','',1000,0,0,NULL,'Размеры: 400*400','Гранд-мебель',NULL,'400*','400',NULL,2,8,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(54,'Пуф Квадратный большой',2,'54-пуф-квадратный-большой.jpg','',3000,0,0,NULL,'Размеры: 600*600','Гранд-мебель',NULL,'600*','600',NULL,2,8,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(55,'Пуф Сенатор',2,'55-пуф-сенатор.jpg','',2000,0,0,NULL,'Размеры: 600*400','Гранд-мебель',NULL,'600*','600',NULL,2,8,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(56,'Кухня Лиза 2',3,'56-кухня-лиза-22.jpg','56-кухня-лиза-2.jpg',11300,0,0,'(цена за кухню 1,6 м)','Фасады резные МДФ','МИФ',NULL,'',NULL,NULL,9,10,0,'Фасады резные МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,1,11300,14200,14400,15100),(58,'Кухня Оранж',3,'58-кухня-оранж.jpg','',48000,0,0,'(цена за кухню 1,6 м)','Ширина: 1600','DaVita',NULL,'1600',NULL,NULL,9,10,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(59,'Кухня Ирина',3,'59-кухня-ирина2.jpg','59-кухня-ирина.jpg',11100,0,0,'(цена за кухню 1,6 м)','Фасады резные МДФ','МИФ',NULL,'',NULL,NULL,9,10,0,'Фасады резные МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,1,11100,14200,14400,14900),(60,'Кухня Волна',3,'60-кухня-волна.jpg','',11200,0,0,'(цена за кухню 1,6 м)','Фасады резные МДФ глянец','МИФ',NULL,'',NULL,NULL,9,10,0,'Фасады резные МДФ глянец',NULL,NULL,0,0,0,0,0,0,0,NULL,1,11200,14400,14700,15100),(61,'Кухонный уголок Полет',3,'61-кухонный-уголок-полет.jpg','',6200,0,0,NULL,'Уголок, стол и два табурета!','Гранд-мебель',NULL,'1450*','1100',NULL,9,11,0,'Уголок, стол и два табурета',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(62,'Кухонный уголок Комфорт',3,'62-кухонный-уголок-комфорт.jpg','',16200,0,0,NULL,'Со спальным местом','Гранд-мебель',NULL,'2000*','1200','Спальное место: 1800*1050',9,11,0,NULL,NULL,NULL,0,0,0,0,0,0,0,'Со спальным местом',0,0,0,0,0),(63,'Стол С 08',3,'63-стол-с-08.jpg','',4800,0,0,NULL,'Ножки - дерево','Triumph.m','','','','В разложенном виде: 1370*600',9,12,0,'Раскладывается. Ножки - дерево',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(64,'Стол обеденный с ящиком',3,'64-стол-обеденный-с-ящиком.jpg','',2000,0,0,NULL,'Раскладывается','Нисон','750*','600*','600','В разложенном виде: 750*1200*600',9,12,0,'Раскладывается ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(65,'Стол C 08',3,'65-стол-с-08.jpg','',4600,0,0,NULL,'Ножки - хром','Triumph.m','','1100*','700','В разложенном виде: 1400*700',9,12,0,'Раскладывается. Ножки - хром',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(66,'Стол обеденный Орфей 16',3,'66-стол-обеденный-орфей-16.jpg','',12100,0,0,NULL,'Раскладывается','DaVita','700*','1000*','750','	\r\nВ разложенном виде: 700*2000*750',9,12,0,'Раскладывается',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(67,'Буфет Констанция',3,'67-буфет-1400-констанция.jpg','67-буфет-вероника.jpg',12200,0,0,NULL,'Четырехстворчатый','МИФ','2270*','1400*','430',NULL,9,13,0,'Четырехстворчатый буфет. Фасады МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(68,'Прихожая Нисон',5,'68-прихожая-нисон.jpg','',11600,0,0,NULL,'Модульная','Нисон','2270*','2550*','390',NULL,15,18,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(69,'Прихожая Лея',5,'69-прихожая-лея.jpg','',3500,0,0,NULL,'Общие размеры: 1950*800*350 ','Нисон','1950*','800*','350',NULL,15,18,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(70,'Стенка Юниор 2',5,'70-стенка-юниор-2.jpg','',16800,0,0,NULL,'Общие размеры: 2000*2550*520 ','МИФ','2000*','2550*','520',NULL,15,19,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(71,'Уголок школьника Юниор',5,'71-уголок-школьника-юниор.jpg','',4300,0,0,NULL,'Общие размеры: 1445*1425*600 \r\n','Нисон','1445*','1425*','600',NULL,15,20,21,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(72,'Стол письменный ',5,'72-стол-письменный.jpg','',2400,0,0,NULL,'Общие размеры: 740*1100*570','Нисон','740*','1100*','570',NULL,15,20,21,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(73,'Стол компьютерный СТК-1 ',5,'73-стол-компьютерный-стк-1.jpg','',1800,0,0,NULL,'Общие размеры: 1320*800*500','Нисон','1320*','800*','500*',NULL,15,20,21,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(74,'Стол компьютерный СКУ-2 ',5,'74-стол-компьютерный-ску-2.jpg','',4000,0,0,NULL,'Общие размеры: 1150*860*740 ','Нисон','1150* ','860*','740',NULL,15,20,21,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(75,'Стол сервировочный Финский ',5,'75-стол-сервировочный-финский.jpg','',1400,0,0,NULL,'Размеры: 640*700*500 ','Нисон','640*','700*','500',NULL,15,20,23,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(76,'Стол книжка малая',5,'76-стол-книжка-малая.jpg','',1900,0,0,NULL,'Размеры: 720*740*240(1550 )','Нисон','720*','740*','240','В разложенном виде: 720*740*1550',15,20,24,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(77,'Шкаф для одежды ',5,'77-шкаф-для-одежды.jpg','',3400,0,0,NULL,'Двустворчатый','Нисон','2270*','600*','390',NULL,15,25,26,'Двустворчатый шкаф',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(78,'Шкаф Вега',5,'78-шкаф-вега.jpg','',6900,0,0,NULL,'Двустворчатый','МИФ','2200*','800*','380',NULL,15,25,26,'Двустворчатый шкаф',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(79,'Шкаф Нафаня',5,'79-шкаф-нафаня.jpg','',5700,0,0,NULL,'Двустворчатый','Нисон','2000*','800*','420',NULL,15,25,26,'Двустворчатый шкаф',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(80,'Шкаф Мария',5,'80-шкаф-мария.jpg','',16700,0,0,NULL,'Четырехстворчатый','МИФ','2116*','1600*','540',NULL,15,25,28,'Четырехстворчатый шкаф',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(81,'Кровать Сакура',5,'81-кровать-сакура.jpg','',6600,0,0,NULL,'Общие размеры: 800*2030*1030','МИФ','800*','2030*','1030',NULL,15,30,31,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(82,'Кровать Вега',5,'82-кровать-вега.jpg','',6500,0,0,NULL,'Общие размеры: 952*2032*650 \r\n\r\n\r\n\r\n\r\n\r\n','МИФ','952*','2032*','650',NULL,15,30,32,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(83,'Кровать Дельфин',5,'83-кровать-дельфин.jpg','',6800,0,0,NULL,'Общие размеры: 800*1630*850 ','МИФ','800*','1630*','850',NULL,15,30,32,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(85,'Комод универсальный',5,'85-комод-универсальный.jpg','',3600,0,0,NULL,'Размеры: 850*1070*450 ','Нисон','850*','1070*','450',NULL,15,37,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(86,'Комод 700',5,'86-комод-700.jpg','',2600,0,0,NULL,'Размеры: 805*720*450 ','Нисон','805*','720*','450',NULL,15,37,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(87,'Комод Джокер',5,'87-комод-джокер.jpg','',2700,0,0,NULL,'Размеры: 805*720*450 ','Нисон','805*','720*','450',NULL,15,37,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(88,'Комод пеленальный ',5,'88-комод-пенальный.jpg','',2900,0,0,NULL,'Размеры: 930*820*450 ','Нисон','930*','820*','450',NULL,15,37,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(89,'Комод 500',5,'89-комод-500.jpg','',2300,0,0,NULL,'Размеры: 990*520*450 ','Нисон','990*','520*','450',NULL,15,37,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(90,'Тумба под ТВ',5,NULL,'',1500,0,0,NULL,'Размеры: 630*660*410 ',NULL,'630*','660*','410',NULL,15,38,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(91,'Тумба высокая',5,'91-тумба-высокая.jpg','',1800,0,0,NULL,'Размеры: 955*450*390','Нисон','955*','450*','390',NULL,15,38,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(92,'Тумба низкая ',5,'92-тумба-низкая.jpg','',1500,0,0,NULL,'Размеры: 515*900*390','Нисон','515*','900*','390',NULL,15,38,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(93,'Тумба прикроватная Сакура',5,'93-тумба-прикроватная-сакура.jpg','',1500,0,0,NULL,'Размеры: 466*400*430 ','МИФ','466*','400*','430',NULL,15,38,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(94,'Тумба прикроватная Дуэт',5,'94-тумба-прикроватная-дуэт.jpg ','',1400,0,0,NULL,'Размеры: 450*420*425 ','Нисон','450*','420*','425',NULL,15,38,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(95,'Вешалка со штангой ',5,'95-вешалка-со-штангой.jpg','',2100,0,0,NULL,'Размеры: 2270*600*390 ','Нисон','2270*','600*','390',NULL,15,40,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(96,'Вешалка открытая',5,'96-вешалка-открытая.jpg','',1700,0,0,NULL,'Размеры: 1700*900*280','Нисон','1700*','900*','280',NULL,15,40,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(97,'Подставка под цветы',6,'97-подставка-под-цветы.jpg','',4000,0,0,NULL,'Массив дерево',NULL,'1000*','600*','250',NULL,41,0,0,'Массив дерево',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(99,'Подставка под цветы Лапки',6,'99-подставка-под-цветы-лапки.jpg','',2000,0,0,NULL,'Массив дерево',NULL,'350*','300*','300',NULL,41,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(100,'Вешалка Слуга',6,'100-вешалка-слуга.jpg','',2500,0,0,NULL,'Массив дерево',NULL,'900*','500*','450',NULL,41,0,0,'Массив дерево',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(101,'Зеркало Нисон',6,'101-зеркало-нисон.jpg','',1100,0,0,NULL,'Размеры: 950*450*36','Нисон','950*','450*','36',NULL,41,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(102,'Модуль Сенатор',6,'102-модуль-сенатор.jpg','',7000,0,0,NULL,'Размеры: 1000*600','Гранд-мебель','','1000*','600',NULL,41,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(103,'Диван Марк',2,'103-диван-марк.jpg','',10800,0,0,NULL,'Общие размеры: 1900*900',NULL,NULL,'1900*','900','Спальное место: 1900*1200',2,3,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(104,'Диванчик Дени',2,'104-диванчик-дени.jpg','',8700,0,0,NULL,'Общие размеры: 920*1000',NULL,NULL,'920*','1000','Спальное место: 920*1950',2,7,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(106,'Кухня Эвкалипт',3,'106-кухня-эвкалипт.jpg','',10800,0,0,'(цена за кухню 1,6 м)','Ширина: 1800','МИФ',NULL,'',NULL,NULL,9,10,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,1,10800,13900,14200,14600),(107,'Диван Манго',2,'107-диван-манго.jpg','',19500,0,0,NULL,'Общие размеры: 2100*1000',NULL,NULL,'2100*','1000',NULL,2,3,0,NULL,'Книжка,','пружинный матрас,',1,1,0,0,0,0,1,NULL,0,0,0,0,0),(108,'Диван Версаль',2,'108-диван-версаль.jpg','',27000,0,0,NULL,'Классический вариант!','Гранд-мебель',NULL,NULL,NULL,NULL,2,3,0,NULL,'Дельфин,','пружина, полиуретан,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(109,'П-образный диван Версаль',2,'109-п-образный-диван-версаль.jpg','',0,0,0,NULL,'Классический вариант!','Гранд-Мебель',NULL,NULL,NULL,NULL,2,4,0,NULL,'Дельфин,','пружинный блок,',0,0,1,1,0,0,0,NULL,0,0,0,0,0),(110,'Угловой диван Версаль',2,'110-уголовой-диван-версаль.jpg','',37400,0,0,NULL,'Классический вариант!','Гранд-мебель',NULL,NULL,NULL,NULL,2,4,0,NULL,'Дельфин,','пружинный блок,',0,0,1,1,0,0,0,NULL,0,0,0,0,0),(111,'П-образный диван Мюнхен',2,'111-п-образный-диван-мюнхен.jpg','',60000,0,0,NULL,'Отличный вариант!','Гранд-мебель',NULL,NULL,NULL,NULL,2,4,0,NULL,'Дельфин,',NULL,0,1,1,1,0,0,0,NULL,0,0,0,0,0),(112,'Модульный диван Конструктор',2,'112-модульный-диван-конструктор.jpg','',22000,0,0,'(цена за один\r\n модуль)','Цена за один модуль','Гранд-мебель',NULL,NULL,NULL,NULL,2,5,0,NULL,'Пума',NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(113,'Диван Доминик',2,'113-диван-доминик.jpg','',15500,0,0,NULL,'Общие размеры: 2100*1000','Viktoria',NULL,'2100*','1000',NULL,2,3,0,NULL,'Книжка, ','пружинный блок,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(114,'Диван Сенатор',2,'114-диван-сенатор.jpg','',22950,0,0,NULL,'Общие размеры: 2150*1050','Гранд-мебель',NULL,'2150*','1050',NULL,2,3,0,NULL,'Евро-книжка,','пружинный блок,',0,0,0,1,1,0,0,NULL,0,0,0,0,0),(115,'Буфет Вероника',3,'115-буфет-вероника.jpg','',7500,0,0,NULL,'Двухстворчатый','МИФ','2250*','800*','400',NULL,9,13,0,'Двустворчатый буфет. Фасады МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(116,'Буфет Вероника ',3,'116-буфет-вероника.jpg','',7500,0,0,NULL,'Угловой','МИФ','2250*','574*','312',NULL,9,13,0,'Угловой буфет. Фасады МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(117,'Стол ламберный с ящиком',3,'117-стол-ламберный.jpg','',3800,0,0,NULL,'С ящиком','Triumph.m',NULL,'800*','600','В разложенном виде: 1200*600',9,12,0,'Раскладывается. С ящиком',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(118,'Стол С 010',3,'118-стол-с-010.jpg','',6800,0,0,NULL,'Раскладывается ','Triumph.m',NULL,'900*','900','В разложенном виде: 1500*900',9,12,0,'Раскладывается',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(119,'Стол Квадро Плюс',3,'119-стол-квадро.jpg','',9500,0,0,NULL,'Раскладывается','Triumph.m',NULL,'1100*','700','В разложенном виде: 1300*700',9,12,0,'Раскладывается',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(120,'Угловой диван Элвис',2,'120-угловой-диван-элвис.jpg','',32400,0,0,NULL,'Общие размеры: 2350*1550','Viktoria',NULL,'2350*','1550',NULL,2,4,0,NULL,'Пантограф,','пенополиуретан, ',0,0,1,1,1,0,0,NULL,0,0,0,0,0),(123,'Угловой диван Фаворит',2,'123-угловой-диван-фаворит.jpg','',90000,0,0,NULL,'Уникальное предложение!','Viktoria',NULL,'2900*','1800','Спальное место: 1800*2100',2,4,0,NULL,'Аккордеон,','пенополиуретан,',1,0,0,0,0,0,0,'массив',0,0,0,0,0),(125,'Обувница Нисон',5,'125-обувница-нисон.jpg','',2000,0,0,NULL,'Общие размеры: 1085*600*240','Нисон','1085*','600*','240',NULL,15,18,0,'Три секции для обуви',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(126,'Кухня Констанция',3,'126-кухня-констанция.jpg','',11100,0,0,'(цена за кухню 1,6 м)','Фасады МДФ',NULL,NULL,NULL,NULL,NULL,9,10,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,1,11100,14000,14200,14900),(127,'Стол обеденный Солярис',3,'127-стол-обеденный-солярис.jpg','',8500,0,0,NULL,'Несколько вариантов печати на стекло','Triumph.m',NULL,'1100*','700',NULL,9,12,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(128,'Диван Ника',3,'128-диван-ника.jpg','',22950,0,0,NULL,'Общие размеры: 2250*1000','Гранд-мебель',NULL,'2250*','1000','Спальное место: 1900*1500',2,3,0,NULL,'Еврокнижка,','пружинный блок, ',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(129,'Диван Верона ',3,'129-диван-верона.jpg','',26000,0,0,NULL,'Общие размеры: 2400*1000','Гранд-мебель',NULL,'2400*','1000','Спальное место: 1900*1300',2,3,0,NULL,'Дельфин,','пружина змейка, пенополиуретан,',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(131,'Диван Марсель',3,'131-диван-марсель.jpg','',32500,0,0,NULL,'Новинка!','Viktoria',NULL,'2200*','1010','Спальное место: 1900*1400',2,3,0,NULL,'Книжка,','независимая пружина, ',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(133,'Диван Комфорт',3,'133-диван-комфорт.jpg','',33000,0,0,NULL,'Миниатюрный','Vicktoria',NULL,'2000*','900','Спальное место: 1900*1500',2,3,0,NULL,'Венеция, ',NULL,1,0,0,1,0,0,0,NULL,0,0,0,0,0),(134,'Тумба Мария',5,'134-тумба-мария.jpg','',2000,0,0,NULL,'Фасады МДФ','МИФ','630*','450*','460',NULL,15,38,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(135,'Комод Мария',5,'135-комод-мария.jpg','',6700,0,0,NULL,'Фасады МДФ','МИФ','816*','900*','460',NULL,15,37,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(136,'Шкаф Жасмин',5,'136-шкаф-жасмин.jpg','',10900,0,0,NULL,'Трехстворчатый','МИФ','2216*','1350*','540',NULL,15,25,27,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(137,'Тумба прикроватная Бася',5,'137-тумба-прикроватная-бася.jpg','',800,0,0,NULL,'Общие размеры: 416*350*370','МИФ','416*','350*','370',NULL,15,38,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(138,'Кухня Техно-1',3,'138-кухня-техно-1.jpg','',11100,0,0,'(цена за кухню 1,6 м)','Фасады МДФ','МИФ',NULL,NULL,NULL,NULL,9,10,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,1,11100,14000,14200,14900),(139,'Диван Честер',2,'139-диван-честер.jpg','',15600,0,0,NULL,'Общие размеры: 1900*900','Viktoria',NULL,'1900*','900','Спальное место: 1900*1500',2,3,0,NULL,'Евро-книжка, ','пружинный блок, ',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(140,'Диван Честер 2',2,'140-диван-честер-2.jpg','',32500,0,0,NULL,'Новинка !!!','Viktoria',NULL,'2065*','1100','Спальное место: 2050*1500',2,3,0,NULL,'Пантограф,','пружинный блок,',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(141,'Угловой диван Мария',2,'141-угловой-диван-мария.jpg','',33700,0,0,NULL,'Общие размеры: 2600*1850',NULL,NULL,'2600*','1850','Спальное место: 1300*1950',2,4,0,NULL,'Дельфин, ','пенополиуретан, ',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(142,'Диван',3,'142-диван.jpg','',35000,0,0,NULL,'Каретная стяжка','Viktoria',NULL,NULL,NULL,NULL,2,3,0,NULL,'Французская раскладушка,',NULL,0,0,0,0,0,0,0,'каретная стяжка',0,0,0,0,0),(143,'Угловой диван Милан',2,'143-угловой-диван-милан.jpg','',34000,0,0,'','Общие размеры: 2400*1650',NULL,NULL,'2400*','1650','Спальное место: 1350*2050',2,4,0,NULL,'Дельфин, ','пенополиуретан,',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(144,'Кухня Белфорд',3,'144-кухня-белфорд.jpg','',16400,0,0,'(цена за кухню 1,8 м)','Фасады МДФ','МИФ',NULL,NULL,NULL,NULL,9,10,0,'Размеров 1,6 1,7 м - нет',NULL,NULL,0,0,0,0,0,0,0,NULL,1,0,0,16400,16700),(146,'Кухня Констанция-1',3,'146-кухня-констанция-1.jpg','',11900,0,0,'(цена за кухню 1,6 м)','Фасады МДФ','МИФ',NULL,NULL,NULL,NULL,9,10,0,'Фасады МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,1,11900,14900,15100,15900),(147,'Стол Хаммер',3,'147-стол-хаммер.jpg','',8700,0,0,NULL,'Самораскладывающийся','Triumph-m',NULL,'1200*','750','В разложенном виде: 1500*750',9,12,0,'Самораскладывающийся',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(148,'Стол-книжка С-02',5,'148-стол-книжка-с-02.jpg','',4400,0,0,NULL,'Металлические ножки','Triumph-m',NULL,NULL,NULL,NULL,15,20,24,'Металлические ножки',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(149,'Комод Ким',5,'149-комод-ким.jpg','',4900,0,0,NULL,'Фасады-глянцевые','МИФ','910*','850*','446',NULL,15,37,0,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(150,'Тумба Ким',5,'150-тумба-ким.jpg','',1600,0,0,NULL,'Фасады-глянцевые','МИФ','350*','500*','374',NULL,15,38,0,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(151,'Шкаф Ким',5,'151-шкаф-трехстворчатый-ким.jpg','',13000,0,0,NULL,'Фасады-глянцевые','МИФ','2236*','1500*','524',NULL,15,25,27,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(152,'Шкаф Ким',5,'152-шкаф-двухстворчатый-ким.jpg','',8300,0,0,NULL,'Фасады-глянцевые','МИФ','2236*','1000*','524',NULL,15,25,26,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(153,'Пенал Ким',5,'153-пенал-ким.jpg','',5300,0,0,NULL,'Фасады-глянцевые','МИФ','2236*','500*','524',NULL,15,33,0,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(154,'Угловой шкаф Ким',5,'154-шкаф-угловой-ким.jpg','',7600,0,0,NULL,'Фасады-глянцевые','МИФ','2236*','874*','874',NULL,15,25,29,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(155,'Шкаф Ненси',5,'155-шкаф-трехстворчатый-ненси.jpg','',13000,0,0,NULL,'Фасады-глянцевые','МИФ','2236*','1500*','524',NULL,15,25,27,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(156,'Шкаф Ненси',5,'156-шкаф-двухстворчатый-ненси.jpg','',8300,0,0,NULL,'Фасады-глянцевые','МИФ','2236*','1000*','524',NULL,15,25,26,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(157,'Пенал Ненси',5,'157-пенал-ненси.jpg','',5300,0,0,NULL,'Фасады-глянцевые','МИФ','2236*','500*','524',NULL,15,33,0,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(158,'Пуф',2,'158-пуф.jpg','',1500,0,0,NULL,'Плетение ручной работы',NULL,'400*','400*','400',NULL,2,8,0,'Плетение ручной работы',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(159,'Пуф Сенатор',2,'159-пуф-сенатор.jpg','',1300,0,0,NULL,'Общие размеры: 400*400*400',NULL,'400*','400*','400',NULL,2,8,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(160,'Пуф',2,'160-пуф.jpg','',1500,0,0,NULL,'Общие размеры: 400*400*400',NULL,'400*','400*','400',NULL,2,8,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(161,'Тумба под ТВ Ким',5,'161-тумба-под-тв-ким.jpg','',4500,0,0,NULL,'Фасады-глянцевые','МИФ','543*','1600*','420',NULL,15,38,0,'Фасады-глянцевые',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(162,'Кресло Стиль',2,'162-кресло-стиль.jpg','',8200,0,0,NULL,'Для отдыха!',NULL,'900*','750*','750',NULL,2,7,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(163,'Диван Техно МДФ',0,'163-диван-техно-мдф.jpg',NULL,27650,0,0,NULL,'С МДФ накладками',NULL,NULL,'2300*','1000','Спальное место: 1960*1500',2,3,0,NULL,'Евро-книжка,','пружинный блок, ',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(164,'Диван Софт',2,'164-диван-софт.jpg',NULL,18300,0,0,NULL,'Общие размеры: 1900*1000','',NULL,'1900*','1000','Спальное место: 1900*1850',2,3,0,NULL,'Книжка,','пружинный блок,',1,1,0,1,0,0,1,NULL,0,0,0,0,0),(165,'Диван Милена',2,'165-диван-милена.jpg',NULL,27000,0,0,NULL,'Деревянные подлокотники',NULL,NULL,'2130*','1050','Спальное место: 2050*1900',2,3,0,NULL,'Аккордеон,','пенополиуретан,',1,1,0,1,1,0,0,'деревянные подлокотники',0,0,0,0,0),(166,'Пуф с каретной стяжкой ',2,'166-пуф.jpg',NULL,3200,0,0,NULL,'С нишей',NULL,'400*','750*','380',NULL,2,8,0,NULL,NULL,NULL,0,0,0,0,0,0,0,'с нишей',0,0,0,0,0),(167,'Диван Капри',2,'167-диван-капри.jpg',NULL,22300,0,0,NULL,'Деревянные подлокотники',NULL,NULL,'1500*','1150','Спальное место: 1300*2050',2,3,0,NULL,'Аккордеон,','пенополиуретан,',1,1,0,1,0,0,0,'деревянные подлокотники',0,0,0,0,0),(168,'Диван Лофт',2,'168-диван-лофт.jpg',NULL,18500,0,0,NULL,'С деревянными ножками','Гранд-мебель',NULL,'1900*','960','Спальное место: 1900*1400',2,3,0,NULL,'Евро-книжка,','пружинный блок,',0,0,0,1,0,0,0,'деревянные ножки',0,0,0,0,0),(169,'Гостиная Гармония',5,'169-гостиная-гармония.jpg',NULL,17500,0,0,NULL,'Ниша под ТВ: 1700*1168','МИФ','2100*','2400*','440','Ниша под ТВ: 1700*1168',15,16,0,'Фасады глянцевые МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(170,'Модульная гостиная Ким',5,'170-гостиная-модульная-ким.jpg',NULL,22900,0,0,NULL,'Фасады глянцевые МДФ','МИФ','2060*','3600*','424','Ниша под ТВ: 1600',15,16,0,'Фасады белые глянцевые МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(171,'Модульная гостиная Ненси',5,'171-гостиная-модульная-ненси.jpg',NULL,18100,0,0,NULL,'Фасады глянцевые МДФ','МИФ','2170*','2800*','426','Ниша под ТВ: 1200',15,16,0,'Фасады глянцевые МДФ. Цвета: белый и капучино ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(172,'Гостиная Мини-2',5,'172-гостиная-мини-2.jpg',NULL,9800,0,0,NULL,'Фасады глянцевые МДФ','МИФ','2152*','2354*','450','ниша под ТВ: 1354*766',15,16,0,'Фасады белые глянцевые МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(173,'Комод Ника 1200',5,'173-комод-1200-ника.jpg',NULL,5600,0,0,NULL,'Фасады глянцевые МДФ','МИФ','985*','1200*','450',NULL,15,37,0,'Фасады глянцевые МДФ. Цвета: белый и капучино ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(174,'Комод Ника 850',5,'174-комод-850-ника.jpg',NULL,4900,0,0,NULL,'Фасады глянцевые МДФ','МИФ','910*','850*','446',NULL,15,37,0,'Фасады глянцевый МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(175,'Тумба Ким',5,'175-тумба-ким.jpg',NULL,4500,0,0,NULL,'Фасады глянцевые МДФ','МИФ','1050*','1000*','424',NULL,15,37,0,'Фасады белые глянцевые МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(176,'Модульная гостиная Оскар',5,'176-гостиная-модульная-оскар.jpg',NULL,16500,0,0,NULL,'С подсветкой','МИФ','2120*','2676*','470','Ниша под ТВ: 1300',15,16,0,'Фасады ЛДСП, пенал с подсветкой ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(177,'Гостиная Ненси',5,'177-гостиная-ненси.jpg',NULL,16800,0,0,NULL,'Фасады глянцевые МДФ','МИФ','2170*','2800*','426','Ниша под ТВ: 1200*1096',15,16,0,'Фасады глянцевые МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(178,'Шкаф со стеклом',5,'178-шкаф-стеклом-ненси.jpg',NULL,6700,0,0,NULL,'Фасады глянцевые МДФ','МИФ','2170*','800*','330',NULL,15,25,26,'Фасады глянцевые МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(179,'Пенал Ника',5,'179-пенал-ника.jpg',NULL,5300,0,0,NULL,'Фасады глянцевые МДФ','МИФ','2236*','500*','524',NULL,15,33,0,'Фасады глянцевые МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(180,'Шкаф с подсветкой',5,'180-шкаф-подсветкой-ким.jpg',NULL,12200,0,0,NULL,'Фасады глянцевый МДФ','МИФ','2060*','1000*','424',NULL,15,25,26,'Фасады белые глянцевые МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(181,'Шкаф Ника',5,'181-шкаф-двухстворчатый-ника.jpg',NULL,8300,0,0,NULL,'Двухстворчатый ','МИФ','2236*','1000*','524',NULL,15,25,26,'Фасады глянцевые МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(182,'Шкаф Ника',5,'182-шкаф-трехстворчатый-ника.jpg',NULL,13000,0,0,NULL,'Трехстворчатый','МИФ','2236*','1500*','524',NULL,15,25,27,'Фасады глянцевые МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(183,'Тумба под ТВ Ненси',5,'183-тумба-под-тв-ненси.jpg',NULL,3300,0,0,NULL,'Фасады глянцевые МДФ','МИФ','452*','1200*','426',NULL,15,38,0,'Фасады глянцевые МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(184,'Тумба Ника ',5,'184-тумба-ника.jpg',NULL,3400,0,0,NULL,'Комплект из 2 шт.','МИФ','350*','500*','374',NULL,15,38,0,'Комплект из 2 шт. Фасады глянцевые МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(185,'Комод Ненси',5,'185-комод-ненси.jpg',NULL,5600,0,0,NULL,'Фасады глянцевые МДФ ','МИФ','985*','1200*','450',NULL,15,37,0,'Фасады глянцевые МДФ. Цвета: белый и капучино',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(186,'Комод Неаполь',5,'186-комод-неаполь.jpg',NULL,3100,0,0,NULL,'Общие размеры: 800*816*430','МИФ','816*','800*','430',NULL,15,37,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(187,'Кровать Вега-2',5,'187-кровать-вега-2.jpg',NULL,6200,0,0,NULL,'Со вторым спальным местом','МИФ','720*','2032*','952',NULL,15,30,32,'Со вторым спальным местом',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(188,'Кровать Алекс ',5,'188-кровать-алекс.jpg',NULL,6800,0,0,NULL,'С ящиками','МИФ','850*','2036*','800',NULL,15,30,32,'С ящиками',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(189,'Кровать двухярусная Юниор-1',5,'189-кровать-двухярусная-юниор-1.jpg',NULL,11600,0,0,NULL,'Фасады глянцевые МДФ','МИФ','1670*','2034*','900',NULL,15,30,32,'Фасады глянцевые МДФ. Цвета: бирюзовый и розовый',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(190,'Кровать Юниор-3',5,'190-кровать-юниор-3.jpg',NULL,7100,0,0,NULL,'Фасады МДФ','МИФ','800*','1635*','850',NULL,15,30,32,'Фасады МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(191,'Кровать Неаполь',0,'191-кровать-неаполь.jpg',NULL,6200,0,0,NULL,'С ящиком ','МИФ','680*','2036*','834',NULL,15,30,32,'С ящиком',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(192,'Детская Юниор-3',5,'192-детская-юниор-3.jpg',NULL,20000,0,0,NULL,'Фасады МДФ','МИФ','2050*','3135*','850',NULL,15,19,0,'Фасады МДФ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(193,'Пенал Вега со стеклом',5,'193-пенал-стеклом-вега.jpg',NULL,6000,0,0,NULL,'Со стеклом','МИФ','2200*','400*','402',NULL,15,33,0,'Со стеклом',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(194,'Пенал Вега открытый ',5,'194-пенал-вега.jpg',NULL,4100,0,0,NULL,'Общие размеры: 400*2200*402','МИФ','2200*','400*','402',NULL,15,33,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(195,'Пенал Вега ',0,'195-пенал-закрытый-вега.jpg',NULL,4900,0,0,NULL,'Общие размеры: 400*2200*402','МИФ ','2200*','400*','402',NULL,15,33,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(196,'Шкаф Неаполь',5,'196-шкаф-неаполь.jpg',NULL,6600,0,0,NULL,'С ящиком','МИФ','1844*','800*','544',NULL,15,25,26,'С ящиком',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(197,'Угловой шкаф Вега ',5,'197-шкаф-угловой-вега.jpg',NULL,8300,0,0,NULL,'Общие размеры: 2200*800*402','МИФ','2200*','800*','402',NULL,15,25,29,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(198,'Стеллаж Неаполь открытый ',5,'198-стеллаж-открытый-неаполь.jpg',NULL,3900,0,0,NULL,'Общие размеры: 800*1844*336','МИФ','1844*','800*','336',NULL,15,34,35,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(199,'Стеллаж Неаполь',5,'199-стеллаж-неаполь.jpg',NULL,3900,0,0,NULL,'Общие размеры: 800*1844*320','МИФ','1844*','800*','320',NULL,15,34,36,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(200,'Стеллаж Юниор-1',5,'200-стеллаж-юниор-1.jpg',NULL,2900,0,0,NULL,'Общие размеры: 360*1550*370','МИФ ','1550*','360*','370',NULL,15,34,35,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(201,'Стол письменный Вега ',0,'201-стол-вега.jpg',NULL,3300,0,0,NULL,'Общие размеры: 1100*750*550','МИФ','750*','1100*','550',NULL,15,20,21,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(202,'Стеллаж Вега',5,'202-стеллаж-угловой-вега.jpg',NULL,2900,0,0,NULL,'Угловой','МИФ','2200*','380*','380',NULL,15,34,36,'Угловой',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(203,'Тумба Юниор-1',5,'203-тумба-выкатная-юниор-1.jpg',NULL,1500,0,0,NULL,'Выкатная','МИФ','650*','360*','370',NULL,15,38,0,'Выкатная ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(204,'Детская Неаполь',5,'204-детская-неаполь.jpg',NULL,25600,0,0,NULL,'Модульная','МИФ',NULL,NULL,NULL,NULL,15,19,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(205,'Детская Юниор-1',5,'205-детская-юниор-1.jpg',NULL,24700,0,0,NULL,'Модульная ','МИФ',NULL,NULL,NULL,NULL,15,19,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(206,'Шкаф Юниор-3',5,'206-шкаф-юниор-3.jpg',NULL,7600,0,0,NULL,'С ящиками','МИФ','2050*','800*','520',NULL,15,25,26,'С ящиками',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(207,'Стол Юниор-3 ',5,'207-стол-юниор-3.jpg',NULL,3800,0,0,NULL,'С надстройкой ','МИФ','1800*','700*','520',NULL,15,20,21,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(208,'Кухня Ольха ',3,'208-кухня-ольха.jpg',NULL,14000,0,0,'(цена за кухню 1,8 м)','Фасады МДФ','МИФ',NULL,NULL,NULL,NULL,9,10,0,'Размеров 1,6 1,7 м - нет',NULL,NULL,0,0,0,0,0,0,0,NULL,1,0,0,14000,14900),(209,'Кухня Техно-2',3,'209-кухня-техно-2.jpg',NULL,15300,0,0,'(цена за кухню 1,7 м)','Новинка!','МИФ',NULL,NULL,NULL,NULL,9,10,0,'Размера 1,6 м - нет ',NULL,NULL,0,0,0,0,0,0,0,NULL,1,0,15300,15500,16000),(210,'Кухня Техно-3',0,'210-кухня-техно-3.jpg',NULL,16000,0,0,'(цена за кухню 2,0 м)','Новинка!','МИФ ',NULL,NULL,NULL,NULL,9,10,0,'Размеров 1,6 1,7 1,8 м - нет',NULL,NULL,0,0,0,0,0,0,0,NULL,1,0,0,0,16000),(211,'Кухня Лиза-1',3,'211-кухня-лиза-1.jpg',NULL,10600,0,0,'(цена за кухню 1,6 м)','Фасады МДФ','МИФ',NULL,NULL,NULL,NULL,9,10,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,1,10600,13500,13700,14300),(212,'Кухня Настя',3,'212-кухня-настя.jpg',NULL,11900,0,0,'(цена за кухню 1,6 м)','Фасады МДФ','МИФ',NULL,NULL,NULL,NULL,9,10,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,1,11900,14900,15100,15900),(213,'Кухня Сказка ',3,'213-кухня-сказка.jpg',NULL,10500,0,0,'(цена за кухню 1,6 м)','Фасады резные МДФ','МИФ',NULL,NULL,NULL,NULL,9,10,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,1,10500,13300,13500,14100),(215,'Кухня Техно',3,'215-кухня-техно.jpg',NULL,0,0,0,NULL,'Модульная ','МИФ',NULL,NULL,NULL,NULL,9,10,0,'Модульная ',NULL,NULL,0,0,0,0,0,0,0,NULL,1,0,0,0,0),(216,'Буфет Ольха ',3,'216-буфет-1400-ольха.jpg',NULL,13100,0,0,NULL,'Четырехстворчатый ','МИФ','2250*','1400*','400',NULL,9,13,0,'Четырехстворчатый ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(217,'Буфет Ольха ',3,'217-буфет-800-ольха.jpg',NULL,7500,0,0,NULL,'Двухстворчатый ','МИФ','2250*','800*','400',NULL,9,13,0,'Двухстворчатый ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(218,'Буфет Ольха ',3,'218-буфет-угловой-ольха.jpg',NULL,8100,0,0,NULL,'Угловой ','МИФ','2250*','574*','312',NULL,9,13,0,'Угловой ',NULL,NULL,0,0,0,0,0,0,0,NULL,0,0,0,0,0),(219,'Тахта Жасмин',2,'219-тахта-жасмин.jpg',NULL,13500,0,0,NULL,'Общие размеры: 2030*900','МИФ',NULL,'2030*','900','Спальное место: 1900*800',2,3,0,NULL,NULL,'пенополиуретан,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(220,'Угловой диван Мадрид',2,'220-угловой-диван-мадрид.jpg',NULL,36000,0,0,NULL,'Общие размеры: ','МИФ',NULL,'2400*','1600',NULL,2,4,0,NULL,'Тройная трансформация,','пружинный блок, ',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(221,'Угловой диван Милан',2,'221-угловой-диван-милан.jpg',NULL,37800,0,0,NULL,'Эффектный и удобный ',NULL,NULL,NULL,NULL,NULL,2,4,0,NULL,'Дельфин,','пружинный блок,',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(222,'Диванчик Бемби',2,'222-диванчик-бемби.jpg',NULL,6000,0,0,NULL,'Отлично для детской',NULL,NULL,'1400*','820',NULL,2,3,0,NULL,',','пенополиуретан, ',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(223,'Угловой диван Милена',2,'223-угловой-диван-милена.jpg',NULL,32500,0,0,NULL,'Общие размеры: 2230*1500',NULL,NULL,'2230*','1500','Спальное место: 1850*770',2,4,0,NULL,'Аккордеон, ','пенополиуретан,',1,1,1,1,1,0,0,'ортопедические латы',0,0,0,0,0),(224,'Диван Хилтон МДФ',2,'224-диван-хилтон-мдф.jpg',NULL,14900,0,0,NULL,'Подлокотники МДФ',NULL,NULL,'2100*','900','Спальное место: 1900*1260',2,3,0,NULL,'Книжка, ','пружинный блок, ',0,0,0,1,0,0,0,'подлокотники МДФ',0,0,0,0,0),(225,'Диванчик Хилтон',2,'225-диванчик-хилтон.jpg',NULL,18300,0,0,NULL,'Общие размеры: 1450*1020',NULL,NULL,'1450*','1020','Спальное место: 1200*2000',2,3,0,NULL,'Евро-книжка,','пружинный блок,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(226,'Угловой диван Кристина 2',2,'226-угловой-диван-кристина-2.jpg',NULL,31100,0,0,NULL,'Общие размеры: 2500*1750',NULL,NULL,'2500*','1750','Спальное место: 1960*1280',2,4,0,NULL,'Дельфин,','пружинный блок, ',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(227,'Угловой диван Баваро',2,'227-угловой-диван-баваро.jpg',NULL,37800,0,0,NULL,'Общие размеры: 2400*1750',NULL,NULL,'2400*','1750','Спальное место: 2050*1400',2,4,0,NULL,'Дельфин,','пружинный блок,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(228,'Диван Атриум',2,'228-диван-атриум.jpg',NULL,14500,0,0,NULL,'Общие размеры: 2060*960',NULL,NULL,'2060*','960','Спальное место: 1900*1400',2,3,0,NULL,'Евро-книжка,','пружинный блок,',0,0,0,1,0,0,0,NULL,0,0,0,0,0),(229,'Кресло-кровать Верона',2,'229-кресло-кровать-верона.jpg',NULL,19000,0,0,NULL,'Общие размеры: 1100*900',NULL,NULL,'1100*','900','Спальное место: 600*1900',2,7,0,NULL,'Дельфин,','пружинный блок,',0,0,0,0,0,0,0,NULL,0,0,0,0,0),(230,'Диван Амстердам',2,'230-диван-амстердам.jpg',NULL,37800,0,0,NULL,'Раскладная угловая секция',NULL,NULL,'2600*','1070(1500)','Спальное место: 2200*1500',2,3,0,NULL,'Пантограф,','пружинный блок,',0,0,0,1,0,0,0,'раскладная угловая секция',0,0,0,0,0),(231,'Пуф Футон',2,'231-пуф-футон.jpg',NULL,5400,0,0,NULL,'Раскладывается в полукруг',NULL,NULL,NULL,NULL,NULL,2,8,0,NULL,NULL,NULL,0,0,0,0,0,0,0,'Раскладывается в полукруг',0,0,0,0,0),(232,'Кухня Техно бетон',3,'232-кухня-техно-бетон.jpg',NULL,0,0,0,NULL,'Модульная','МИФ',NULL,NULL,NULL,NULL,9,10,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,1,0,0,0,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `message_date` datetime NOT NULL,
  `processed` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (26,'Татьяна','89129869835','','Хочу заказать диван,как долго будет делаться и сколько стоить?','2020-04-28 09:52:37',NULL),(51,'Татьяна','89223560491','maximel80@mail.ru','Нужен угловой диван','2020-05-27 14:13:12',NULL);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `section_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'% Sale',1,'sale'),(2,'Мягкая мебель',2,'softfurniture'),(3,'Кухни',9,'kitchen'),(4,'Шкафы-купе',14,'wardrobe'),(5,'Корпусная мебель',15,'cabinetfurniture'),(6,'Другое',41,'other');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spam`
--

DROP TABLE IF EXISTS `spam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `message_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spam`
--

LOCK TABLES `spam` WRITE;
/*!40000 ALTER TABLE `spam` DISABLE KEYS */;
INSERT INTO `spam` VALUES (1,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 21:52:46'),(2,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 21:52:46'),(3,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 21:52:48'),(4,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 21:52:48'),(5,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 21:53:22'),(6,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 21:53:22'),(7,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 21:54:02'),(8,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 21:54:02'),(9,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 22:11:11'),(10,'Олег','79018088804','oleg@zakaz555.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 22:11:11'),(11,'Rfay','','test@mail.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 22:12:14'),(12,'Rfay','','test@mail.ru','Промокоды Яндекс Директ в 2021 году. Если Вы хотите экономить на рекламном бюджете до 70% с промокодами с бонусами от 3000 до 10000 рублей смотрите видео по ссылке https://bit.ly/2L3tu1K .','2021-05-15 22:12:14'),(13,'Kfhbcf','1310419655','test@gmail.com','п реклама','2021-07-28 21:46:32'),(14,'Kfhbcf','09054947851','testLisunsReg@yahoo.com','реклама','2021-07-28 21:48:27'),(15,'Kfhbcf','1310419655','test@gmail.com','реклама','2021-07-29 20:25:28');
/*!40000 ALTER TABLE `spam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'grandmebelperm','grandmebelperm');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-03 22:43:34
