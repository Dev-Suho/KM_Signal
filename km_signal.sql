-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.18-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- km_signal 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `km_signal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `km_signal`;

-- 테이블 km_signal.application 구조 내보내기
CREATE TABLE IF NOT EXISTS `application` (
  `department` char(20) NOT NULL,
  `volunteer` int(11) NOT NULL,
  `acceptance` int(11) NOT NULL,
  `register` int(11) NOT NULL,
  PRIMARY KEY (`department`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 km_signal.application:~23 rows (대략적) 내보내기
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT IGNORE INTO `application` (`department`, `volunteer`, `acceptance`, `register`) VALUES
	('IT경영과', 409, 400, 36),
	('간호학과', 1781, 569, 131),
	('건축과', 476, 471, 40),
	('게임콘텐츠과', 550, 300, 60),
	('공간디자인과', 562, 541, 51),
	('공연예술과', 338, 202, 60),
	('국제비서과', 292, 289, 31),
	('레포츠태권도과', 290, 179, 90),
	('보건의료행정과', 704, 682, 79),
	('뷰티케어과', 759, 577, 57),
	('사회복지과', 1044, 713, 74),
	('세무회계과', 370, 353, 45),
	('소방안전관리과', 671, 298, 95),
	('아동미술지도과', 294, 278, 44),
	('아동보육과', 544, 532, 43),
	('영상콘텐츠과', 899, 511, 64),
	('유아교육과', 428, 285, 33),
	('융합소프트웨어과', 550, 544, 49),
	('정보통신과', 432, 413, 35),
	('호텔관광경영과', 573, 554, 53),
	('호텔외식서비스과', 360, 359, 55),
	('호텔외식조리과', 706, 459, 91),
	('효충사관과', 234, 175, 55);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;

-- 테이블 km_signal.area 구조 내보내기
CREATE TABLE IF NOT EXISTS `area` (
  `지역` varchar(50) DEFAULT NULL,
  `Y2017` int(11) DEFAULT NULL,
  `Y2018` int(11) DEFAULT NULL,
  `Y2019` int(11) DEFAULT NULL,
  `Y2020` int(11) DEFAULT NULL,
  `Y2021` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;

-- 테이블 데이터 km_signal.area:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT IGNORE INTO `area` (`지역`, `Y2017`, `Y2018`, `Y2019`, `Y2020`, `Y2021`) VALUES
	('서울', 2113, 2054, 2077, 2000, 1942),
	('경기도', 2686, 2625, 2609, 2510, 2519),
	('강원도', 211, 182, 186, 175, 169),
	('경상도', 32, 32, 32, 25, 22),
	('전라도', 34, 29, 35, 29, 23),
	('제주도', 12, 10, 11, 5, 6),
	('충청도', 18, 22, 21, 17, 15);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;

-- 테이블 km_signal.attribute 구조 내보내기
CREATE TABLE IF NOT EXISTS `attribute` (
  `분류` varchar(50) DEFAULT NULL,
  `Y2017` int(11) DEFAULT NULL,
  `Y2018` int(11) DEFAULT NULL,
  `Y2019` int(11) DEFAULT NULL,
  `Y2020` int(11) DEFAULT NULL,
  `Y2021` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;

-- 테이블 데이터 km_signal.attribute:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT IGNORE INTO `attribute` (`분류`, `Y2017`, `Y2018`, `Y2019`, `Y2020`, `Y2021`) VALUES
	('수시', 3404, 3290, 3314, 3174, 3131),
	('정시', 1702, 1665, 1657, 1587, 1565);
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;

-- 테이블 km_signal.department_acceptance 구조 내보내기
CREATE TABLE IF NOT EXISTS `department_acceptance` (
  `year` int(11) DEFAULT NULL,
  `IT경영과` int(11) DEFAULT NULL,
  `간호학과` int(11) DEFAULT NULL,
  `건축과` int(11) DEFAULT NULL,
  `게임콘텐츠과` int(11) DEFAULT NULL,
  `공간디자인과` int(11) DEFAULT NULL,
  `공연예술과` int(11) DEFAULT NULL,
  `국제비서과` int(11) DEFAULT NULL,
  `레포츠태권도과` int(11) DEFAULT NULL,
  `보건의료행정과` int(11) DEFAULT NULL,
  `뷰티케어과` int(11) DEFAULT NULL,
  `사회복지과` int(11) DEFAULT NULL,
  `세무회계과` int(11) DEFAULT NULL,
  `소방안전관리과` int(11) DEFAULT NULL,
  `아동미술지도과` int(11) DEFAULT NULL,
  `아동보육과` int(11) DEFAULT NULL,
  `영상콘텐츠과` int(11) DEFAULT NULL,
  `유아교육과` int(11) DEFAULT NULL,
  `융합소프트웨어과` int(11) DEFAULT NULL,
  `정보통신과` int(11) DEFAULT NULL,
  `호텔관광경영과` int(11) DEFAULT NULL,
  `호텔외식서비스과` int(11) DEFAULT NULL,
  `호텔외식조리과` int(11) DEFAULT NULL,
  `효충사관과` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.department_acceptance:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `department_acceptance` DISABLE KEYS */;
INSERT IGNORE INTO `department_acceptance` (`year`, `IT경영과`, `간호학과`, `건축과`, `게임콘텐츠과`, `공간디자인과`, `공연예술과`, `국제비서과`, `레포츠태권도과`, `보건의료행정과`, `뷰티케어과`, `사회복지과`, `세무회계과`, `소방안전관리과`, `아동미술지도과`, `아동보육과`, `영상콘텐츠과`, `유아교육과`, `융합소프트웨어과`, `정보통신과`, `호텔관광경영과`, `호텔외식서비스과`, `호텔외식조리과`, `효충사관과`) VALUES
	(2017, 242, 869, 242, 342, 363, 152, 147, 163, 352, 362, 572, 252, 423, 121, 163, 426, 275, 352, 321, 263, 241, 262, 87),
	(2018, 288, 732, 276, 356, 327, 194, 135, 178, 355, 321, 782, 184, 465, 152, 277, 473, 323, 432, 326, 241, 223, 323, 97),
	(2019, 320, 652, 286, 422, 426, 274, 138, 182, 462, 462, 689, 311, 386, 184, 324, 375, 256, 472, 342, 312, 210, 317, 101),
	(2020, 344, 623, 324, 373, 452, 253, 196, 176, 524, 485, 596, 306, 361, 190, 362, 453, 274, 452, 305, 342, 274, 298, 98),
	(2021, 323, 562, 354, 371, 364, 232, 242, 163, 613, 642, 562, 312, 452, 152, 389, 474, 285, 466, 301, 328, 302, 306, 85);
/*!40000 ALTER TABLE `department_acceptance` ENABLE KEYS */;

-- 테이블 km_signal.department_employment 구조 내보내기
CREATE TABLE IF NOT EXISTS `department_employment` (
  `year` int(11) DEFAULT NULL,
  `IT경영과` int(11) DEFAULT NULL,
  `간호학과` int(11) DEFAULT NULL,
  `건축과` int(11) DEFAULT NULL,
  `게임콘텐츠과` int(11) DEFAULT NULL,
  `공간디자인과` int(11) DEFAULT NULL,
  `공연예술과` int(11) DEFAULT NULL,
  `국제비서과` int(11) DEFAULT NULL,
  `레포츠태권도과` int(11) DEFAULT NULL,
  `보건의료행정과` int(11) DEFAULT NULL,
  `뷰티케어과` int(11) DEFAULT NULL,
  `사회복지과` int(11) DEFAULT NULL,
  `세무회계과` int(11) DEFAULT NULL,
  `소방안전관리과` int(11) DEFAULT NULL,
  `아동미술지도과` int(11) DEFAULT NULL,
  `아동보육과` int(11) DEFAULT NULL,
  `영상콘텐츠과` int(11) DEFAULT NULL,
  `유아교육과` int(11) DEFAULT NULL,
  `융합소프트웨어과` int(11) DEFAULT NULL,
  `정보통신과` int(11) DEFAULT NULL,
  `호텔관광경영과` int(11) DEFAULT NULL,
  `호텔외식서비스과` int(11) DEFAULT NULL,
  `호텔외식조리과` int(11) DEFAULT NULL,
  `효충사관과` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.department_employment:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `department_employment` DISABLE KEYS */;
INSERT IGNORE INTO `department_employment` (`year`, `IT경영과`, `간호학과`, `건축과`, `게임콘텐츠과`, `공간디자인과`, `공연예술과`, `국제비서과`, `레포츠태권도과`, `보건의료행정과`, `뷰티케어과`, `사회복지과`, `세무회계과`, `소방안전관리과`, `아동미술지도과`, `아동보육과`, `영상콘텐츠과`, `유아교육과`, `융합소프트웨어과`, `정보통신과`, `호텔관광경영과`, `호텔외식서비스과`, `호텔외식조리과`, `효충사관과`) VALUES
	(2017, 56, 64, 54, 52, 54, 45, 55, 54, 52, 56, 67, 67, 64, 61, 56, 56, 56, 67, 66, 65, 62, 65, 56),
	(2018, 57, 68, 59, 54, 62, 52, 58, 56, 58, 65, 76, 76, 63, 58, 64, 46, 58, 71, 68, 54, 67, 56, 67),
	(2019, 58, 73, 67, 57, 65, 54, 67, 51, 54, 62, 77, 72, 61, 57, 56, 66, 61, 74, 67, 66, 71, 51, 56),
	(2020, 62, 78, 64, 59, 56, 51, 64, 61, 65, 60, 68, 63, 55, 54, 67, 68, 66, 77, 69, 58, 65, 58, 68),
	(2021, 61, 76, 68, 61, 55, 61, 66, 66, 72, 58, 74, 61, 54, 58, 64, 71, 62, 81, 71, 67, 61, 65, 57);
/*!40000 ALTER TABLE `department_employment` ENABLE KEYS */;

-- 테이블 km_signal.department_register 구조 내보내기
CREATE TABLE IF NOT EXISTS `department_register` (
  `year` int(11) DEFAULT NULL,
  `IT경영과` int(11) DEFAULT NULL,
  `간호학과` int(11) DEFAULT NULL,
  `건축과` int(11) DEFAULT NULL,
  `게임콘텐츠과` int(11) DEFAULT NULL,
  `공간디자인과` int(11) DEFAULT NULL,
  `공연예술과` int(11) DEFAULT NULL,
  `국제비서과` int(11) DEFAULT NULL,
  `레포츠태권도과` int(11) DEFAULT NULL,
  `보건의료행정과` int(11) DEFAULT NULL,
  `뷰티케어과` int(11) DEFAULT NULL,
  `사회복지과` int(11) DEFAULT NULL,
  `세무회계과` int(11) DEFAULT NULL,
  `소방안전관리과` int(11) DEFAULT NULL,
  `아동미술지도과` int(11) DEFAULT NULL,
  `아동보육과` int(11) DEFAULT NULL,
  `영상콘텐츠과` int(11) DEFAULT NULL,
  `유아교육과` int(11) DEFAULT NULL,
  `융합소프트웨어과` int(11) DEFAULT NULL,
  `정보통신과` int(11) DEFAULT NULL,
  `호텔관광경영과` int(11) DEFAULT NULL,
  `호텔외식서비스과` int(11) DEFAULT NULL,
  `호텔외식조리과` int(11) DEFAULT NULL,
  `효충사관과` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.department_register:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `department_register` DISABLE KEYS */;
INSERT IGNORE INTO `department_register` (`year`, `IT경영과`, `간호학과`, `건축과`, `게임콘텐츠과`, `공간디자인과`, `공연예술과`, `국제비서과`, `레포츠태권도과`, `보건의료행정과`, `뷰티케어과`, `사회복지과`, `세무회계과`, `소방안전관리과`, `아동미술지도과`, `아동보육과`, `영상콘텐츠과`, `유아교육과`, `융합소프트웨어과`, `정보통신과`, `호텔관광경영과`, `호텔외식서비스과`, `호텔외식조리과`, `효충사관과`) VALUES
	(2017, 56, 87, 62, 72, 56, 54, 65, 57, 61, 57, 58, 61, 58, 46, 51, 62, 56, 60, 64, 58, 55, 54, 42),
	(2018, 62, 92, 63, 68, 54, 62, 59, 58, 62, 54, 84, 56, 61, 52, 54, 63, 62, 64, 66, 52, 52, 56, 38),
	(2019, 63, 91, 65, 74, 61, 64, 60, 58, 60, 61, 76, 64, 56, 54, 56, 67, 66, 66, 67, 59, 51, 51, 41),
	(2020, 67, 88, 67, 71, 63, 61, 64, 59, 64, 63, 74, 63, 55, 57, 51, 73, 61, 68, 66, 59, 56, 54, 42),
	(2021, 64, 90, 68, 72, 65, 58, 72, 59, 67, 66, 75, 63, 60, 51, 49, 76, 58, 71, 69, 61, 60, 61, 40);
/*!40000 ALTER TABLE `department_register` ENABLE KEYS */;

-- 테이블 km_signal.department_volunteer 구조 내보내기
CREATE TABLE IF NOT EXISTS `department_volunteer` (
  `year` int(11) DEFAULT NULL,
  `IT경영과` int(11) DEFAULT NULL,
  `간호학과` int(11) DEFAULT NULL,
  `건축과` int(11) DEFAULT NULL,
  `게임콘텐츠과` int(11) DEFAULT NULL,
  `공간디자인과` int(11) DEFAULT NULL,
  `공연예술과` int(11) DEFAULT NULL,
  `국제비서과` int(11) DEFAULT NULL,
  `레포츠태권도과` int(11) DEFAULT NULL,
  `보건의료행정과` int(11) DEFAULT NULL,
  `뷰티케어과` int(11) DEFAULT NULL,
  `사회복지과` int(11) DEFAULT NULL,
  `세무회계과` int(11) DEFAULT NULL,
  `소방안전관리과` int(11) DEFAULT NULL,
  `아동미술지도과` int(11) DEFAULT NULL,
  `아동보육과` int(11) DEFAULT NULL,
  `영상콘텐츠과` int(11) DEFAULT NULL,
  `유아교육과` int(11) DEFAULT NULL,
  `융합소프트웨어과` int(11) DEFAULT NULL,
  `정보통신과` int(11) DEFAULT NULL,
  `호텔관광경영과` int(11) DEFAULT NULL,
  `호텔외식서비스과` int(11) DEFAULT NULL,
  `호텔외식조리과` int(11) DEFAULT NULL,
  `효충사관과` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.department_volunteer:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `department_volunteer` DISABLE KEYS */;
INSERT IGNORE INTO `department_volunteer` (`year`, `IT경영과`, `간호학과`, `건축과`, `게임콘텐츠과`, `공간디자인과`, `공연예술과`, `국제비서과`, `레포츠태권도과`, `보건의료행정과`, `뷰티케어과`, `사회복지과`, `세무회계과`, `소방안전관리과`, `아동미술지도과`, `아동보육과`, `영상콘텐츠과`, `유아교육과`, `융합소프트웨어과`, `정보통신과`, `호텔관광경영과`, `호텔외식서비스과`, `호텔외식조리과`, `효충사관과`) VALUES
	(2017, 342, 1320, 374, 483, 525, 285, 286, 274, 574, 589, 892, 326, 633, 163, 235, 742, 327, 538, 372, 366, 323, 373, 123),
	(2018, 387, 1482, 423, 495, 487, 298, 263, 289, 598, 359, 1225, 256, 621, 226, 342, 794, 388, 484, 464, 432, 373, 562, 163),
	(2019, 376, 1763, 446, 524, 544, 325, 289, 294, 694, 592, 1155, 436, 577, 284, 423, 684, 473, 524, 485, 476, 231, 658, 186),
	(2020, 402, 1788, 467, 534, 576, 364, 295, 287, 723, 682, 1058, 432, 586, 323, 489, 846, 423, 545, 437, 576, 326, 712, 222),
	(2021, 409, 1781, 476, 550, 562, 338, 292, 290, 704, 759, 1044, 370, 671, 294, 544, 899, 428, 550, 432, 573, 360, 706, 234);
/*!40000 ALTER TABLE `department_volunteer` ENABLE KEYS */;

-- 테이블 km_signal.department_volunteer_attribute1 구조 내보내기
CREATE TABLE IF NOT EXISTS `department_volunteer_attribute1` (
  `year` int(11) DEFAULT NULL,
  `IT경영과` int(11) DEFAULT NULL,
  `간호학과` int(11) DEFAULT NULL,
  `건축과` int(11) DEFAULT NULL,
  `게임콘텐츠과` int(11) DEFAULT NULL,
  `공간디자인과` int(11) DEFAULT NULL,
  `공연예술과` int(11) DEFAULT NULL,
  `국제비서과` int(11) DEFAULT NULL,
  `레포츠태권도과` int(11) DEFAULT NULL,
  `보건의료행정과` int(11) DEFAULT NULL,
  `뷰티케어과` int(11) DEFAULT NULL,
  `사회복지과` int(11) DEFAULT NULL,
  `세무회계과` int(11) DEFAULT NULL,
  `소방안전관리과` int(11) DEFAULT NULL,
  `아동미술지도과` int(11) DEFAULT NULL,
  `아동보육과` int(11) DEFAULT NULL,
  `영상콘텐츠과` int(11) DEFAULT NULL,
  `유아교육과` int(11) DEFAULT NULL,
  `융합소프트웨어과` int(11) DEFAULT NULL,
  `정보통신과` int(11) DEFAULT NULL,
  `호텔관광경영과` int(11) DEFAULT NULL,
  `호텔외식서비스과` int(11) DEFAULT NULL,
  `호텔외식조리과` int(11) DEFAULT NULL,
  `효충사관과` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.department_volunteer_attribute1:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `department_volunteer_attribute1` DISABLE KEYS */;
INSERT IGNORE INTO `department_volunteer_attribute1` (`year`, `IT경영과`, `간호학과`, `건축과`, `게임콘텐츠과`, `공간디자인과`, `공연예술과`, `국제비서과`, `레포츠태권도과`, `보건의료행정과`, `뷰티케어과`, `사회복지과`, `세무회계과`, `소방안전관리과`, `아동미술지도과`, `아동보육과`, `영상콘텐츠과`, `유아교육과`, `융합소프트웨어과`, `정보통신과`, `호텔관광경영과`, `호텔외식서비스과`, `호텔외식조리과`, `효충사관과`) VALUES
	(2017, 54, 42, 43, 28, 42, 32, 36, 41, 51, 45, 51, 41, 42, 41, 45, 43, 56, 42, 35, 37, 43, 32, 26),
	(2018, 54, 41, 26, 32, 36, 43, 52, 38, 36, 41, 53, 43, 37, 43, 43, 38, 51, 35, 31, 34, 54, 33, 43),
	(2019, 51, 36, 34, 36, 34, 32, 34, 36, 56, 43, 57, 45, 46, 47, 39, 41, 46, 31, 26, 33, 45, 36, 33),
	(2020, 47, 34, 42, 34, 32, 36, 45, 35, 35, 38, 54, 47, 41, 45, 41, 38, 42, 27, 22, 31, 35, 34, 27),
	(2021, 36, 28, 37, 36, 27, 41, 31, 37, 42, 37, 58, 48, 37, 39, 36, 42, 39, 22, 21, 35, 47, 34, 37);
/*!40000 ALTER TABLE `department_volunteer_attribute1` ENABLE KEYS */;

-- 테이블 km_signal.department_volunteer_attribute2 구조 내보내기
CREATE TABLE IF NOT EXISTS `department_volunteer_attribute2` (
  `year` int(11) DEFAULT NULL,
  `IT경영과` int(11) DEFAULT NULL,
  `간호학과` int(11) DEFAULT NULL,
  `건축과` int(11) DEFAULT NULL,
  `게임콘텐츠과` int(11) DEFAULT NULL,
  `공간디자인과` int(11) DEFAULT NULL,
  `공연예술과` int(11) DEFAULT NULL,
  `국제비서과` int(11) DEFAULT NULL,
  `레포츠태권도과` int(11) DEFAULT NULL,
  `보건의료행정과` int(11) DEFAULT NULL,
  `뷰티케어과` int(11) DEFAULT NULL,
  `사회복지과` int(11) DEFAULT NULL,
  `세무회계과` int(11) DEFAULT NULL,
  `소방안전관리과` int(11) DEFAULT NULL,
  `아동미술지도과` int(11) DEFAULT NULL,
  `아동보육과` int(11) DEFAULT NULL,
  `영상콘텐츠과` int(11) DEFAULT NULL,
  `유아교육과` int(11) DEFAULT NULL,
  `융합소프트웨어과` int(11) DEFAULT NULL,
  `정보통신과` int(11) DEFAULT NULL,
  `호텔관광경영과` int(11) DEFAULT NULL,
  `호텔외식서비스과` int(11) DEFAULT NULL,
  `호텔외식조리과` int(11) DEFAULT NULL,
  `효충사관과` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.department_volunteer_attribute2:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `department_volunteer_attribute2` DISABLE KEYS */;
INSERT IGNORE INTO `department_volunteer_attribute2` (`year`, `IT경영과`, `간호학과`, `건축과`, `게임콘텐츠과`, `공간디자인과`, `공연예술과`, `국제비서과`, `레포츠태권도과`, `보건의료행정과`, `뷰티케어과`, `사회복지과`, `세무회계과`, `소방안전관리과`, `아동미술지도과`, `아동보육과`, `영상콘텐츠과`, `유아교육과`, `융합소프트웨어과`, `정보통신과`, `호텔관광경영과`, `호텔외식서비스과`, `호텔외식조리과`, `효충사관과`) VALUES
	(2017, 46, 58, 57, 72, 58, 68, 64, 59, 49, 55, 49, 59, 58, 59, 55, 57, 44, 58, 65, 63, 57, 68, 74),
	(2018, 46, 59, 74, 68, 64, 57, 48, 62, 64, 59, 47, 57, 63, 57, 57, 62, 49, 65, 69, 66, 46, 67, 57),
	(2019, 49, 64, 66, 64, 66, 68, 64, 64, 44, 57, 43, 55, 54, 53, 61, 59, 54, 69, 74, 67, 55, 64, 67),
	(2020, 53, 66, 58, 66, 68, 64, 55, 65, 65, 62, 46, 53, 59, 55, 59, 62, 58, 73, 78, 69, 65, 66, 73),
	(2021, 64, 72, 63, 64, 73, 59, 69, 63, 58, 63, 42, 52, 63, 61, 64, 58, 61, 78, 79, 65, 53, 66, 63);
/*!40000 ALTER TABLE `department_volunteer_attribute2` ENABLE KEYS */;

-- 테이블 km_signal.examination 구조 내보내기
CREATE TABLE IF NOT EXISTS `examination` (
  `연도` varchar(50) DEFAULT NULL,
  `지원자` int(11) DEFAULT NULL,
  `합격자` int(11) DEFAULT NULL,
  `등록자` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;

-- 테이블 데이터 km_signal.examination:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT IGNORE INTO `examination` (`연도`, `지원자`, `합격자`, `등록자`) VALUES
	('2017년', 16176, 6300, 1855),
	('2018년', 14424, 5163, 1633),
	('2019년', 16624, 6530, 1819),
	('2020년', 13457, 5662, 1442),
	('2021년', 13266, 5441, 1408);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;

-- 테이블 km_signal.information 구조 내보내기
CREATE TABLE IF NOT EXISTS `information` (
  `입학정보경로` varchar(50) DEFAULT NULL,
  `Y2017` int(11) DEFAULT NULL,
  `Y2018` int(11) DEFAULT NULL,
  `Y2019` int(11) DEFAULT NULL,
  `Y2020` int(11) DEFAULT NULL,
  `Y2021` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;

-- 테이블 데이터 km_signal.information:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT IGNORE INTO `information` (`입학정보경로`, `Y2017`, `Y2018`, `Y2019`, `Y2020`, `Y2021`) VALUES
	('학교 홈페이지', 191, 185, 174, 187, 191),
	('진학사', 245, 231, 253, 234, 251),
	('고등학교 선생님', 47, 58, 54, 44, 31),
	('지인추천', 17, 26, 19, 35, 27);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;

-- 테이블 km_signal.school_attribute 구조 내보내기
CREATE TABLE IF NOT EXISTS `school_attribute` (
  `attribute` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `y_seventeen` int(11) NOT NULL,
  `y_eighteen` int(11) NOT NULL,
  `y_nineteen` int(11) NOT NULL,
  `y_twenty` int(11) NOT NULL,
  `y_twenty_one` int(11) NOT NULL,
  PRIMARY KEY (`attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.school_attribute:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `school_attribute` DISABLE KEYS */;
INSERT IGNORE INTO `school_attribute` (`attribute`, `y_seventeen`, `y_eighteen`, `y_nineteen`, `y_twenty`, `y_twenty_one`) VALUES
	('일반고', 2869, 2966, 3251, 3162, 3342),
	('자율고', 15, 12, 22, 17, 22),
	('특목고', 124, 116, 146, 133, 178),
	('특성화고', 1386, 1265, 1473, 1386, 1564);
/*!40000 ALTER TABLE `school_attribute` ENABLE KEYS */;

-- 테이블 km_signal.university 구조 내보내기
CREATE TABLE IF NOT EXISTS `university` (
  `학교` varchar(50) DEFAULT NULL,
  `Y2017` int(11) DEFAULT NULL,
  `Y2018` int(11) DEFAULT NULL,
  `Y2019` int(11) DEFAULT NULL,
  `Y2020` int(11) DEFAULT NULL,
  `Y2021` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;

-- 테이블 데이터 km_signal.university:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT IGNORE INTO `university` (`학교`, `Y2017`, `Y2018`, `Y2019`, `Y2020`, `Y2021`) VALUES
	('일반고', 3342, 3254, 3301, 3142, 3121),
	('자율고', 22, 25, 29, 20, 19),
	('특목고', 178, 170, 152, 157, 147),
	('특성화교', 1564, 1506, 1489, 1442, 1409);
/*!40000 ALTER TABLE `university` ENABLE KEYS */;

-- 테이블 km_signal.volunteer_area 구조 내보내기
CREATE TABLE IF NOT EXISTS `volunteer_area` (
  `area` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `y_seventeen` int(11) DEFAULT NULL,
  `y_eigthteen` int(11) DEFAULT NULL,
  `y_nineteen` int(11) DEFAULT NULL,
  `y_twenty` int(11) DEFAULT NULL,
  `y_twenty_one` int(11) DEFAULT NULL,
  PRIMARY KEY (`area`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.volunteer_area:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `volunteer_area` DISABLE KEYS */;
INSERT IGNORE INTO `volunteer_area` (`area`, `y_seventeen`, `y_eigthteen`, `y_nineteen`, `y_twenty`, `y_twenty_one`) VALUES
	('강원도', 187, 211, 176, 215, 194),
	('경기도', 2361, 2213, 2387, 2245, 2356),
	('경상도', 28, 32, 26, 42, 32),
	('서울', 1754, 1763, 1723, 1872, 1783),
	('전라도', 42, 45, 34, 52, 34),
	('제주도', 10, 8, 13, 6, 12),
	('충청도', 14, 16, 17, 22, 18);
/*!40000 ALTER TABLE `volunteer_area` ENABLE KEYS */;

-- 테이블 km_signal.volunteer_attribute 구조 내보내기
CREATE TABLE IF NOT EXISTS `volunteer_attribute` (
  `attribute` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `y_seventeen` int(11) NOT NULL,
  `y_eighteen` int(11) NOT NULL,
  `y_nineteen` int(11) DEFAULT NULL,
  `y_twenty` int(11) DEFAULT NULL,
  `y_twenty_one` int(11) DEFAULT NULL,
  PRIMARY KEY (`attribute`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 km_signal.volunteer_attribute:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `volunteer_attribute` DISABLE KEYS */;
INSERT IGNORE INTO `volunteer_attribute` (`attribute`, `y_seventeen`, `y_eighteen`, `y_nineteen`, `y_twenty`, `y_twenty_one`) VALUES
	('수시', 3214, 3452, 3256, 3342, 3478),
	('정시', 1142, 1048, 1046, 1126, 1162);
/*!40000 ALTER TABLE `volunteer_attribute` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
