/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.1.19-MariaDB : Database - papergrass
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`papergrass` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `papergrass`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (4,'2016_12_04_134440_create_products_table',1),(5,'2016_12_05_040257_create_users_table',1),(6,'2016_12_06_022232_create_orders_table',1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `orders` */

insert  into `orders`(`id`,`user_id`,`cart`,`address`,`name`,`payment_id`,`created_at`,`updated_at`) values (12,4,'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:7;a:3:{s:3:\"qty\";i:8;s:5:\"price\";i:280000;s:4:\"item\";O:11:\"App\\Product\":23:{s:8:\"\0*\0table\";s:8:\"products\";s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:7;s:9:\"imagePath\";s:73:\"https://parkinglotconfessional.files.wordpress.com/2010/05/sketchbook.png\";s:5:\"title\";s:10:\"Book Cover\";s:11:\"description\";s:144:\"Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll\";s:5:\"price\";i:35000;s:10:\"created_at\";s:19:\"2016-12-06 02:27:41\";s:10:\"updated_at\";s:19:\"2016-12-06 02:27:41\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:7;s:9:\"imagePath\";s:73:\"https://parkinglotconfessional.files.wordpress.com/2010/05/sketchbook.png\";s:5:\"title\";s:10:\"Book Cover\";s:11:\"description\";s:144:\"Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll\";s:5:\"price\";i:35000;s:10:\"created_at\";s:19:\"2016-12-06 02:27:41\";s:10:\"updated_at\";s:19:\"2016-12-06 02:27:41\";}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}}s:8:\"totalQty\";i:8;s:10:\"totalPrice\";i:280000;}','123','123','1111','2016-12-16 06:20:30','2016-12-16 06:20:30'),(13,7,'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:5;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:35000;s:4:\"item\";O:11:\"App\\Product\":23:{s:8:\"\0*\0table\";s:8:\"products\";s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:5;s:9:\"imagePath\";s:72:\"http://www.swalter.com/media/catalog/category/kraft_tint_two_piece_1.png\";s:5:\"title\";s:8:\"Box Gift\";s:11:\"description\";s:144:\"Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll\";s:5:\"price\";i:35000;s:10:\"created_at\";s:19:\"2016-12-06 02:27:40\";s:10:\"updated_at\";s:19:\"2016-12-06 02:27:40\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:5;s:9:\"imagePath\";s:72:\"http://www.swalter.com/media/catalog/category/kraft_tint_two_piece_1.png\";s:5:\"title\";s:8:\"Box Gift\";s:11:\"description\";s:144:\"Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll\";s:5:\"price\";i:35000;s:10:\"created_at\";s:19:\"2016-12-06 02:27:40\";s:10:\"updated_at\";s:19:\"2016-12-06 02:27:40\";}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:35000;}','kasjdj','Yusuf Pangaribuan','1111','2016-12-16 07:29:18','2016-12-16 07:29:18'),(14,8,'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:7;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10000;s:4:\"item\";O:11:\"App\\Product\":23:{s:8:\"\0*\0table\";s:8:\"products\";s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:7;s:9:\"imagePath\";s:73:\"https://parkinglotconfessional.files.wordpress.com/2010/05/sketchbook.png\";s:5:\"title\";s:10:\"Book Cover\";s:11:\"description\";s:144:\"Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll\";s:5:\"price\";i:10000;s:10:\"created_at\";s:19:\"2016-12-06 02:27:41\";s:10:\"updated_at\";s:19:\"2016-12-06 02:27:41\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:7;s:9:\"imagePath\";s:73:\"https://parkinglotconfessional.files.wordpress.com/2010/05/sketchbook.png\";s:5:\"title\";s:10:\"Book Cover\";s:11:\"description\";s:144:\"Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll\";s:5:\"price\";i:10000;s:10:\"created_at\";s:19:\"2016-12-06 02:27:41\";s:10:\"updated_at\";s:19:\"2016-12-06 02:27:41\";}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}i:6;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:10000;s:4:\"item\";O:11:\"App\\Product\":23:{s:8:\"\0*\0table\";s:8:\"products\";s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:6;s:9:\"imagePath\";s:88:\"http://www.mylovestorybook.com/wp-content/uploads/2016/09/DS_DreamALittleDream_frame.png\";s:5:\"title\";s:11:\"Frame Photo\";s:11:\"description\";s:144:\"Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll\";s:5:\"price\";i:10000;s:10:\"created_at\";s:19:\"2016-12-06 02:27:41\";s:10:\"updated_at\";s:19:\"2016-12-06 02:27:41\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:6;s:9:\"imagePath\";s:88:\"http://www.mylovestorybook.com/wp-content/uploads/2016/09/DS_DreamALittleDream_frame.png\";s:5:\"title\";s:11:\"Frame Photo\";s:11:\"description\";s:144:\"Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll\";s:5:\"price\";i:10000;s:10:\"created_at\";s:19:\"2016-12-06 02:27:41\";s:10:\"updated_at\";s:19:\"2016-12-06 02:27:41\";}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:20000;}','balige','irma','1111','2016-12-16 08:15:54','2016-12-16 08:15:54');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`imagePath`,`title`,`description`,`price`,`created_at`,`updated_at`) values (5,'http://www.swalter.com/media/catalog/category/kraft_tint_two_piece_1.png','Box Gift','Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll',10000,'2016-12-06 02:27:40','2016-12-06 02:27:40'),(6,'http://www.mylovestorybook.com/wp-content/uploads/2016/09/DS_DreamALittleDream_frame.png','Frame Photo','Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll',10000,'2016-12-06 02:27:41','2016-12-06 02:27:41'),(7,'https://parkinglotconfessional.files.wordpress.com/2010/05/sketchbook.png','Book Cover','Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll',10000,'2016-12-06 02:27:41','2016-12-06 02:27:41'),(8,'http://cliparts.co/cliparts/dc9/ree/dc9reeyRi.png','Papergrass','Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll',10000,'2016-12-06 02:27:43','2016-12-06 02:27:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'Josh Simanungkalit','kurangdarisatu@gmail.com','$2y$10$xS.bziE3zTsXb5SW3zHjB.RE5EnxMkEVvpyCzYyX2AQXrAKa02QaW','DPbQP9MF5aMpgXjxLOijgqvlJyKWg48egjZucs1DyTvZwmBeR0V0xGZrpAgw','2016-12-06 02:25:57','2016-12-16 06:07:12'),(4,'nice','nice@gmail.com','$2y$10$dpSZZ3p7HytNMZJos70aDekpVY4VCnGrHSV3VQ6KGsSPwZCfdtOrO','bEYUnrYfuxWe0ru2rWEUQowoitrSHf0ua96EPDaDmIVyQRZRyQs2ShyRtwT9','2016-12-16 06:19:44','2016-12-16 06:24:38'),(5,'riki','riki@gmail.com','$2y$10$mYRPfUg2/Nt0bTHCNqRDaeFyTeqObcR1F6JXSmkDWdoc.XAeb14NK','fHrxJ1cWwlPgIPLkN2rRsJrEfPCiZt4PdNbiJTv3LfnLroIFdCEaZtfO6apz','2016-12-16 06:24:58','2016-12-16 06:25:34'),(6,'Yusuf Pangaribuan','yusufpangaribuan31@gmail.com','$2y$10$Z5URXRTsRujx8DMIhzEbzuzlDCJhLIUgD80U1DCaH8G76jNgDbYr2','uwqD3Lecb8vsvqtzeJjuouRyWa8N6DaADO4oWWy3NiH4vDs2Vhp6AAxBdLq8','2016-12-16 07:23:26','2016-12-16 07:26:46'),(7,'Sri','srinadapdap@gmail.com','$2y$10$50cCEe2eczwSDYoXwL1cm.dGYofDLkN8Aq8pH3ziGVZ15Amxmb6Iy','8Ht01AtxuAHcGChFA5uvC1wBEmKrhxPDbJWfcY47xxZxw7djdwoymTU7rJC4','2016-12-16 07:27:16','2016-12-16 08:13:48'),(8,'irma','irma@gmail.com','$2y$10$ys.GxZaWAYMEtfXQ6WfVIOgUNbbqzMZ/3MU.FdLZxKPTDp8nMS7cO','nWfaWtahE7nC6fGd04tsajsSpKCsUEFbxTTK2f3CI0PBI019OVrFwOI6u8SO','2016-12-16 08:14:30','2016-12-16 08:40:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
