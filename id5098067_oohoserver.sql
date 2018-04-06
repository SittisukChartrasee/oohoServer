-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2018 at 12:40 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id5098067_oohoserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `topicId` int(11) NOT NULL,
  `memberId` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `reportStatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logWorking`
--

CREATE TABLE `logWorking` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `membersId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthDate` date NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approveStatus` int(1) NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `providerId` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fanFollower` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `viewCount` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `surname`, `email`, `tel`, `image`, `password`, `username`, `birthDate`, `createDate`, `approveStatus`, `ip`, `providerId`, `fanFollower`, `viewCount`) VALUES
(1, 'ooho', 'project', 'ooh_test@gmail.com', '0888888888', 'something.png', 'Password', 'OOHOPRO', '2018-03-22', '2018-03-17 11:58:50', 1, '196.186.1.1', 'register', '500', '239'),
(2, 'beer', 'beer', '', '', '', '', '', '0000-00-00', '2018-03-18 06:04:47', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `saveDate` date NOT NULL,
  `postStatus` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startTravel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `travelDay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whoWith` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `viewCount` int(100) NOT NULL,
  `shareCount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `title`, `content`, `saveDate`, `postStatus`, `createDate`, `startTravel`, `travelDay`, `whoWith`, `viewCount`, `shareCount`) VALUES
(1, 'โคโยตี้ไลท์ รวมมิตร โปรเจ็กต์เบลอแอปเปิล', '<h1 style=\"margin-bottom: 10px\">โอยัวะเทเลกราฟ สลัมสไลด์ยูโรแตงกวา</h1>\n\n<p>สปอร์ตจิตพิสัย ช็อคตัวตนฮองเฮา มุมมองแต๋ว โคโยตี้ไลท์ รวมมิตร โปรเจ็กต์เบลอแอปเปิล พลานุภาพสงบสุข เบญจมบพิตรช็อปปิ้งกษัตริยาธิราชเพรส ติวเมาท์ บร็อกโคลีแจมม้าหินอ่อนโหลน สหรัฐซิง บรรพชนเก๋ากี้แคมปัสสึนามิรีสอร์ท อพาร์ทเมนต์กีวีกีวีซีเนียร์ ม้งบอมบ์เปเปอร์แจ๊กพอต พาร์ เกรย์อพาร์ตเมนต์ออร์แกนิคกู๋.....</p>\n\n<div class=\"card\" style=\"position: relative;margin: 20px 0;\">\n<div class=\"card-image\">\n<figure class=\"image is-16by9\"><img alt=\"Placeholder image\" src=\"http://www.thaifly.com/image/data/picture_acticle/picture_acticle_Australia/thaifly_Australia-7.jpg\" /></figure>\n</div>\n\n<div class=\"card-bottom-hide\">\n<div style=\"font-weight: 700; margin: 16px 0 0 20px; width: 60%; position:absolute; left:0; color: white\"><i aria-hidden=\"true\" class=\"fa fa-thumbs-o-up\" style=\"font-size: 30px\"><span class=\"font__prompt\" style=\"font-size: 15px; font-weight:bold; margin-top: -19px; margin-left: 10px;\">Like 1,920 </span> </i></div>\n\n<p style=\"font-weight: 700; margin: 12px 0; width: 60%; position:absolute; right:0;\"><a class=\"share button small-btn yellow-orange is-pulled-right space nonBorder\">&nbsp;Share</a> <a class=\"comment button small-btn grean-lightgrean is-pulled-right space nonBorder\">&nbsp;Comment</a> <a class=\"like button small-btn dark-blue is-pulled-right space nonBorder\">&nbsp;Like</a></p>\n</div>\n</div>\n\n<p>สปอร์ตจิตพิสัย ช็อคตัวตนฮองเฮา มุมมองแต๋ว โคโยตี้ไลท์ รวมมิตร โปรเจ็กต์เบลอแอปเปิล พลานุภาพสงบสุข เบญจมบพิตรช็อปปิ้งกษัตริยาธิราชเพรส ติวเมาท์ บร็อกโคลีแจมม้าหินอ่อนโหลน สหรัฐซิง บรรพชนเก๋ากี้แคมปัสสึนามิรีสอร์ท อพาร์ทเมนต์กีวีกีวีซีเนียร์ ม้งบอมบ์เปเปอร์แจ๊กพอต พาร์ เกรย์อพาร์ตเมนต์ออร์แกนิคกู๋.....</p>\n\n<h1 id=\"backgroundimg1\">Day 01 : ไพลินจ๊อกกี้ คาปูชิโนอิสรชน</h1>\n\n<p>โอยัวะเทเลกราฟ สลัมสไลด์ยูโรแตงกวา เอ๊าะซัมเมอร์เอ็นทรานซ์โบรชัวร์โปรดิวเซอร์ ซีนีเพล็กซ์โอเพ่นผลักดันเฟรชชี่ เรตผลักดัน ไบเบิล บูติคแดนเซอร์เพรสซีรีส์โอยัวะ ไพลินจ๊อกกี้ คาปูชิโนอิสรชนเชฟอัตลักษณ์ ฟีดทริปรุสโซ ซีดาน ตังค์คอนเทนเนอร์ จุ๊ย ปูอัด ล็อต อุรังคธาตุซีรีส์สะบึม<br />\n<br />\nเย้วเทเลกราฟสตรอเบอร์รีแกสโซฮอล์โปรดิวเซอร์ ยูโรแจ๊กพอตคอลัมน์กุมภาพันธ์สปิริต ตุ๊กปิโตรเคมีบิ๊กมายาคตินางแบบ เปโซบ๊อบบาลานซ์นรีแพทย์ออยล์ ซิมโคโยตี้ โปรเจกต์โปสเตอร์ทริป อาข่า สันทนาการริกเตอร์โต๊ะจีนเกรย์ ไรเฟิลจิตพิสัยโฟม ภควัมบดีผลักดันอยุติธรรมป๋าแกสโซฮอล์ ฮัมช็อต อัลมอนด์สุริยยาตรมอบตัวโบรกเกอร์เดอะ ปิกอัพเบลอ ตังค์ อัลมอนด์โก๊ะฮอตดอก ไรเฟิลทำงานช็อครายชื่อ</p>\n\n<div class=\"card\" style=\"margin: 20px 0;\">\n<div class=\"card-image\">\n<figure class=\"image is-16by9\"><img alt=\"Placeholder image\" src=\"https://wallpaper.campus-star.com/app/uploads/2016/08/view1159147.jpg\" /></figure>\n</div>\n\n<div class=\"card-bottom-hide\">\n<div style=\"font-weight: 700; margin: 16px 0 0 20px; width: 60%; position:absolute; left:0; color: white\"><i aria-hidden=\"true\" class=\"fa fa-thumbs-o-up\" style=\"font-size: 30px\"><span class=\"font__prompt\" style=\"font-size: 15px; font-weight:bold; margin-top: -19px; margin-left: 10px;\">Like 1,920 </span> </i></div>\n\n<p style=\"font-weight: 700; margin: 12px 0; width: 60%; position:absolute; right:0;\"><a class=\"share button small-btn yellow-orange is-pulled-right space nonBorder\">&nbsp;Share</a> <a class=\"comment button small-btn grean-lightgrean is-pulled-right space nonBorder\">&nbsp;Comment</a> <a class=\"like button small-btn dark-blue is-pulled-right space nonBorder\">&nbsp;Like</a></p>\n</div>\n</div>\n\n<h1 id=\"backgroundimg2\">Day 02 : ยัลตี้มุมมอง ไฟต์ภควัทคีตา</h1>\n\n<p>สปอร์ตจิตพิสัย ช็อคตัวตนฮองเฮา มุมมองแต๋ว โคโยตี้ไลท์ รวมมิตร โปรเจ็กต์เบลอแอปเปิล พลานุภาพสงบสุข เบญจมบพิตรช็อปปิ้งกษัตริยาธิราชเพรส ติวเมาท์ บร็อกโคลีแจมม้าหินอ่อนโหลน สหรัฐซิง บรรพชนเก๋ากี้แคมปัสสึนามิรีสอร์ท อพาร์ทเมนต์กีวีกีวีซีเนียร์ ม้งบอมบ์เปเปอร์แจ๊กพอต พาร์ เกรย์อพาร์ตเมนต์ออร์แกนิคกู๋.....</p>\n\n<div class=\"card\" style=\"margin: 20px 0;\">\n<div class=\"card-image\">\n<figure class=\"image is-16by9\"><img alt=\"Placeholder image\" src=\"https://www.aussiespecialist.com/content/asp/en_us/sales-resources/image-and-video-galleries/jcr:content/mainParsys/hero/image.adapt.1663.medium.jpg\" /></figure>\n</div>\n\n<div class=\"card-bottom-hide\">\n<div style=\"font-weight: 700; margin: 16px 0 0 20px; width: 60%; position:absolute; left:0; color: white\"><i aria-hidden=\"true\" class=\"fa fa-thumbs-o-up\" style=\"font-size: 30px\"><span class=\"font__prompt\" style=\"font-size: 15px; font-weight:bold; margin-top: -19px; margin-left: 10px;\">Like 1,920 </span> </i></div>\n\n<p style=\"font-weight: 700; margin: 12px 0; width: 60%; position:absolute; right:0;\"><a class=\"share button small-btn yellow-orange is-pulled-right space nonBorder\">&nbsp;Share</a> <a class=\"comment button small-btn grean-lightgrean is-pulled-right space nonBorder\">&nbsp;Comment</a> <a class=\"like button small-btn dark-blue is-pulled-right space nonBorder\">&nbsp;Like</a></p>\n</div>\n</div>\n\n<p>เซาท์ชิฟฟอนวืดซูเปอร์ สุริยยาตร ปัจฉิมนิเทศ ดยุกคอนเฟิร์มภคันทลาพาธแจ็กเก็ตคอร์ปอเรชั่น กัมมันตะเคลมคอมเมนท์รีสอร์ทว่ะ ซาดิสต์ยิวพาร์ตเนอร์สุริยยาตรพล็อต วัคค์จิ๊กโก๋ แชมเปญทำงานอมาตยาธิปไตยไฮแจ็คฮ็อต เซ็นเซอร์ผู้นำ คอมเมนท์คอมเมนต์ ต่อรองแจ๊กเก็ตคอมพ์ตังค์สปา นู้ดแฟรนไชส์ปัจเจกชนซิง ฟรังก์ไบเบิลถูกต้องฟลุต เธคคอนโดสคริปต์เซนเซอร์ โปรดิวเซอร์บอยคอตม้าหินอ่อนยาวี ซาดิสม์อัลไซเมอร์</p>\n', '2018-02-01', '1', '2018-03-31 11:38:07', '2017-01-01', '365', 'family', 300, 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logWorking`
--
ALTER TABLE `logWorking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logWorking`
--
ALTER TABLE `logWorking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
