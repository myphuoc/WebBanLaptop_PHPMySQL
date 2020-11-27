/*
SQLyog Community Edition- MySQL GUI v8.13 
MySQL - 5.5.5-10.1.31-MariaDB : Database - qlyban_hang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qlyban_hang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qlyban_hang`;

/*Table structure for table `catalogs` */

DROP TABLE IF EXISTS `catalogs`;

CREATE TABLE `catalogs` (
  `catalog_id` int(225) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  PRIMARY KEY (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `catalogs` */

insert  into `catalogs`(`catalog_id`,`name`) values (1,'DELL'),(2,'ASUS'),(3,'HP'),(4,'ACER');

/*Table structure for table `detail_product` */

DROP TABLE IF EXISTS `detail_product`;

CREATE TABLE `detail_product` (
  `detail_id` int(225) NOT NULL AUTO_INCREMENT,
  `product_id` int(225) NOT NULL,
  `kichthuoc` varchar(50) DEFAULT NULL,
  `trongluong` varchar(20) DEFAULT NULL,
  `manhinh` varchar(100) DEFAULT NULL COMMENT 'Độ phân giải',
  `cpu` varchar(2000) DEFAULT NULL,
  `ram` varchar(20) DEFAULT NULL,
  `ocung` varchar(100) DEFAULT NULL,
  `dohoa` varchar(2000) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `cong` varchar(1000) DEFAULT NULL COMMENT 'HDMI,USB,WIFI,LAN,....',
  `webcam` varchar(10) DEFAULT NULL,
  `loa` varchar(10) DEFAULT 'có',
  `diaquang` varchar(20) DEFAULT NULL,
  `HDH` varchar(100) DEFAULT NULL,
  `baohanh` varchar(2000) DEFAULT 'Bảo hành 1 năm chính hãng.',
  PRIMARY KEY (`detail_id`),
  UNIQUE KEY `detail_id` (`detail_id`),
  KEY `detail_product` (`product_id`),
  CONSTRAINT `detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `detail_product` */

insert  into `detail_product`(`detail_id`,`product_id`,`kichthuoc`,`trongluong`,`manhinh`,`cpu`,`ram`,`ocung`,`dohoa`,`pin`,`cong`,`webcam`,`loa`,`diaquang`,`HDH`,`baohanh`) values (1,1,'350 x 32.5 x 240','2.04kg','14 inch HD (1366x768) Anti-Glare LED-backlit','Intel® Core™ i5-3320M Processor (3M Cache, up to 3.30 GHz)','4GB bus 1333GHz','HDD 250GB','Intel® HD Graphics 4000','6 cell','VGA, USB 2.0, USB 3.0, LAN, Card-Reader, E-Sata, Ie1394, Wifi…,','Có','Có','Có','	Windows 8 64 bit','12 tháng'),(2,2,'380 x 260 x 23 mm','2.18kg','15.6 inches','Intel Core i3-7100U (2.40GHz, 3MB Cache)','4GB DDR4','1TB - 5400RPM','Intel HD Graphics','4 Cell','HDMI, LAN, USB 2.0, Wifi','có','có','có','Free DOS','Bảo hành 1 năm chính hãng.'),(3,3,'34.5 x 24.3 x 2.14 cm','1.77kg','14 inches','Intel Core i5-7200U 2.5GHz - 3M Cache','4GB DDR4','1TB - 5400rpm','Intel HD Graphics 620','4 Cell','HDMI, Bluetooth, USB 2.0, 3x USB 3.0, Wifi','có','có','có','Free DOS','Bảo hành 1 năm chính hãng.'),(4,4,'380 x 260 x 23.65mm','2.18kg','15.6 inch','Intel Core i7-7500U 2.70GHz - 4M Cache','4GB DDR4, 2400MHz','1TB SATA3 (5400rpm)','AMD Radeon R5 M420 2GB','6 cell','Bluetooth 4.2, HDMI, LAN, USB 3.0, USB 2.0','có ','có','có','Free DOS','Bảo hành 1 năm chính hãng.'),(5,5,'38.4 x 27.4 x 2.54 cm','2.6kg','15.6 inch','Intel Core i7-7700HQ 2.8GHz - 6M Cache','8GB DDR4 2400Mhz ','500GB - 5400rpm + 128GB SSD','4GB GDDR5 NVIDIA GTX 1050Ti','6 cell','USB 3.0, HDMI, Wifi, LAN...,','có','có','có','Windows 10 Home 64Bit','Bảo hành 1 năm chính hãng.'),(6,6,'339 x 235 x 21.9 mm','1.68Kg','14 inch','Intel Celeron N3060 (1.6GHz, 2MB Cache)','2GB DDR3L','500GB - 5400RPM','Intel HD Graphics','2 Cell','HDMI, USB, LAN, Wifi','có','có','có','Free DOS','Bảo hành 1 năm chính hãng.'),(7,7,'348 x 242 x 27.6 mm','1.7kg','14 inch','Intel Pentium N3710 (1.6Ghz, 2MB Cache)','4GB DDR3L','500GB - 5400RPM','Intel HD Graphics 405','3 Cell','HDMI, USB, LAN, Wifi','có','có ','có','Free DOS','Bảo hành 1 năm chính hãng.'),(8,8,'34.8 x 24.1 x 3.17 cm','1.75kg','14 inch','Intel Core i3-6006U 2.0GHz - 3M Cache','4GB DDR4','500GB - 5400rpm','Intel HD Graphics 520','3 Cell','USB 3.0, HDMI, Wifi, LAN...,','có ','có','có','Windows 10 64bit','Bảo hành 1 năm chính hãng.'),(9,9,'381.4 x 251.5 x 27.6 mm ','2kg','15.6 inch','Intel Core i3-7100U 2.4GHz - 3M Cache','4GB DDR4','500GB - 5400rpm','Intel HD Graphics 620','3 Cell','HDMI, Bluetooth, USB 2.0, 3x USB 3.0, Wifi','có','có','có','Free DOS','Bảo hành 1 năm chính hãng.'),(10,10,'348 x 242.8 x 25.3 mm','2.1 Kg','14 inch','Intel Skylake Core i5-6200U(2.3 GHz; 3MB Cache)','4 GB DDR3L','500GB - 5400RPM','Intel HD Graphics 520','2 Cell','HDMI, USB, LAN, Wifi','có','có ','có','Windows 10','Bảo hành 1 năm chính hãng.'),(11,11,'34 x 24 x 2.37 cm','1.7 Kg','14 inch','Intel Pentium N3710 1.6GHz - 2M Cache','4GB DDR3L','500GB - 5400rpm','Intel HD Graphics 405','4 Cell','Bluetooth 4.0, HDMI, LAN, 1x USB 2.0, 2x USB 3.1, WIFI 802.11 b/g/n','có','có ','','Free DOS','Bảo hành 1 năm chính hãng.'),(12,12,'34 x 24 x 2.37 cm','1.9 Kg','15.6 inch','Intel Core i3-7100U 2.4GHz - 3M Cache','4GB DDR4','1TB - 5400rpm','Intel HD Graphics 620','4 Cell','Bluetooth 4.0, HDMI, LAN 10/100, 1x USB 2.0, 2x USB 3.1, WIFI 802.11 b/g/n','có','có ','có','Free DOS','Bảo hành 1 năm chính hãng.'),(13,13,'378 x 252.1 x 22.5 mm','2.12 Kg','15.6 inch','Intel Core i3-7100U 2.4GHz - 3M Cache','4GB DDR4','500GB - 5400rpm','Intel HD Graphics 620','3 Cell','Bluetooth 4.2, HDMI, 2x USB 3.1,2x USB 3.1 Type C, WIFI 802.11ac','có','có ','có','Windows 10','Bảo hành 1 năm chính hãng.'),(14,14,'378 x 252.1 x 22.5 mm','1.96 Kg','15.6 inch','Intel Core i5 8250U 1.6GHz - 6M Cache','4GB DDR4','1TB - 5400rpm','Intel UHD Graphics 620','3 Cell','Bluetooth 4.0, LAN 10/100/1000,2x USB 3.0, WIFI 802.11 b/g/n','có','có','có','Free DOS','Bảo hành 1 năm chính hãng.'),(15,15,'33.4 x 22.6 x 1.9 cm','1.63 Kg','14 inch','Intel Core i5-7200U 2.5GHz - 3M','4GB DDR4','500GB - 5400rpm','Intel HD Graphics 620','3 Cell','Bluetooth 4.2, HDMI, 2x USB 3.1,2x USB 3.1 Type C, WIFI 802.11ac','có','có','','Windows 10 Home 64Bit','Bảo hành 1 năm chính hãng.'),(16,16,'38.1 x 25.9 x 2.1 cm','1.87 Kg','15.6 inch','Intel Celeron N3350 1.6GHz - 2M Cache','4GB DDR3L','500GB - 5400rpm','Intel HD Graphics','2 Cell','Bluetooth 4.0, HDMI, LAN 10/100, WIFI 802.11 b/g/n','có','có','','Free DOS','Bảo hành 1 năm chính hãng.'),(17,17,' ',' ','15.6 inch','Intel Core i3-6006U 2.0GHz - 3M Cache','4GB',' ','Intel HD Graphics 520',' ',' ','','có','','Free DOS','Bảo hành 1 năm chính hãng.'),(18,18,'381.5 x 259 x 21.6 mm','2.1 Kg','15.6 inch','Intel Core i5-7200U 2.5GHz - 3M Cache','4GB DDR4','1.0TB - 5400rpm','Intel HD Graphics 620','4 Cell','Bluetooth 4.0, HDMI, LAN 10/100/1000, 1x USB 3.0, 2x USB 2.0, WIFI 802.11 b/g/n','có','có','','Free DOS','Bảo hành 1 năm chính hãng.'),(19,19,'381 x 259 x 30,4 mm','2.2 Kg','15.6 inch','Intel Core i3-7100U 2.4GHz - 3M Cache','8GB DDR4 2400MHz','500 GB 5400rpm','Intel HD Graphics 620','4 Cell','Bluetooth 4.2, Card reader, HDMI, LAN 10/100/1000 Mbps, USB 3.0, USB 2.0, WIFI 802.11ac','có','có','có','Free DOS','Bảo hành 1 năm chính hãng.'),(20,20,'382 x 260 x 29 mm','2.3 Kg','15.6 inch','Intel® Core™ i5-7200U (2.5Ghz/ 3M Cache)','4GB DDR4','500 GB 5400rpm','2GB DDR5 Nvidia Geforce 940MX','6 Cell','Bluetooth V4.0, Card reader, HDMI, LAN, 2x USB 3.0, 1x USB 3.1 Type C, 1x USB 2.0, WIFI 802.11 a/b/g/n/ac','có','có','có','Free DOS','Bảo hành 1 năm chính hãng.');

/*Table structure for table `detail_report` */

DROP TABLE IF EXISTS `detail_report`;

CREATE TABLE `detail_report` (
  `id` int(225) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `detail` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `id_chude` int(225) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title_report` (`id_chude`),
  CONSTRAINT `title_report` FOREIGN KEY (`id_chude`) REFERENCES `loai_chude` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `detail_report` */

insert  into `detail_report`(`id`,`title`,`name`,`detail`,`email`,`phone`,`id_chude`,`status`) values (1,'Cần cải thiện thêm','Nguyễn Khánh Lê','--can cai thien them--','lengkh98@gmail.com','0905553087',4,1);

/*Table structure for table `loai_chude` */

DROP TABLE IF EXISTS `loai_chude`;

CREATE TABLE `loai_chude` (
  `id` int(225) NOT NULL AUTO_INCREMENT,
  `chude` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `loai_chude` */

insert  into `loai_chude`(`id`,`chude`) values (1,'Tư vấn'),(2,'Khiếu nại - Phản ánh'),(3,'Hợp tác với WEBSITE'),(4,'Góp ý cải tiến');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `order_id` int(225) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(225) NOT NULL,
  `product_id` int(225) NOT NULL,
  `soluong` int(225) NOT NULL DEFAULT '1',
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `order_product` (`product_id`),
  KEY `order_trans` (`transaction_id`),
  CONSTRAINT `order_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trans_order` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `orders` */

insert  into `orders`(`order_id`,`transaction_id`,`product_id`,`soluong`,`status`) values (80,51,1,2,1),(81,52,4,5,1),(83,54,1,2,1),(84,54,2,3,1),(85,54,3,4,1),(86,56,16,1,1);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(225) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(225) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(225) NOT NULL,
  `image_link` varchar(50) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `soluong` int(225) NOT NULL,
  PRIMARY KEY (`product_id`,`name`),
  KEY `FK_product` (`catalog_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`catalog_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `product` */

insert  into `product`(`product_id`,`catalog_id`,`name`,`price`,`image_link`,`image_name`,`soluong`) values (1,1,'Dell Latitude E5430',4500000,'images/dell/dell01.jpg','dell01.jpg',35),(2,1,'Dell Vostro 3568 VTI35037 ',11000000,'images/dell/dell02.jpg','dell02.jpg',37),(3,1,'Dell Inspiron 3467 C4I51107 ',12800000,'images/dell/dell03.jpg','dell03.jpg',45),(4,1,'Dell Vostro 3568 XF6C621',17300000,'images/dell/dell04.jpg','dell04.jpg',44),(5,1,'Dell Inspiron N7567A',15000000,'images/dell/dell05.jpg','dell05.jpg',50),(6,2,'Asus E402SA-WX251D',5000000,'images/asus/asus01.jpg','asus01.jpg',50),(7,2,'Asus X441SA-WX021D  ',7900000,'images/asus/asus02.jpg','asus02.jpg',50),(8,2,'Asus A441UA-WX156T ',9700000,'images/asus/asus03.jpg','asus03.jpg',41),(9,2,'Asus X541UA - GO1373 ',10000000,'images/asus/asus04.jpg','asus04.jpg',50),(10,2,'Asus A456UA-WX034T ',12000000,'images/asus/asus05.jpg','asus05.jpg',50),(11,3,'HP 14-BS561TU (2GE29PA) ',70900000,'images/hp/hp01.jpg','hp01.jpg',50),(12,3,'HP 15-BS557TU (2GE40PA)',10400000,'images/hp/hp02.jpg','hp02.jpg',50),(13,3,'HP Pavilion 15 - CC015TU (2JQ07PA) ',12090000,'images/hp/hp03.jpg','hp03.jpg',50),(14,3,'HP Pavilion 15-CC105TU (3CH59PA)',14010000,'images/hp/hp04.jpg','hp04.jpg',50),(15,3,'HP Pavilion X360 14-BA066TU ',16790000,'images/hp/hp05.jpg','hp05.jpg',50),(16,4,'Acer Aspire A315-31-C8GB',5990000,'images/acer/acer01.jpg','acer01.jpg',49),(17,4,'Acer A315-51-3932 ',87000000,'images/acer/acer02.jpg','acer02.jpg',50),(18,4,'Acer A315-51-53ZL',11490000,'images/acer/acer03.jpg','acer03.jpg',50),(19,4,'Acer Aspire E15 E5-575-35L8',11990000,'images/acer/acer04.jpg','acer04.jpg',50),(20,4,'Acer Aspire F5-573G-55PJ',17900000,'images/acer/acer05.jpg','acer05.jpg',50);

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `transaction_id` int(225) NOT NULL AUTO_INCREMENT,
  `user_id` int(225) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `process` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transaction_id`),
  KEY `FK_transaction` (`user_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `transactions` */

insert  into `transactions`(`transaction_id`,`user_id`,`amount`,`process`) values (51,6,9000000,1),(52,3,86500000,1),(54,2,93200000,1),(56,3,5990000,0);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(225) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `password` varchar(40) NOT NULL,
  `level` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`name`,`username`,`date_of_birth`,`gender`,`phone`,`address`,`password`,`level`) values (1,'LE\'s TEAM','admin','1998-04-02','male',' ',' ','12345',1),(2,'123','1','0000-00-00','1','1','1','1',0),(3,'abc','11','0000-00-00','male','123','123','11',0),(4,'123','123','0000-00-00','female','123','123','123',0),(5,'22','22','2018-07-19','male','22','22','1',0),(6,'Nguyễn Khánh Lê','lengkh98','2018-07-09','male','0905553087','đâsdasdasda','1',0);

/* Trigger structure for table `orders` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `updateproduct` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `updateproduct` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
    if new.soluong >0 then
    update product
    set soluong = soluong - new.soluong
    where product_id = new.product_id;
    end if;
  END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
