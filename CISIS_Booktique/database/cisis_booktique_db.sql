-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2014 at 02:32 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cisis_booktique_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_isbn` bigint(15) NOT NULL,
  `book_text` varchar(36) NOT NULL,
  `book_author` varchar(36) NOT NULL,
  `publisher_id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`book_isbn`),
  KEY `publisher_id` (`publisher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_isbn`, `book_text`, `book_author`, `publisher_id`) VALUES
(0, 'The Span Book', 'Canadian Wood Council', 25),
(71050401, 'Fundamentals of Canadian Business La', 'John A Willes; John H Willes', 3),
(71318895, 'Managerial Accounting', 'Garrison', 3),
(71319188, 'Business Communication Now', 'Locker; Findlay', 3),
(71320296, 'Facilities Management', 'Brian Murrary', 3),
(73379241, 'Launching the Imagination', 'Mary Stewart', 3),
(132158855, 'Technically-Write!', 'Blicq, Moretto', 10),
(132359238, 'Digital Fundamentals', 'Floyd', 10),
(132423137, 'Understanding the Music Business', 'Dick Weissman', 10),
(132549868, 'Electronic Decives Convential curren', 'Floyd', 10),
(132818117, 'International Trauma Life Support fo', 'John Campbell', 10),
(133071160, 'Fundamentals of Organizational Behav', 'Nacny Langton; Stephen Robbins; Timo', 10),
(135014332, 'Elements of The Nature and Propertie', 'Nyle C Brady; Ray R Weil', 10),
(136026372, 'Discover Jazz', 'John Edward Hasse; Tad Lathrop', 10),
(136128984, 'Popular World Music', 'Andrew Shahriari', 10),
(137129652, 'Experiments in Digital Fundamentals', 'David M Buchla', 10),
(176441340, 'Canadian Professional Engineering an', 'Gordon C Andrews', 10),
(176509705, 'Learning Sage Simply Accounting A Mo', 'Harvey Freedman; Carol Smith', 4),
(176530839, 'Finance For Non-Financial Managers', 'Pierre G. Bergeron', 4),
(176574824, 'BUSI-1010 Human Resource Management ', 'Stewart, Belcourt, Fitzgerald, Bohla', 4),
(205246977, 'Rock and Roll Its History and Stylis', 'Joe Stuessy; Scott Lipscomb', 10),
(285732657, 'Micosoft Office 2013  First Course', 'Beskeen Cram Duffy et al', 4),
(321996798, 'English Simplified', 'Ellsworth, Higgins', 10),
(470678886, 'Introduction to Information Systems ', 'Rainer; Cegielski; Splettstoesser-Ho', 7),
(571676696, 'Recreation Programming', 'J Robert Rossman; Barbara Elwood Sch', 12),
(581153446, 'Technical Theater for Nontechnical P', 'Drew Campbell', 22),
(593710361, 'Water Treatment Plant Operation A Fi', '', 24),
(593710385, 'Operation of Wasterwater Treatment P', '', 24),
(593710392, 'Operation of Wastewater Treatment Pl', '', 24),
(593710408, 'Water Treatement Plant Operation A F', '', 24),
(736059527, 'Organizing Successful Tournaments', 'John Byl', 11),
(761704580, 'Sports Marketing A Canadian Perspect', 'O''Reilly; Seguin', 4),
(771895043, 'Counselling Skills', 'Bob Shebib', 17),
(871271587, 'The Art of Making Dances', 'Doris Humphrey', 21),
(878223525, 'Skills and Techniques for Group Work', 'Rosemarie Smead', 15),
(894257848, 'Wizard inc. An Accounting Simulation', 'Ian Simpson', 9),
(894870900, 'Competition Monologues Book Two', 'Lindsay Price', 20),
(896421551, 'The Graphics Company', 'Carol Zwicker', 6),
(911592288, 'Walker''s Building Estimator''s Refere', 'Frank R Walker', 23),
(911592290, 'Walker''s Budilign Estimator''s Refern', 'Frank R Walker', 23),
(920009482, 'The Canadian Press Caps and Spelling', 'N/A', 19),
(935229585, 'The Book of Style for Medical Transc', 'N/A', 18),
(965983609, 'No Such Thing As a Bad Kid', 'Charles D Appelstein', 14),
(969730217, 'Healing Spaces', 'Michael Burns', 13),
(981010601, 'Writing Matters', 'Glenys Acorn', 16),
(1259091562, 'Project Management', 'Brian Murrary', 3),
(1557988102, 'Publication Manual of the American P', 'APA', 2),
(1894870506, 'Competition Monologues', 'Lindsay Price', 20),
(2147483647, 'To kill a mockingbird', 'James Williams', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(5) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(99999, 'java 2232');

-- --------------------------------------------------------

--
-- Table structure for table `course_order`
--

CREATE TABLE IF NOT EXISTS `course_order` (
  `course_order_id` int(5) NOT NULL AUTO_INCREMENT,
  `course_order_notes` varchar(255) NOT NULL,
  `course_order_qty` int(3) NOT NULL,
  `course_ordered_date_ordered` datetime NOT NULL,
  `course_id` int(5) NOT NULL,
  `program_account_id` int(5) NOT NULL,
  `book_isbn` bigint(15) NOT NULL,
  `course_order_shipping_fee` double(6,2) NOT NULL,
  `course_order_cost` double(6,2) NOT NULL,
  `course_order_retail` double(6,2) NOT NULL,
  `staff_id` int(5) NOT NULL,
  `course_order_handling_fee` double(6,2) NOT NULL,
  PRIMARY KEY (`course_order_id`),
  KEY `course_id` (`course_id`),
  KEY `program_account_id` (`program_account_id`),
  KEY `book_isbn` (`book_isbn`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100000 ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(6) NOT NULL COMMENT 'This member id is the primary key',
  `user_id` varchar(20) NOT NULL COMMENT 'Member''s user id',
  `organization_type` int(6) NOT NULL COMMENT 'A reference to the organization code (1)to which the member belongs.',
  `status_type` int(6) NOT NULL COMMENT 'A reference to the status code (2).',
  `user_type` int(11) NOT NULL COMMENT 'Code type 17',
  `created_date_time` datetime NOT NULL COMMENT 'Created date/time',
  `created_user_id` varchar(20) NOT NULL COMMENT 'Created user id ',
  `updated_date_time` datetime NOT NULL COMMENT 'Updated date/time',
  `updated_user_id` varchar(20) NOT NULL COMMENT 'Updated user id',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the base member tale.  Other tables will link by the';

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `user_id`, `organization_type`, `status_type`, `user_type`, `created_date_time`, `created_user_id`, `updated_date_time`, `updated_user_id`) VALUES
(1, 'bjmaclean', 1, 1, 1, '2014-08-05 00:00:00', 'Admin', '2014-08-05 00:00:00', 'Admin'),
(7, '1052', 1, 1, 2, '2014-08-16 22:52:50', '', '2014-08-16 22:52:50', ''),
(8, 'AlanNormal', 1, 1, 2, '2014-08-18 15:08:32', '', '2014-08-18 15:08:32', ''),
(9, 'AlanAdmin', 1, 1, 1, '2014-08-18 15:09:03', '', '2014-08-18 15:09:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `member_access`
--

CREATE TABLE IF NOT EXISTS `member_access` (
  `member_id` int(6) NOT NULL COMMENT 'Member id',
  `user_id` varchar(20) NOT NULL COMMENT 'Member''s user id',
  `password` varchar(20) NOT NULL COMMENT 'Member''s password',
  `access_string` varchar(20) NOT NULL COMMENT 'Bits representing the roles for this user',
  `created_date_time` datetime NOT NULL,
  `created_user_id` varchar(20) NOT NULL,
  `updated_date_time` datetime NOT NULL,
  `updated_user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This contains member access data';

--
-- Dumping data for table `member_access`
--

INSERT INTO `member_access` (`member_id`, `user_id`, `password`, `access_string`, `created_date_time`, `created_user_id`, `updated_date_time`, `updated_user_id`) VALUES
(1, 'bjmaclean', 'bjmacleanpw', '1111111111', '2014-06-07 00:00:00', 'BJMACLEAN', '2014-08-17 21:40:37', 'bjmaclean'),
(2, 'jdsmith', 'rboard', '1111100000', '2014-08-14 22:26:22', '', '2014-08-14 22:26:22', ''),
(3, 'sstomo', 'rboard', '1111100000', '2014-08-14 22:40:45', '', '2014-08-14 22:40:45', ''),
(4, 'aabbbb', 'rboard', '1111100000', '2014-08-14 22:43:22', '', '2014-08-14 22:43:22', ''),
(5, 'aacccc', 'rboard', '1111100000', '2014-08-14 22:47:16', '', '2014-08-14 22:47:16', ''),
(6, 'aadddd', 'rboard', '1111100000', '2014-08-14 22:50:26', '', '2014-08-14 22:50:26', ''),
(7, '1052', '1052', '11111111', '2014-08-16 22:52:50', '', '2014-08-16 23:10:11', '1052'),
(8, 'AlanNormal', 'rboard', '11111111', '2014-08-18 15:08:32', '', '2014-08-18 15:08:32', ''),
(9, 'AlanAdmin', 'miller4', '11111111', '2014-08-18 15:09:03', '', '2014-08-25 09:45:14', 'AlanAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `member_bio`
--

CREATE TABLE IF NOT EXISTS `member_bio` (
  `member_id` int(6) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `address_1` varchar(30) DEFAULT NULL,
  `address_2` varchar(30) DEFAULT NULL,
  `municipality` varchar(30) DEFAULT NULL COMMENT 'Community/town/city',
  `province_code` int(3) DEFAULT NULL COMMENT 'Code type 5',
  `postal_code` varchar(6) DEFAULT NULL COMMENT 'Postal code (no dash)',
  `home_phone` varchar(10) DEFAULT NULL,
  `cell_phone` varchar(10) DEFAULT NULL,
  `work_phone` varchar(10) DEFAULT NULL,
  `work_phone_extension` varchar(5) DEFAULT NULL,
  `fax_number` varchar(10) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL COMMENT 'yyyy-mm-dd format',
  `gender_code` int(3) DEFAULT NULL COMMENT 'code type 6'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Member biographical information';

--
-- Dumping data for table `member_bio`
--

INSERT INTO `member_bio` (`member_id`, `first_name`, `middle_name`, `last_name`, `address_1`, `address_2`, `municipality`, `province_code`, `postal_code`, `home_phone`, `cell_phone`, `work_phone`, `work_phone_extension`, `fax_number`, `email_address`, `date_of_birth`, `gender_code`) VALUES
(2, 'Steve', 'Joseph', 'Banks', '333 There Street', NULL, 'Charlottetown', 5, 'c1b0e3', '9025692222', NULL, NULL, NULL, NULL, 'stevebanks@hollandcollege.com', '19950-01-0', 1),
(1, 'Bruce', 'John', 'MacLean', '123 Here Drive', NULL, 'Stratford', 5, 'c1b0e3', '9025691111', NULL, NULL, NULL, NULL, 'bjmaclean@hollandcollege.com', '2000-01-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(10) NOT NULL AUTO_INCREMENT,
  `notification_type_code` int(3) NOT NULL COMMENT 'Code type 16',
  `notification_detail` varchar(144) NOT NULL,
  `status_code` int(11) NOT NULL,
  `created_date_time` datetime NOT NULL,
  `created_user_id` varchar(20) DEFAULT NULL,
  `updated_date_time` datetime NOT NULL,
  `updated_user_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_type_code`, `notification_detail`, `status_code`, `created_date_time`, `created_user_id`, `updated_date_time`, `updated_user_id`) VALUES
(1, 1, 'test 1', 0, '2014-07-16 23:13:09', NULL, '2014-07-16 23:34:28', NULL),
(2, 2, 'test number 2', 0, '2014-07-16 23:16:33', NULL, '2014-07-16 23:32:50', NULL),
(3, 1, 'this is test 3', 0, '2014-07-16 23:17:33', NULL, '2014-07-16 23:37:20', NULL),
(4, 1, 'Test at 1137', 0, '2014-07-16 23:37:15', NULL, '2014-07-21 20:57:20', NULL),
(5, 2, 'This is a test on Thursday.', 0, '2014-07-17 20:59:34', NULL, '2014-07-21 20:57:16', NULL),
(6, 2, 'test 843', 0, '2014-07-21 20:43:56', NULL, '2014-07-21 20:57:14', NULL),
(7, 2, 'test 848', 0, '2014-07-21 20:48:44', NULL, '2014-07-21 20:57:11', NULL),
(8, 2, 'test 848', 0, '2014-07-21 20:49:43', NULL, '2014-07-21 20:57:08', NULL),
(9, 2, 'test 852', 0, '2014-07-21 20:52:30', NULL, '2014-07-21 20:57:04', NULL),
(10, 2, 'test 852', 0, '2014-07-21 20:53:34', NULL, '2014-07-21 20:57:06', NULL),
(11, 2, 'test 857', 1, '2014-07-21 20:57:30', NULL, '2014-07-21 20:57:30', NULL),
(12, 1, 'bj test', 1, '2014-09-09 15:06:27', NULL, '2014-09-09 15:06:27', NULL),
(13, 1, 'hi', 1, '2014-09-09 15:07:00', NULL, '2014-09-09 15:07:00', NULL),
(14, 2, 'ayy lmao', 1, '2014-09-09 15:07:42', NULL, '2014-09-09 15:07:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE IF NOT EXISTS `program` (
  `program_account_id` int(5) NOT NULL,
  `program_name` varchar(50) NOT NULL,
  PRIMARY KEY (`program_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_account_id`, `program_name`) VALUES
(2884, 'Medical Support Services'),
(10387, 'Dance Performance'),
(28484, 'Fundamental Arts'),
(29474, 'Dental Assisting'),
(29484, 'Steamfitting/Pipefitting'),
(29934, 'Professional Golf Management'),
(37462, 'Enviromental Applied Science Technology'),
(37573, 'Business Administration'),
(39448, 'Practical Nursing Souris'),
(39483, 'Plumbing'),
(39487, 'Pastry Arts'),
(42624, 'International Hospitality Mangement'),
(44776, 'Human Services'),
(48370, 'Wildlife Conservation Technology'),
(48374, 'College Foundation Program'),
(48473, 'Computer Networking Technology'),
(49129, 'Construction Technology'),
(49277, 'Primary Care Paramedicine'),
(49374, 'Computer Information Systems'),
(49475, 'Human Resource Management'),
(49573, 'Child and Health Care Worker'),
(49836, 'Music Performance'),
(50300, 'Accounting Technology'),
(50680, 'Architechural Technology'),
(57498, 'Performing Arts Foundation'),
(57629, 'Computer Information Systems Distance'),
(59383, 'Photography & Digital Imaging'),
(59497, 'Bioscience Technology'),
(60877, 'Practical Nursing CC'),
(69338, 'Video Game Art & Animation'),
(69693, 'Resident Care Worker CC'),
(74404, 'Golf Club Management'),
(74639, 'Graphic Design'),
(80330, 'Applied Degree in Culinary Operations'),
(80503, 'Advanced Care Paramedicine'),
(83649, 'Sport & Leisure Management'),
(84643, 'Electronics Engineering Technology'),
(87483, 'Culinary Arts'),
(90983, 'Tourism & Travel Management'),
(93645, 'Welding Fabrication'),
(99383, 'Early Childhood Care and Education');

-- --------------------------------------------------------

--
-- Table structure for table `program_course`
--

CREATE TABLE IF NOT EXISTS `program_course` (
  `course_id` int(5) NOT NULL,
  `program_course_start` date NOT NULL,
  `program_course_end` date NOT NULL,
  `staff_id` int(5) NOT NULL,
  `program_course_year` int(1) NOT NULL,
  `program_account_id` int(5) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `staff_id` (`staff_id`),
  KEY `program_account_id` (`program_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `publisher_id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'This is the primary key for the publisher',
  `publisher_name` varchar(36) NOT NULL,
  `publisher_return_address` varchar(60) NOT NULL,
  `publisher_notes` varchar(255) NOT NULL,
  `publisher_fax` varchar(20) NOT NULL,
  `publisher_phone` varchar(20) NOT NULL,
  `publisher_email` varchar(254) NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`, `publisher_return_address`, `publisher_notes`, `publisher_fax`, `publisher_phone`, `publisher_email`) VALUES
(1, 'James Williams', '123 street canada', 'This is good', '999-999-99', '999', 'bob@hotmail.com'),
(2, 'American Psychological Association', ' ', ' ', ' ', ' ', ' '),
(3, 'McGraw Hill Ryerson', '300 Water Street, Whitby, ON  L1N 9Z9', 'www.mheducation.ca', '(800) 463-5885', '(800) 565-5758', ' '),
(4, 'Nelson', '1120 Birchmount Road, Toronto, ON  M1K 5G4', 'www.nelson.com', '(800) 668-0671', '(800) 268-2222', ' '),
(5, 'New Readers Bookstore', '35 Jackes Avenue, Toronto, ON, M4T 1E2', 'www.newreadersbookstore.ca', '(416) 323-3522', '(800) 555-6523', ' '),
(6, 'Blue Sky Publishing', '10714 63 Street Edmonton AB T6A 2N1', ' ', '(780) 466-3865', '(780) 965-5516', ' '),
(7, 'John Wiley & Sons', 'Wiley Canada Returns c/o 34 Armstrong Ave Georgetown, ON L7G', '2nd fax- 416-236-8743', '(800) 565-6802', '(800) 567-4797', ' '),
(8, 'Login Brothers Canada', '1-6255 Cantay Rd. Mississauga, ON L5R 3Z4', '2nd fax- Corporate 1-800-665-0103\r\n2nd phone- Corporate 1-800-665-1148', '(905) 507-9919', '(905) 507-8953', ' '),
(9, 'PLP Publishing', '154956 15th Lane Thamesford ON N0M 2M0', ' ', '(519) 285-2572', '(519) 285-3049', 'plppub@rogers.com'),
(10, 'Pearson Education', '195 Harry Walker Parkway North  Newmarket, ON L3& 7B3', ' ', ' ', '(800) 567-3800', ' '),
(11, 'Human Kinetics', '475 Devonshire Rd Unit #100 Windsor, ON N8Y 2L5', ' ', '(519) 971-9797', '(519) 971-9500', ' '),
(12, 'Sagamore', '1807 N Fereral Drive Urbana, IL 61801-1051', ' ', '(217) 359-5975', '(217) 359-5940', ' '),
(13, 'CYC SERVICES', '3394 Scanlan Rd RR#3 Harrowsmith ON K0H 1V0', ' ', '(613) 376-3640', '(613) 536-0367', ' '),
(14, 'Appelstein Training Resources LLC', '12 Martine Ave Salem, NH 03079', ' ', '(603) 898-5573', '(603) 898-5573', 'charlieap@comcast.net'),
(15, 'Research Press Co. INC.', '2612 N Mattis Ave. Champaign, IL 61822-1053 US', ' ', '(217) 352-1221', '(800) 519-2707', ' '),
(16, 'S.E.E.K Publishing', '2430 Lakewood Ave. Brights Grove, ON N0N 1C0', ' ', ' ', '(519) 384-2830', 'seekpublishing@yahoo.ca'),
(17, 'British Columbia', ' ', ' ', ' ', '(250) 387-3309', ' '),
(18, 'AHDI', '4230 Kierman Ave Suite 130 Modesto CA 95356', ' ', '(209) 527-9633', '(800) 982-2182', ' '),
(19, 'The Canadian Press', '36 King Street East Toronto CA M5C 2L9', ' ', ' ', '(416) 364-0321', ' '),
(20, 'Theatrefolk', 'PO Box 1064 Crystal Beach ON L0S 1B0', ' ', '(877) 245-9138', '(866) 245-9138', 'tfolk@theatrefolk.com'),
(21, 'Princeton Book Company Publishers', '614 US Highway 130 Highstown NJ 08520', 'www.dancehorizons.com', '(609) 426-1344', '(609) 426-0602', ' '),
(22, 'Thomas Allen & Son', '390 Steelcase Road East Markham ON L3R 1G2', 'www.thomasallen.ca', '(905) 475-6747', '(905) 475-9126', 'info@t-allen.com'),
(23, 'Frank R Walker Co.', '700 Springer Dr Lombard IL 60148', ' ', '(630) 317-7540', '(630) 613-9312', ' '),
(24, 'Office of Water Programs', '6000 J St Sacramento CA 95819-6025', ' ', ' ', '(916) 278-6142', 'wateroffice@owp.csus.edu'),
(25, 'Canadian Wood Concil', '99 Rue Bank St. Suite 400 Ottawa ON K1P 6B9', ' ', '(613) 747-6264', '(613) 747-5544', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(5) NOT NULL AUTO_INCREMENT,
  `staff_fname` varchar(30) NOT NULL,
  `staff_lname` varchar(30) NOT NULL,
  `staff_email` varchar(254) NOT NULL,
  `staff_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100000 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_fname`, `staff_lname`, `staff_email`, `staff_phone`) VALUES
(1, 'Cheryl', 'Lambert', 'clambert@hollandcollege.com', '(902) 566-9523'),
(2, 'Wilma', 'Crawford', 'wcrawford@hollandcollege.com', '(902) 566-9548'),
(3, 'Debbie', 'King', 'dking@hollandcollege.com', '(902) 566-9657'),
(4, 'Donna', 'Adams', 'DJAdams@hollandcollege.com', '(902) 566-9620'),
(5, 'Bobby', 'Adams', 'RJAdams@hollandcollege.com', '(902) 566-9685'),
(6, 'Erroll', 'Affleck', 'eaffleck@hollandcollege.com', '(902) 566-9571'),
(7, 'Craig', 'Alexander', 'chalexander@hollandcollege.com', '(902) 566-9638'),
(8, 'Edward', 'Allen', 'ecallen@hollandcollege.com', '(902) 888-6485'),
(9, 'Julie', 'Ambrose', 'jmambrose@hollandcollege.com', '(902) 566-9553'),
(10, 'Hans', 'Anderegg', 'handeregg@hollandcollege.com', '(902) 894-6816'),
(11, 'Tammy', 'Antoniak', 'tlantoniak@hollandcollege.com', '(902) 566-9332'),
(12, 'Andrea', 'Arsenault', 'anarsenault@hollandcollege.com', '(902) 566-9544'),
(13, 'Brenda', 'Arsenault', 'barsenault@hollandcollege.com', '(902) 566-9535'),
(14, 'Blair', 'Arsenault', 'bparsenault@hollandcollege.com', '(902) 566-9330'),
(15, 'Chris', 'Arsenault', 'carsenault@hollandcollege.com', '(902) 566-9677'),
(16, 'Cheryl', 'Arsenault', 'clarsenault@hollandcollege.com', '(902) 888-6474'),
(17, 'Greg', 'Arsenault', 'gjarsenault@hollandcollege.com', '(902) 566-9615'),
(18, 'Keith', 'Arsenault', 'karsenault@hollandcollege.com', '(902) 888-6739'),
(19, 'Tammy', 'Arsenault', 'tarsenault@hollandcollege.com', '(902) 852-0024'),
(20, 'Susan', 'Ashley', 'sashley@hollandcollege.com', '(902) 629-4218'),
(21, 'Marjorie', 'Atkins', 'maatkins@hollandcollege.com', '(902) 894-6845'),
(22, 'Jeffrey', 'Baglole', 'jwbaglole@hollandcollege.com', '(302) 566-9564'),
(23, 'Jake', 'Baird', 'jbaird@hollandcollege.com', '(902) 566-9687'),
(24, 'Freda', 'Avery', 'favery@hollandcollege.com', '(902) 566-9685'),
(25, 'Cheryl', 'Banks', 'cabanks@hollandcollege.com', '(902) 859-3460'),
(26, 'Tiffany', 'Baxter', 'tdbaxter@hollandcollege.com', '(902) 566-9664'),
(27, 'Angela', 'Beals', 'arbeals@hollandcollege.com', '(902) 566-9620'),
(28, 'Dave', 'Beaton', 'dbeaton@hollandcollege.com', '(902) 894-6899'),
(29, 'Howard', 'Beattie', 'hbeattie@hollandcollege.com', '(902) 566-9302'),
(30, 'Cam', 'Beck', 'cbeck@hollandcollege.com', '(902) 566-9606'),
(31, 'Patricia', 'Bell', 'pbell@hollandcollge.com', '(902) 629-4226'),
(32, 'Liane', 'Belway', 'nlbelway@hollandcollege.com', '(902) 888-6479'),
(33, 'Jamie', 'Bernard', 'jrbernard@hollandcollege.com', '(902) 853-0019'),
(34, 'Kimball', 'Bernard', 'kbernard@hollandcollege.com', '(902) 894-6813'),
(35, 'Mark', 'Betts', 'mbetts@hollandcollege.com', '(902) 894-6894'),
(36, 'Elaine', 'Black', 'eblack@hollandcollege.com', '(902) 894-6805'),
(37, 'Robert', 'Blanchard', 'rblanchard@hollandcollege.com', '(902) 629-4207'),
(38, 'Richard', 'Blouin', 'rpblouin@hollandcollege.com', '(902) 888-6496'),
(39, 'Dixie', 'Boisvert', 'dcboisvert@hollandcollege.com', '(902) 566-9537'),
(40, 'Barb', 'Boss', 'hbboss@hollandcollege.com', '(902) 566-9564'),
(41, 'Faye', 'Boswall', 'fboswall@hollandcollege.com', '(902) 566-9645'),
(42, 'Hazel', 'Boswall', 'hboswall@hollandcollege.com', '(902) 894-6828'),
(43, 'Craig', 'Boudreau', 'cboudreau@hollandcollege.com', '(902) 652-2426'),
(44, 'Michelle', 'Boulter', 'mdboulter@hollandcollege.com', '(902) 566-9521'),
(45, 'Don', 'Bowers', 'dfbowers@hollandcollege.com', '(902) 566-9338'),
(46, 'Kevin', 'Boyce', 'kboyce@hollandcollege.com', '(902) 894-6827'),
(47, 'Margaret', 'Bradley', 'mbradley@hollandcollege.com', '(902) 566-9641'),
(48, 'Shelly', 'Bradley', 'sbradley@hollandcollege.com', '(902) 566-9667'),
(49, 'Gweneth', 'Branch-Rice', 'gabranchrice@hollandcollege.com', '(902) 566-9367'),
(50, 'Richard', 'Braunauer', 'rbraunauer@hollandcollege.com', '(902) 894-6854'),
(51, 'Donald', 'Brown', 'dkbrown@hollandcollege.com', '(902) 888-6440'),
(52, 'Marc', 'Brunet', 'mbrunet@hollandcollege.com', '(902) 894-6812'),
(53, 'Jennifer', 'Bryant', 'jabryant@hollandcollege.com', '(902) 894-6804'),
(54, 'Michael', 'Bryanton', 'mbryanton@hollandcollege.com', '(902) 894-6872'),
(55, 'Kirby', 'Burke', 'kdburke@hollandcollege.com', '(902) 894-6842'),
(56, 'Kelly', 'Byrne', 'kdbyrne@hollandcollege.com', '(902) 566-9396'),
(57, 'Calvin', 'Caiger', 'cjcaiger@hollandcollege.com', '(902) 888-6488'),
(58, 'Gerald', 'Caissy', 'gcaissy@hollandcollege.com', '(902) 888-6431'),
(59, 'Eryn', 'Callin', 'elcallin@hollandcollege.com', '(902) 566-9619'),
(60, 'Jeff', 'Cameron', 'jcameron@hollandcollege.com', '(902) 888-6411'),
(61, 'Julia', 'Cameron', 'jdcameron@hollandcollege.com', '(902) 566-9377'),
(62, 'Jillian', 'Cameron', 'jmcameron@hollandcollege.com', '(902) 566-9675'),
(63, 'Alexander', 'Campbell', 'ajcampbell@hollandcollege.com', '(902) 566-9580'),
(64, 'Carla', 'Campbell', 'carcampbell@hollandcollege.com', '(902) 566-9640'),
(65, 'Jessica', 'Campbell', 'jdcampbell@hollandcollege.com', '(902) 853-0024'),
(66, 'Sharon', 'Campbell', 'scampbell@hollandcollege.com', '(902) 566-9628'),
(67, 'Tracey', 'Campbell', 'tcampbell@hollandcollege.com', '(902) 367-7701'),
(68, 'Jo-Ann', 'Campbell-Boutilier', 'jlboutilier@hollandcollege.com', '(902) 629-4273'),
(69, 'Grant', 'Canvin', 'gcanvin@hollandcollege.com', '(902) 629-4223'),
(70, 'Lynn', 'Carr', 'lcarr@hollandcollege.com', '(902) 566-9515'),
(71, 'Gaylene', 'Carragher', 'gcarragher@hollandcollege.com', '(902) 629-7032'),
(72, 'George', 'Carragher', 'glcarragher@hollandcollege.com', '(902) 566-9344'),
(73, 'Sandy', 'Carruthers', 'scarruthers@hollandcollege.com', '(902) 566-9527'),
(74, 'Gary', 'Caseley', 'gkcaseley@hollandcollege.com', '(902) 888-6756'),
(75, 'Jolene', 'Chan', 'jchan@hollandcollege.com', '(902) 566-9584'),
(76, 'Patrick', 'Cheverie', 'pwcheverie@hollandcollege.com', '(902) 853-0015'),
(77, 'Holly', 'Chiasson', 'hlchiasson@hollandcollege.com', '(902) 894-6868'),
(78, 'Susan', 'Clarkin', 'sclarkin@hollandcollege.com', '(902) 888-6700'),
(79, 'Austin', 'Clement', 'aclement@hollandcollege.com', '(902) 894-6808'),
(80, 'Christine', 'Clement', 'ceclement@hollandcollege.com', '(902) 566-9620'),
(81, 'Christine', 'Clements', 'caclements@hollandcollege.com', '(902) 566-9572'),
(82, 'Darcy', 'Clinton', 'daclinton@hollandcollege.com', '(902) 566-9504'),
(83, 'Melissa', 'Clinton', 'msclinton@hollandcollege.com', '(902) 566-9502'),
(84, 'Ron', 'Clough', 'rjclough@hollandcollege.com', '(902) 566-9621'),
(85, 'Mitch', 'Cobb', 'macobb@hollandcollege.com', '(902) 566-9665'),
(86, 'Brodie', 'Coffin', 'becoffin@hollandcollege.com', '(902) 566-9698'),
(87, 'Kathie', 'Coffin-Sulis', 'kcoffin@hollandcollege.com', '(902) 894-6819'),
(88, 'Robert', 'Colborne', 'racolborne@hollandcollege.com', '(902) 629-4204'),
(89, 'Celeste', 'Coles', 'ccoles@hollandcollege.com', '(902) 894-6868'),
(90, 'Bruceyene', 'Collins', 'bcollins@hollandcollege.com', '(902) 566-9348'),
(91, 'Brenda', 'Compton', 'bcompton@hollandcollege.com', '(902) 566-9391'),
(92, 'Kellsay', 'Compton', 'kdcompton@hollandcollege.com', '(902) 629-4240'),
(93, 'Scott', 'Compton', 'scompton@hollandcollege.com', '(902) 566-9689'),
(94, 'April', 'Condon', 'ajcondon@hollandcollege.com', '(902) 566-9526'),
(95, 'Amy', 'Connolly', 'anconnolly@hollandcollege.com', '(902) 888-6434'),
(96, 'Chris', 'Connolly', 'csconnolly@hollandcollege.com', '(902) 629-4204'),
(97, 'Jeannie', 'Connolly', 'jconnolly@hollandcollege.com', '(902) 894-6821'),
(98, 'Susan', 'Conohan', 'sconohan@hollandcollege.com', '(902) 838-4026'),
(99, 'Allison', 'Cooke', 'amcooke@hollandcollege.com', '(902) 629-4204'),
(100, 'Tom', 'Corcoran', 'tcorcoran@hollandcollege.com', '(902) 566-9633'),
(101, 'Laura', 'Cormier', 'lcormier@hollandcollege.com', '(902) 888-6468'),
(102, 'Matt', 'Cormier', 'mgcormier@hollandcollege.com', '(902) 566-9561'),
(103, 'Joy', 'Coulson', 'jcoulson@hollandcollege.com', '(902) 888-6400'),
(104, 'Lindsay', 'Court', 'llcourt@hollandcollege.com', '(902) 566-9680'),
(105, 'Tracy', 'Craig', 'tscraig@hollandcollege.com', '(902) 566-9369'),
(106, 'Velda', 'Crane', 'vcrane@hollandcollege.com', '(902) 629-4237'),
(107, 'Madeline', 'Craswell', 'mcraswell@hollandcollege.com', '(902) 566-9684'),
(108, 'Callie', 'Croken', 'clcroken@hollandcollege.com', '(902) 629-4204'),
(109, 'Nathaniel', 'Croken', 'njcroken@hollandcollege.com', '(902) 888-6434'),
(110, 'Ronald', 'Crooks', 'rpcrooks@hollandcollege.com', '(902) 566-9583'),
(111, 'Daniel', 'Cudmore', 'dccudmore@hollandcollege.com', '(902) 894-6870'),
(112, 'Ken', 'Culleton', 'kculleton@hollandcollege.com', '(902) 888-6495'),
(113, 'Billy', 'Curran', 'bjcurran@hollandcollege.com', '(902) 894-6845'),
(114, 'Mike', 'Curran', 'mwcurran@hollandcollege.com', '(902) 894-6857'),
(115, 'Kim', 'Currie', 'kcurrie@hollandcollege.com', '(902) 566-9623'),
(116, 'Martha', 'Cusack', 'mmcusack@hollandcollege.com', '(902) 566-9576'),
(117, 'Joanne', 'd''Entremont', 'jdentremont@hollandcollege.com', '(902) 566-9334'),
(118, 'Susan', 'Dalton', 'sdalton@hollandcollege.com', '(902) 882-3450'),
(119, 'Craig', 'Cauphinee', 'chcauphinee@hollandcollege.com', '(902) 894-6809'),
(120, 'Chris', 'Delderfield', 'cdelderfield@hollandcollege.com', '(902) 652-2055'),
(121, 'Rod', 'Dempsey', 'rjdempsey@hollandcollege.com', '(902) 566-9307'),
(122, 'Don', 'DesRoches', 'ddesroches@hollandcollege.com', '(902) 888-6710'),
(123, 'Joan', 'Diamond', 'jdiamond@hollandcollege.com', '(902) 629-4248'),
(124, 'Andrew', 'Dibling', 'amdibling@hollandcollege.com', '(902) 888-6433'),
(125, 'Michael', 'Dimitroff', 'madimitroff@hollandcollege.com', '(902) 566-9543'),
(126, 'Jeff', 'Dingwell', 'jdingwell@hollandcollege.com', '(902) 888-6439'),
(127, 'Andrew', 'Dobson', 'adobson@hollandcollege.com', '(902) 888-6450'),
(128, 'Preston', 'Dockendorff', 'pdockendorff@hollandcollege.com', '(902) 652-2055'),
(129, 'Jeff', 'Donovan', 'jdonovan@hollandcollege.com', '(902) 894-6844'),
(130, 'Alan', 'Doucette', 'ardoucette@hollandcollege.com', '(902) 888-6485'),
(131, 'Patricia', 'Doucette', 'pmdoucette@hollandcollege.com', '(902) 566-9558'),
(132, 'Allison', 'Doughart', 'adoughart@hollandcollege.com', '(902) 566-9360'),
(133, 'Stephen', 'Dover', 'sldover@hollandcollege.com', '(902) 566-5928'),
(134, 'Alan', 'Dowling', 'adowling@hollandcollege.com', '(902) 566-9539'),
(135, 'Jared', 'Doyle', 'jmdoyle@hollandcollege.com', '(902) 393-2652'),
(136, 'Mary', 'Doyle', 'mdoyle@hollandcollege.com', '(902) 566-9268'),
(137, 'Rosemary', 'Doyle', 'rmdoyle@hollandcollege.com', '(902) 566-9685'),
(138, 'Maria', 'Driscoll', 'mhdriscoll@hollandcollege.com', '(902) 566-9540'),
(139, 'Jean-Sebastian', 'Duchesne', 'jduchesne@hollandcollege.com', '(902) 566-9364'),
(140, 'Deborah', 'Duncan', 'dduncan@hollandcollege.com', '(902) 652-2055'),
(141, 'Robbie', 'Duncan', 'rduncan@hollandcollege.com', '(902) 629-4265'),
(142, 'Justin', 'Dunn', 'jdunn@hollandcollege.com', '(902) 566-9654'),
(143, 'Millicent', 'Durant', 'medurant@hollandcollege.com', '(902) 566-9685'),
(144, 'Lori-Beth', 'Dwyer', 'ladwyer@hollandcollege.com', '(902) 566-9629'),
(145, 'Cindy', 'Dyment', 'cdyment@hollandcollege.com', '(902) 888-6737'),
(146, 'Gordon', 'Ellis', 'gellis@hollandcollege.com', '(902) 629-4252'),
(147, 'Steve', 'Ellis', 'sellis@hollandcollege.com', '(902) 888-6489'),
(148, 'Jeff', 'Ellsworth', 'jrellsworth@hollandcollege.com', '(902) 853-0012'),
(149, 'Susan', 'Escoffery', 'smescoffery@hollandcollege.com', '(902) 628-9533'),
(150, 'Anne', 'Farrell', 'afarrell@hollandcollege.com', '(902) 566-9634'),
(151, 'Shirley', 'Ferguson', 'sferguson@hollandcollege.com', '(902) 566-9621'),
(152, 'Eric', 'Fiander', 'efiander@hollandcollege.com', '(902) 888-6716'),
(153, 'Lisa', 'Finkle', 'lmfinkle@hollandcollege.com', '(902) 888-6453'),
(154, 'Ann', 'Fitzgerald', 'afitzgerald@hollandcollege.com', '(902) 566-9564'),
(155, 'Loren', 'Fleet', 'lfleet@hollandcollege.com', '(902) 888-6485'),
(156, 'Paula', 'Foley', 'pmfoley@hollandcollege.com', '(902) 853-0014'),
(157, 'Jane', 'Ford', 'jford@hollandcollege.com', '(902) 566-9529'),
(158, 'James', 'Ford', '?', '(902) 888-6743'),
(159, 'Karen', 'Ford-Doyle', 'kford@hollandcollege.com', '(902) 888-6494'),
(160, 'Lino', 'Forner', 'lforner@hollandcollege.com', '(902) 566-9393'),
(161, 'Debi', 'Forse', 'dforse@hollandcollege.com', '(902) 894-6818'),
(162, 'Gerald', 'Fougere', 'gfougere@hollandcollege.com', '(902) 566-9502'),
(163, 'Catherine', 'Fournier', 'cefournier@hollandcollege.com', '(902) 566-9596'),
(164, 'Donald', 'Fraser', 'dhfraser@hollandcollege.com', '(902) 628-6144'),
(165, 'Linda', 'Fraser (Campbell)', 'lrfraser@hollandcollege.com', '(902) 566-9628'),
(166, 'Paul', 'Frizzell', 'pwfrizzell@hollandcollege.com', '(902) 566-9685'),
(167, 'Curtis', 'Fudge', 'chfudge@hollandcollege.com', '(902) 888-6715'),
(168, 'Beverly', 'Fullerton Lewis', 'bfullertonlewis@hollandcollege.com', '(902) 566-9621'),
(169, 'Gregory', 'Gairns', 'gdgairns@hollandcollege.com', '(902) 566-9630'),
(170, 'Andrea', 'Gallant', 'angallant@hollandcollege.com', '(902) 853-6040'),
(171, 'Andy', 'Gallant', 'atgallant@hollandcollege.com', '(902) 566-9642'),
(172, 'Robert', 'Gallant', 'bcgallant@hollandcollege.com', '(902) 888-6745'),
(173, 'Gordon', 'Gallant', 'glgallant@hollandcollege.com', '(902) 566-9685'),
(174, 'Jeremy', 'Gallant', 'jegallant@hollandcollege.com', '(902) 566-9628'),
(175, 'Jacob', 'Gallant', 'jgallant@hollandcollege.com', '(902) 566-9649'),
(176, 'Kim', 'Gallant', 'kgallant@hollandcollege.com', '(902) 629-4253'),
(177, 'Madonna', 'Gallant', 'mgallant@hollandcollege.com', '(902) 566-9650'),
(178, 'Todd', 'Gallant', 'tgallant@hollandcollege.com', '(902) 894-6834'),
(179, 'Mary', 'Gallant-Bellefleur', 'mbellefleur@hollandcollege.com', '(902) 566-9396'),
(180, 'Keely', 'Gallant-Vos', 'kgallantvos@hollandcollege.com', '(902) 566-9396'),
(181, 'Robin', 'Gamble', 'rgamble@hollandcollege.com', '(902) 566-9306'),
(182, 'Rafael', 'Garcia', 'rdgarcia@hollandcollege.com', '(902) 566-9621'),
(183, 'Sandra', 'Gass', 'sagass@hollandcollege.com', '(902) 566-9521'),
(184, 'Paula', 'Gauthier', 'pgauthier@hollandcollege.com', '(902) 629-4208'),
(185, 'Michael', 'Gibson', 'mjgibson@hollandcollege.com', '(902) 566-9696'),
(186, 'Grace', 'Gillis', 'ggillis@hollandcollege.com', '(902) 566-9564'),
(187, 'Kim', 'Gillis', 'kgillis@hollandcollege.com', '(902) 566-9524'),
(188, 'Adam', 'Gilmore', 'agilmore@hollandcollege.com', '(902) 566-9649'),
(189, 'Brenda', 'Goodine', 'brgoodine@hollandcollege.com', '(902) 566-9369'),
(190, 'Cathryn (Kate)', 'Greene', 'kmgreene@hollandcollege.com', '(902) 628-9533'),
(191, 'Terris', 'Greene', 'tjgreene@hollandcollege.com', '(902) 888-6485'),
(192, 'Donna', 'Gregory', 'dmgregory@hollandcollege.com', '(902) 566-9619'),
(193, 'Linda', 'Griffin', 'lgriffin@hollandcollege.com', '(902) 566-9510'),
(194, 'Mary Lou', 'Griffin-Jenkins', 'mgriffin-jenkins@hollandcollege.com', '(902) 629-4238'),
(195, 'Leslie', 'Hadfield', 'lahadfield@hollandcollege.com', '(902) 888-6713'),
(196, 'Paul', 'Hagen', 'pmhagen@hollandcollege.com', '(902) 888-6749'),
(197, 'Steve', 'Hagen', 'sehagen@hollandcollege.com', '(902) 888-6422'),
(198, 'Marlene', 'Harding', 'mmharding@hollandcollege.com', '(902) 566-9620'),
(199, 'Daryl', 'Hardy', 'djhardy@hollandcollege.com', '(902) 566-9534'),
(200, 'June', 'Harper', 'jharper@hollandcollege.com', '(902) 894-6833'),
(201, 'Tanya', 'Harper', 'tcharper@hollandcollege.com', '(902) 566-9547'),
(202, 'Susan', 'Harrington-Eddie', 'sjeddie@hollandcollege.com', '(902) 888-6495'),
(203, 'Bethany', 'Harris', 'bgharris@hollandcollege.com', '(902) 629-4282'),
(204, 'Barbara', 'Harris', 'bhharris@hollandcollege.com', '(902) 629-4297'),
(205, 'Dylan', 'Harris', 'dharris31792@hollandcollege.com', '(902) 894-6845'),
(206, 'Nancy', 'Hart', 'nhhart@hollandcollege.com', '(902) 628-9533'),
(207, 'Kelly', 'Hastings', 'kehastings@hollandcollege.com', '(902) 894-6857'),
(208, 'Bonnie', 'Hayden', 'bjhayden@hollandcollege.com', '(902) 566-9349'),
(209, 'Sarah', 'Hayes-Brown', 'smhayesbrown@hollancollege.com', '(902) 566-9518'),
(210, 'Susan', 'Haywood', 'sehaywood@hollandcollege.com', '(902) 888-6714'),
(211, 'Ken', 'Heckbert', 'kheckbert@hollandcollege.com', '(902) 566-9604'),
(212, 'Arlene', 'Heffell', 'aheffell@hollandcollege.com', '(902) 888-6704'),
(213, 'Linda', 'Hellingman', 'lhellingman@hollandcollege.com', '(902) 894-6817'),
(214, 'Darlene', 'Hennessey', 'dhennessey@hollandcollege.com', '(902) 566-9643'),
(215, 'Graham', 'Hicken', 'grhicken@hollandcollege.com', '(902) 888-6709'),
(216, 'Veronica', 'Hicks', 'vhicks@hollandcollege.com', '(902) 566-9636'),
(217, 'Velma', 'Higginbotham', 'vhigginbotham@hollandcollege.com', '(902) 566-9590'),
(218, 'Shane', 'Hilderman', 'shildherman@hollandcollege.com', '(902) 566-9359'),
(219, 'Tammy', 'Hill-Worth', 'thill@hollandcollege.com', '(902) 629-4216'),
(220, 'Rosemarie', 'Hines', 'rhines@hollandcollege.com', '(902) 566-9385'),
(221, 'Angela', 'Hodgson', 'alhodgson@hollandcollege.com', '(902) 566-9653'),
(222, 'Debbie', 'Hogan', 'dhogan@hollandcollege.com', '(902) 888-6748'),
(223, 'Sherri', 'Hogan', 'shogan@hollandcollege.com', '(902) 566-9637'),
(224, 'John', 'Holland', 'jpholland@hollandcollege.com', '(902) 566-9662'),
(225, 'Tyler', 'Holmes', 'taholmes@hollandcollege.com', '(902) 566-9627'),
(226, 'Leslie', 'Holt-Dalziel', 'ljholt@hollandcollege.com', '(902) 566-9558'),
(227, 'Donald', 'Hood', 'dhhood@hollandcollege.com', '(902) 652-1028'),
(228, 'Ben', 'Hoteling', 'bhoteling@hollandcollege.com', '(902) 566-9673'),
(229, 'Justin', 'Hughes', 'jshughes@hollandcollege.com', '(902) 566-9305'),
(230, 'Lornie', 'Hughes', 'lhughes@hollandcollege.com', '(902) 629-4235'),
(231, 'Shawn', 'Hume', 'shume@hollandcollege.com', '(902) 888-6727'),
(232, 'Stephen', 'Hunter', 'sjhunter@hollandcollege.com', '(902) 894-6825'),
(233, 'Wyatt', 'Inman', 'winman@hollandcollege.com', '(902) 566-9676'),
(234, 'Cheryl', 'Isley MacDonald', 'cisley@hollandcollege.com', '(902) 566-9657'),
(235, 'Wesley', 'Jackshaw', 'wbjackshaw@hollandcollege.com', '(902) 436-7321'),
(236, 'Marlene', 'James', 'mjames@hollandcollege.com', '(902) 566-9647'),
(237, 'Cassandra', 'Jay', 'cdjay@hollandcollege.com', '(902) 566-9384'),
(238, 'Jill', 'Jenkins', 'jrjenkins@hollandcollege.com', '(902) 367-7702'),
(239, 'Pam', 'Jenkins', 'pjenkins@hollandcollege.com', '(902) 652-2055'),
(240, 'Cheryl', 'Jewell', 'cdjewell@hollandcollege.com', '(902) 566-9366'),
(241, 'Natasha', 'Johnson', 'najohnson@hollandcollege.com', '(902) 888-6434'),
(242, 'Trish', 'Johnston', 'tkjohnston@hollandcollege.com', '(902) 566-9501'),
(243, 'Melissa', 'Josey', 'mjosey@hollandcollege.com', '(902) 566-9518'),
(244, 'Robert', 'Jourdain', 'rpjourdain@hollandcollege.com', '(902) 894-6825'),
(245, 'Richard', 'Judson', 'rjudson@hollandcollege.com', '(902) 629-4249'),
(246, 'Alexandra', 'Keedwell', 'akeedwell@hollandcollege.com', '(902) 566-9628'),
(247, 'Jillian', 'Keefe', 'jmkeefe@hollandcollege.com', '(902) 566-9541'),
(248, 'Douglas', 'Kelly', 'dkelly@hollandcollege.com', '(902) 566-9315'),
(249, 'John', 'Kelly', 'jdkelly@hollandcollege.com', '(902) 888-6465'),
(250, 'Lynn', 'Kelly', 'lmkelly@hollandcollege.com', '(902) 888-6485'),
(251, 'P', 'Kenny', 'pdkenny@hollandcollege.com', '(902) 888-6485'),
(252, 'Kelly', 'Kieran Sampson', 'kksampson@hollandcollege.com', '(902) 888-6453'),
(253, 'James', 'Kimmet', 'jkimmet@hollandcollege.com', '(902) 888-6733'),
(254, 'Joey', 'Kitson', 'jdkitson@hollandcollege.com', '(902) 888-6476'),
(255, 'Carolyn', 'Knox', 'cjknox@hollandcollege.com', '(902) 894-6805'),
(256, 'Glenda', 'Kohli', 'gskohli@hollandcollege.com', '(902) 566-9628'),
(257, 'Virginia', 'Kopachevsky', 'vakopachevsky@hollandcollege.com', '(902) 566-9558'),
(258, 'Scott', 'Lacey', 'eslacey@hollandcollege.com', '(902) 652-2055'),
(259, 'Brian', 'Lambert', 'blambert@hollandcollege.com', '(902) 566-9594'),
(260, 'Brian', 'Landry', 'blandry@hollandcollege.com', '(902) 894-6818'),
(261, 'Brian', 'Langille', 'bdlangille@hollandcollege.com', '(902) 566-9658'),
(262, 'Irene', 'Larkin', 'ihlarkin@hollandcollege.com', '(902) 566-9368'),
(263, 'Lesley', 'Larter', 'lalarter@hollandcollege.com', '(902) 566-9587'),
(264, 'Robbie', 'Larter', 'rlarter@hollandcollege.com', '(902) 888-6734'),
(265, 'Sally', 'Lavern', 'slavern@hollandcollege.com', '(902) 566-9628'),
(266, 'Deborah', 'Lavers', 'dlavers@hollandcollege.com', '(902) 566-9531'),
(267, 'Jennifer', 'Lawton', 'jjlawton@hollandcollege.com', '(902) 894-6814'),
(268, 'Christine', 'Lea', 'clea@hollandcollege.com', '(902) 651-2547'),
(269, 'Jeff', 'Lecky', 'jalecky@hollandcollege.com', '(902) 888-6746'),
(270, 'Ryan', 'LeClair', 'rpleclair@hollandcollege.com', '(902) 853-0019'),
(271, 'Al', 'Ledgerwood', 'none', '(902) 629-4244'),
(272, 'Clifford', 'Lee', 'cjlee@hollandcollege.com', '(902) 566-9395'),
(273, 'Jennifer', 'Lee', 'jklee@hollandcollege.com', '(902) 566-9620'),
(274, 'Ji Young (Sandy)', 'Lee', 'jylee@hollandcollege.com', '(902) 566-9620'),
(275, 'Tina', 'Lesky', 'tmlesyk@hollandcollege.com', '(902) 566-9652'),
(276, 'Meaghan', 'Lister', 'mclister@hollandcollege.com', '(902) 629-4299'),
(277, 'Judy', 'Livingston', 'jilivingston@hollandcollege.com', '(902) 566-9564'),
(278, 'Karen', 'Loo', 'klloo@hollandcollege.com', '(902) 888-6495'),
(279, 'Christie', 'Lougheed-Bambrick', 'cjlougheed@hollandcollege.com', '(902) 566-9581'),
(280, 'Donald', 'Lund', 'dvlund@hollandcollege.com', '(902) 894-6848'),
(281, 'Jean', 'Lykow', 'jlykow@hollandcollege.com', '(902) 888-6738'),
(282, 'Melissa', 'MacArthur', 'mmacarthur@hollandcollege.com', '(902) 566-9543'),
(283, 'Janet', 'MacAulay', 'jmmacaulay@hollandcollege.com', '(902) 566-9397'),
(284, 'Byrn', 'MacCallum', 'blmaccallum@hollandcollege.com', '(902) 894-6822'),
(285, 'Tara', 'MacCallum', 'tmaccallum@hollandcollege.com', '(902) 566-9655'),
(286, 'Amanda', 'MacDonald', 'ahmacdonald@hollandcollege.com', '(902) 888-6464'),
(287, 'Barry', 'MacDonald', 'bmacdonald@hollandcollege.com', '(902) 888-6421'),
(288, 'Cathy', 'MacDonald', 'camacdonald@hollandcollege.com', '(902) 629-4206'),
(289, 'Doris', 'MacDonald', 'domacdonald@hollandcollege.com', '(902) 888-6454'),
(290, 'Donald', 'MacDonald', 'drmacdonald@hollandcollege.com', '(902) 566-9573'),
(291, 'Joanne', 'MacDonald', 'jmacdonald@hollandcollege.com', '(902) 566-9358'),
(292, 'Karla', 'MacDonald', 'karmacdonald@hollandcollege.com', '(902) 629-4210'),
(293, 'Mike', 'MacDonald', 'mkmacdonald@hollandcollege.com', '(902) 566-9399'),
(294, 'Michelle', 'MacDonald', 'mlmacdonald@hollandcollege.com', '(902) 888-6403'),
(295, 'Murrary', 'MacDonald', 'mwmacdonald@hollandcollege.com', '(902) 888-6485'),
(296, 'Richard', 'MacDonald', 'rmacdonald@hollandcollege.com', '(902) 566-9599'),
(297, 'Rose', 'MacDonald', 'romacdonald@hollandcollege.com', '(902) 894-6837'),
(298, 'Shawn', 'MacDonald', 'semacdonald@hollandcollege.com', '(902) 566-9621'),
(299, 'Stewart', 'MacDonald', 'stmacdonald@hollandcollege.com', '(902) 888-6488'),
(300, 'Shawn', 'MacDougall', 'samacdougall@hollandcollege.com', '(902) 566-9361'),
(301, 'Jennifer', 'MacEachern', 'jmaceachern@hollandcollege.com', '(902) 888-6700'),
(302, 'Larissa', 'MacEachern', 'lfmaceachern@hollandcollege.com', '(902) 894-6862'),
(303, 'Lori', 'MacEachern', 'lmaceachern@hollandcollege.com', '(902) 566-9554'),
(304, 'Sandra', 'MacEachern', 'smaceachern@hollandcollege.com', '(902) 566-9628'),
(305, 'Nora', 'MacEwen', 'nlmacewen@hollandcollege.com', '(902) 566-9644'),
(306, 'Allyson', 'MacFarlane', 'admacfarlane@hollandcollege.com', '(902) 888-6485'),
(307, 'Steve', 'MacFarlene', 'smacfarlene@hollandcollege.com', '(902) 888-6462'),
(308, 'Wayne', 'MacFarlene', 'wwmacfarlene@hollandcollege.com', '(902) 894-6805'),
(309, 'Paula', 'MacInnis', 'pmacinnis@hollandcollege.com', '(902) 629-4217'),
(310, 'Wanda', 'MacInnis', 'wcmacinnis@hollandcollege.com', '(902) 566-9683'),
(311, 'Brian', 'MacIsaac', 'bmacisaac@hollandcollege.com', '(902) 888-6733'),
(312, 'Doris', 'MacIsaac', 'dsmacisaac@hollandcollege.com', '(902) 566-9565'),
(313, 'Ryan', 'MacIsaac', 'rlmacisaac@hollandcollege.com', '(902) 629-4283'),
(314, 'Amanada', 'MacKay', 'ajmackay@hollandcollege.com', '(902) 566-9570'),
(315, 'Dana', 'MacKay', 'dhmackay@hollandcollege.com', '(902) 629-4231'),
(316, 'Paul', 'MacKenzie', 'pmackenzie@hollandcollege.com', '(902) 566-9685'),
(317, 'Suzanne', 'MacKenzie', 'smmackenzie@hollandcollege.com', '(902) 566-9519'),
(318, 'David', 'MacKinnon', 'dmackinnon@hollandcollege.com', '(902) 566-9627'),
(319, 'Ronnie', 'MacKinnon', 'rmackinnon@hollandcollege.com', '(902) 566-9685'),
(320, 'Vanessa', 'MacKinnon', 'vjmackinnon@hollandcollege.com', '(902) 894-6845'),
(321, 'Andrew', 'MacLaine', 'amaclaine@hollandcollege.com', '(902) 566-9622'),
(322, 'Bruce', 'MacLean', 'bjmaclean@hollandcollege.com', '(902) 566-9663'),
(323, 'Mary', 'MacLean', 'mlmaclean@hollandcollege.com', '(902) 888-6494'),
(324, 'Rick', 'MacLean', 'rmaclean@hollandcollege.com', '(902) 566-9591'),
(325, 'Holly', 'MacLean-Arsenault', 'hmmacleanarsenault@hollandcollege.com', '(902) 838-5059'),
(326, 'Moria', 'MacLellan', 'mlmaclellan@hollandcollege.com', '(902) 566-9620'),
(327, 'Myrtle', 'MacLellan', 'mmaclellan@hollandcollege.com', '(902) 888-6435'),
(328, 'Scott', 'MacLennan', 'swmaclennan@hollandcollege.com', '(902) 888-6441'),
(329, 'Edgar', 'MacLeod', 'eamacleod@hollandcollege.com', '(902) 888-6705'),
(330, 'Matthew', 'MacLeod', 'mhmacleod@hollandcollege.com', '(902) 566-9656'),
(331, 'Terry', 'MacLeod', 'temacleod@hollandcollege.com', '(902) 894-6858'),
(332, 'Tawna', 'MacLeod', 'tmacleod@hollandcollege.com', '(902) 566-9352'),
(333, 'Ann', 'MacLeod-Lea', 'amacleod@hollandcollege.com', '(902) 894-6821'),
(334, 'Robert', 'MacMillan', 'remacmillan@hollandcollege.com', '(902) 566-9375'),
(335, 'Nicolle', 'MacNeill (Baker)', 'nhbaker@hollandcollege.com', '(902) 894-6868'),
(336, 'Blair', 'MacPhail', 'bmacphail@hollandcollege.com', '(902) 894-6844'),
(337, 'Reiner', 'MacPhail', 'rcmacphail@hollandcollege.com', '(902) 566-9620'),
(338, 'Annie', 'MacPhee', 'aamacphee@hollandcollege.com', '(902) 566-9502'),
(339, 'Jane', 'MacPhee', 'jmmacphee@hollandcollege.com', '(902) 566-9328'),
(340, 'Mark', 'MacPhee', 'mgmacphee@hollandcollege.com', '(902) 838-4026'),
(341, 'Phyllis', 'MacPhee', 'pmacphee@hollandcollege.com', '(902) 652-2055'),
(342, 'Donald', 'MacPherson', 'dmmacpherson@hollandcollege.com', '(902) 314-7341'),
(343, 'Krista', 'MacQuarrie', 'kemacquarrie@hollandcollege.com', '(902) 894-6826'),
(344, 'Sherri', 'MacWilliams', 'samacwilliams@hollandcollege.com', '(902) 566-9593'),
(345, 'Heather', 'Mader', 'hamader@hollandcollege.com', '(902) 566-9353'),
(346, 'Leo', 'Magennis', 'lgmagennis@hollandcollege.com', '(902) 894-6858'),
(347, 'Jillian', 'Maguire', 'jdmaguire@hollandcollege.com', '(902) 566-9519'),
(348, 'Corey', 'Marchbank', 'cmmarchbank@hollandcollege.com', '(902) 888-6422'),
(349, 'Christian', 'Marchsteiner', 'chmarchsteiner@hollandcollege.com', '(902) 894-6809'),
(350, 'William', 'Martin', 'wrmartin@hollandcollege.com', '(902) 888-6495'),
(351, 'Rachel', 'Matheson', 'rmatheson@hollandcollege.com', '(902) 629-4232'),
(352, 'Shelley', 'Matthews', 'scmatthews@hollandcollege.com', '(902) 894-6857'),
(353, 'Ryan', 'Maxwell', 'rsmaxwell@hollandcollege.com', '(902) 629-4204'),
(354, 'Brenda', 'McCarron', 'bmccarron@hollandcollege.com', '(902) 629-4250'),
(355, 'Gloria', 'McCarthy', 'gvmccarthy@hollandcollege.com', '(902) 888-6422'),
(356, 'Lisa', 'McCarthy', 'llmccarthy@hollandcollege.com', '(902) 853-0022'),
(357, 'Darby', 'McCormick', 'dlmccormick@hollandcollege.com', '(902) 566-9564'),
(358, 'Terence', 'McGaughey', 'tmcgaughey@hollandcollege.com', '(902) 566-9557'),
(359, 'Peggy', 'McInnis', 'pmcinnis@hollandcollege.com', '(902) 629-4272'),
(360, 'Linda', 'McKay', 'lmking@hollandcollege.com', '(902) 838-4026'),
(361, 'Eric', 'McKearney', 'ejmackearney@hollandcollege.co', '(902) 566-9504'),
(362, 'Greg', 'McKenna', 'gmckenna@hollandcollege.com', '(902) 566-9607'),
(363, 'Michele', 'McKenna', 'mmckenna@hollandcollege.com', '(902) 566-9507'),
(364, 'Terry', 'McKenna', 'tmckenna@hollandcollege.com', '(902) 566-9346'),
(365, 'Mary', 'McKenna Jaeger', 'mjaeger@hollandcollege.com', '(902) 629-4297'),
(366, 'Steve', 'McLauchlan', 'smclauchlan@hollandcollege.com', '(902) 894-6845'),
(367, 'Brian', 'McMillan', 'bmcmillan@hollandcollege.com', '(902) 566-9510'),
(368, 'Jane', 'McMillan', 'jmcmillan@hollandcollege.com', '(902) 566-9628'),
(369, 'Lauren', 'McNeil', 'lemcneil@hollandcollege.com', '(902) 566-9319'),
(370, 'Mark', 'McQuaid', 'mamcquaid@hollandcollege.com', '(902) 652-2479'),
(371, 'Tim', 'McRoberts', 'tmcroberts@hollandcollege.com', '(902) 566-9612'),
(372, 'Jeremy', 'Measham', 'jdmeasham@hollandcollege.com', '(902) 566-9502'),
(373, 'Greg', 'Mermuys', 'gmermuys@hollandcollege.com', '(902) 566-9625'),
(374, 'Deborah', 'Meyer', 'dmeyer@hollandcollege.com', '(902) 566-9596'),
(375, 'Robert', 'Miller', 'bmiller@hollandcollege.com', '(902) 894-6811'),
(376, 'Candice', 'Mills', 'cmills@hollandcollege.com', '(902) 566-9383'),
(377, 'Mary Ann', 'Misener', 'mmisener@hollandcollege.com', '(902) 629-4270'),
(378, 'Kent', 'Mitchell', 'kjmitchell@hollandcollege.com', '(902) 652-1026'),
(379, 'Natalie', 'Mitton', 'njmitton@hollandcollege.com', '(902) 629-4220'),
(380, 'Karen', 'Moffat', 'mkmoffat@hollandcollege.com', '(902) 566-9366'),
(381, 'Nadine', 'Moore', 'nrmoore@hollandcollege.com', '(902) 566-9598'),
(382, 'Rodney', 'Moore', 'rmoore@hollandcollege.com', '(902) 566-9570'),
(383, 'Andrew', 'Morrison', 'ajmorrison@hollandcollege.com', '(902) 894-6827'),
(384, 'Robert', 'Morrison', 'bmorrison@hollandcollege.com', '(902) 566-9386'),
(385, 'George', 'Morrison', 'gemorrison@hollandcollege.com', '(902) 566-9679'),
(386, 'Kent', 'Morrison', 'kmorrison@hollandcollege.com', '(902) 652-2480'),
(387, 'Holly', 'Moses', 'hmoses@hollandcollege.com', '(902) 566-9578'),
(388, 'Lousie', 'Mould', 'lmould@hollandcollege.com', '(902) 894-3165'),
(389, 'Kendrick', 'Muirhead', 'kwmuirhead@hollandcollege.com', '(902) 888-6741'),
(390, 'Megan', 'Mullally', 'mmullally@hollandcollege.com', '(902) 894-6806'),
(391, 'Tina', 'Mundy', 'mmmundy@hollandcollege.com', '(902) 436-3015'),
(392, 'Alex', 'Murchison', 'amurchison@hollandcollege.com', '(902) 566-9551'),
(393, 'Paul', 'Murnaghan', 'pmurnaghan@hollandcollege.com', '(902) 629-4242'),
(394, 'Eldon', 'Murphy', 'emurphy@hollandcollege.com', '(902) 888-6482'),
(395, 'Lauren', 'Murphy', 'lemurphy@hollandcollege.com', '(902) 566-9609'),
(396, 'Ray', 'Murphy', 'rgmurphy@hollandcollege.com', '(902) 888-6428'),
(397, 'Brian', 'Murray', 'bmurray@hollandcollege.com', '(902) 566-9528'),
(398, 'Clifford', 'Murray', 'cmurray@hollandcollege.com', '(902) 888-6443'),
(399, 'Lowell', 'Murray', 'lmurray@hollandcollege.com', '(902) 888-6409'),
(400, 'Colleen', 'Myer', 'cmmyer@hollandcollege.com', '(902) 566-9692'),
(401, 'Crystal', 'Neary', 'cdneary@hollandcollege.com', '(902) 566-9374'),
(402, 'Brent', 'Nicholson', 'bnicholson@hollandcollege.com', '(902) 629-4279'),
(403, 'Gaylene', 'Nicholson', 'gsnicholoson@hollandcollege.com', '(902) 566-9383'),
(404, 'W. Andrew', 'Nicholson', 'wanicholson@hollandcollege.com', '(902) 894-6825'),
(405, 'Michael', 'Nielson', 'mnielson@hollandcollege.com', '(902) 888-6751'),
(406, 'Susan', 'Norquay', 'snorquay@hollandcollege.com', '(902) 566-9502'),
(407, 'Betsy', 'O''Brien', 'bobrien@hollandcollege.com', '(902) 566-9628'),
(408, 'Robert', 'O''Connor', 'roconnor@hollandcollege.com', '(902) 894-6816'),
(409, 'Christine', 'O''Flaherty', 'caoflaherty@hollandcollege.com', '(902) 894-6845'),
(410, 'Mike', 'O''Grady', 'mogrady@hollandcollege.com', '(902) 566-9512'),
(411, 'Brian', 'O''Neill', 'boneill@hollandcollege.com', '(902) 629-4263'),
(412, 'Ruth Ann', 'O''Neill', 'raooneill@hollandcollege.com', '(902) 888-6406'),
(413, 'Dwaine', 'Oakley', 'doakley@hollandcollege.com', '(902) 566-9671'),
(414, 'Michele', 'Oliver', 'mmoliver@hollandcollege.com', '(902) 853-6040'),
(415, 'Sherrill', 'Palmer', 'slpalmer@hollandcollege.com', '(902) 894-6805'),
(416, 'Robert', 'Panting', 'rlpanting@hollandcollege.com', '(902) 888-6743'),
(417, 'Regan', 'Paquet', 'rrpaquet@hollandcollege.com', '(902) 566-9311'),
(418, 'Elizabeth', 'Pederson', 'empederson@hollandcollege.com', '(902) 894-6810'),
(419, 'Audrey', 'Penner', 'apenner@hollandcollege.com', '(902) 629-4251'),
(420, 'Brenda', 'Perry', 'bperry@hollandcollege.com', '(902) 888-6466'),
(421, 'Melanie', 'Peters', 'mpeters@hollandcollege.com', '(902) 629-4280'),
(422, 'Barb', 'Phillips', 'blphillips@hollandcollege.com', '(902) 894-6819'),
(423, 'Paul', 'Phillips', 'pphillips@hollandcollege.com', '(902) 888-6746'),
(424, 'Michel', 'Poitras', 'mpoitras@hollandcollege.com', '(902) 888-6485'),
(425, 'Gail', 'Pollard', 'gpollard@hollandcollege.com', '(902) 894-6839'),
(426, 'Matthew', 'Poole', 'mapoole@hollandcollege.com', '(902) 566-9564'),
(427, 'Greg', 'Power', 'gppower@hollandcollege.com', '(902) 566-9365'),
(428, 'Rhonda', 'Powers', 'rpowers@hollandcollege.com', '(902) 894-6851'),
(429, 'Lois', 'Praught', 'lpraught@hollandcollege.com', '(902) 888-6435'),
(430, 'Cheryl', 'Preston', 'cpreston@hollandcollege.com', '(902) 566-9542'),
(431, 'Denise', 'Proud', 'dproud@hollandcollege.com', '(902) 629-4230'),
(432, 'Amanda', 'Purchase', 'adpurchase@hollandcollege.com', '(902) 894-6834'),
(433, 'Heather', 'Ramsay', 'hdramsay@hollandcollege.com', '(902) 566-9506'),
(434, 'Pam', 'Raper', 'prraper@hollandcollege.com', '(902) 894-6814'),
(435, 'Andrew', 'Reddin', 'afreddin@hollandcollege.com', '(902) 566-9575'),
(436, 'Charlie', 'Redmond', 'crredmond@hollandcollege.com', '(902) 888-6740'),
(437, 'Jennifer', 'Redmond', 'jlredmond@hollandcollege.com', '(902) 566-9326'),
(438, 'Jennifer', 'Reid', 'jgreid@hollandcollege.com', '(902) 894-6845'),
(439, 'Norma Ann', 'Richard-Becker', 'nbecker@hollandcollege.com', '(902) 894-6857'),
(440, 'Alan', 'Richards', 'arichards@hollandcollege.com', '(902) 888-6485'),
(441, 'Sarah', 'Riehl', 'sariehl@hollandcollege.com', '(902) 566-9519'),
(442, 'Miranda', 'Roache', 'meroache@hollandcollege.com', '(902) 566-9324'),
(443, 'Sarah', 'Roberts', 'seroberts@hollandcollege.com', '(902) 566-9387'),
(444, 'Sherri', 'Roberts', 'slroberts@hollandcollege.com', '(902) 853-0017'),
(445, 'Victoria', 'Roberts', 'varoberts@hollandcollege.com', '(902) 566-9566'),
(446, 'Albert', 'Roche', 'aroche@hollandcollege.com', '(902) 566-9690'),
(447, 'Danny', 'Rodd', 'dvrodd@hollandcollege.com', '(902) 652-1025'),
(448, 'Nigel', 'Roe', 'nroe@hollandcollege.com', '(902) 566-9526'),
(449, 'Jennifer', 'Roma', 'jhroma@hollandcollege.com', '(902) 566-9381'),
(450, 'Wayne', 'Rudderham', 'wjrudderham@hollandcollege.com', '(902) 888-6478'),
(451, 'Ruth', 'Rundle', 'rsrundle@hollandcollege.com', '(902) 888-6448'),
(452, 'Karen', 'Scales', 'kscales@hollandcollege.com', '(902) 894-6807'),
(453, 'Bernadette', 'Schellen-Graham', 'bgraham@hollandcollege.com', '(902) 838-4972'),
(454, 'Ray', 'Schill', 'rwschill@hollandcollege.com', '(902) 888-6731'),
(455, 'Brenda', 'Schock', 'bmschock@hollandcollege.com', '(902) 894-6857'),
(456, 'Gerry', 'Seaward', 'gseaward@hollandcollege.com', '(902) 629-4259'),
(457, 'Chris', 'Sharpley', 'cmsharpley@hollandcollege.com', '(902) 566-9661'),
(458, 'Susan', 'Shaw', 'sshaw@hollandcollege.com', '(902) 894-6830'),
(459, 'Glynn', 'Sheehan', 'ghsheehan@hollandcollege.com', '(902) 629-4240'),
(460, 'Kent', 'Sheen', 'ksheen@hollandcollege.com', '(902) 888-6416'),
(461, 'Bryan', 'Silliker', 'bsilliker@hollandcollege.com', '(902) 888-6423'),
(462, 'Paula', 'Silliker', 'psilliker@hollandcollege.com', '(902) 566-9628'),
(463, 'Josh', 'Silver', 'jlsilver@hollandcollege.com', '(902) 566-9313'),
(464, 'Jennifer', 'Slemmer', 'jeslemmer@hollandcollege.com', '(902) 566-9390'),
(465, 'Debra', 'Smith', 'dmsmith@hollandcollege.com', '(902) 566-9651'),
(466, 'Wendy', 'Smith', 'wlsmith@hollandcollege.com', '(902) 566-9513'),
(467, 'Joerg', 'Soltermann', 'jsoltermann@hollandcollege.com', '(902) 894-6813'),
(468, 'Dennis', 'Stahler', 'ddstahler@hollandcollege.com', '(902) 566-9559'),
(469, 'Kimberly', 'Stephens', 'kmstephens@hollandcollege.com', '(902) 566-9628'),
(470, 'Kathleen', 'Stewart', 'kjstewart@hollandcollege.com', '(902) 566-9525'),
(471, 'Twilah', 'Stone', 'tstone@hollandcollege.com', '(902) 566-9648'),
(472, 'Mary Luo', 'Storey', 'mlstorey@hollandcollege.com', '(902) 566-9592'),
(473, 'Philip', 'Strachan', 'pstratchan@hollandcollege.com', '(902) 888-6708'),
(474, 'Laureena', 'Super', 'llsuper@hollandcollege.com', '(902) 566-9620'),
(475, 'Donna', 'Sutton', 'dsutton@hollandcollege.com', '(902) 629-4264'),
(476, 'Dennis', 'Swan', 'djswan@hollandcollege.com', '(902) 566-9516'),
(477, 'Keith', 'Tanton', 'ketanton@hollandcollege.com', '(902) 566-9546'),
(478, 'Steve', 'Tessier', 'sttessier@hollandcollege.com', '(902) 566-9376'),
(479, 'Cory', 'Thomas', 'cthomas@hollandcollege.com', '(902) 566-9693'),
(480, 'Patricia', 'Thompson', 'pathompson@hollandcollege.com', '(902) 566-9371'),
(481, 'Susanne', 'Thompson', 'sjthompson@hollandcollege.com', '(902) 566-9628'),
(482, 'Ruth', 'Thorne', 'rmthorne@hollandcollege.com', '(902) 566-9670'),
(483, 'Justina', 'Toole', 'jmtoole@hollandcollege.com', '(902) 566-9620'),
(484, 'Leona', 'Turner', 'lturner@hollandcollege.com', '(902) 629-4260'),
(485, 'Larry', 'Tweed', 'ldtweed@hollandcollege.com', '(902) 566-9577'),
(486, 'Sara', 'Underwood', 'sunderwood@hollandcollege.com', '(902) 566-9695'),
(487, 'Beverly', 'van Diepn', 'bvandiepn@hollandcollege.com', '(902) 566-9614'),
(488, 'Linda', 'VanWesterneng', 'lcvanwesterneng@hollandcollege.com', '(902) 566-9517'),
(489, 'James', 'Vardy', 'wjvardy@hollandcollege.com', '(902) 566-9386'),
(490, 'Tracey', 'Vessey', 'tlvessey@hollandcollege.com', '(902) 566-9503'),
(491, 'Rickey', 'Wakelin', 'rtwakelin@hollandcollege.com', '(902) 566-9568'),
(492, 'Jeff', 'Walker', 'jgwalker@hollandcollge.com', '(902) 566-9325'),
(493, 'Tammy', 'Wall', 'tlwall@hollandcollege.com', '(902) 566-9373'),
(494, 'Joanna', 'Watts', 'jrwatts@hollandcollege.com', '(902) 629-4240'),
(495, 'Carrie', 'Weatherbie', 'cmweatherbie@hollandcollege.com', '(902) 566-9561'),
(496, 'David', 'Webster', 'dwebster@hollandcollege.com', '(902) 888-6737'),
(497, 'Maureen', 'Webster', 'mwebster@hollandcollege.com', '(902) 894-6803'),
(498, 'Jack', 'Wheeler', 'jwheeler@hollandcollege.com', '(902) 894-6818'),
(499, 'Derek', 'White', 'dswhite@hollandcollege.com', '(902) 894-6848'),
(500, 'Eileen', 'White', 'ewhite@hollandcollege.com', '(902) 687-2447'),
(501, 'Rosemary', 'White', 'rewhite@hollandcollege.com', '(902) 566-9672'),
(502, 'Stephen', 'White', 'stwhite@hollandcollge.com', '(902) 566-9672'),
(503, 'Sandi', 'White', 'swhite@hollandcollege.com', '(902) 629-4225'),
(504, 'Hans', 'Wicki', 'hwicki@hollandcollege.com', '(902) 894-6817'),
(505, 'Dawn', 'Wickstrom', 'dwickstrom@hollandcollege.com', '(902) 566-9601'),
(506, 'Meaghan', 'Wilkie', 'mswilkie@hollandcollege.com', '(902) 566-9340'),
(507, 'Allan', 'Williams', 'awilliams@hollandcollege.com', '(902) 894-6820'),
(508, 'Lorenda', 'Williams', 'ldwilliams@hollandcollege.com', '(902) 566-9397'),
(509, 'Debbie', 'Willis', 'dlwillis@hollandcollege.com', '(902) 566-9613'),
(510, 'Gloria', 'Wooldridge', 'gawooldridge@hollandcollege.com', '(902) 566-9590'),
(511, 'Natalie', 'Worthen', 'nworthen@hollandcollege.com', '(902) 566-9595'),
(512, 'Karen', 'Wortman', 'krwortman@hollandcollege.com', '(902) 566-9611'),
(513, 'David', 'Yeo', 'dyeo@hollandcollege.com', '(902) 888-6444'),
(514, 'Alex', 'Youland', 'adyouland@hollandcollege.com', '(902) 566-9376'),
(515, 'David', 'Young', 'dsyoung@hollandcollege.com', '(902) 566-9685'),
(516, 'Katelyn', 'Young', 'kmyoung@hollandcollege.com', '(902) 626-8004'),
(517, 'Wayne', 'Young', 'wyoung@hollandcollege.com', '(902) 566-9589'),
(518, 'Rob', 'Younker', 'rkyounker@hollandcollege.com', '(902) 894-6823'),
(519, 'Blair', 'Zinck', 'bzinck@hollandcollege.com', '(902) 894-6811'),
(520, 'Scott', 'Zwicker', 'sczwicker@hollandcollege.com', '(902) 888-6428');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`);

--
-- Constraints for table `course_order`
--
ALTER TABLE `course_order`
  ADD CONSTRAINT `course_order_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_order_ibfk_2` FOREIGN KEY (`program_account_id`) REFERENCES `program` (`program_account_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_order_ibfk_3` FOREIGN KEY (`book_isbn`) REFERENCES `book` (`book_isbn`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_order_ibfk_4` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE;

--
-- Constraints for table `program_course`
--
ALTER TABLE `program_course`
  ADD CONSTRAINT `program_course_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_course_ibfk_3` FOREIGN KEY (`program_account_id`) REFERENCES `program` (`program_account_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
