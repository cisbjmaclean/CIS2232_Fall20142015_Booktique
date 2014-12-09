SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- --------------------------------------------------------
CREATE DATABASE IF NOT EXISTS cisis_booktique_db;
use cisis_booktique_db;

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


INSERT INTO `member_bio` (`member_id`, `first_name`, `middle_name`, `last_name`, `address_1`, `address_2`, `municipality`, `province_code`, `postal_code`, `home_phone`, `cell_phone`, `work_phone`, `work_phone_extension`, `fax_number`, `email_address`, `date_of_birth`, `gender_code`) VALUES
(2, 'Steve', 'Joseph', 'Banks', '333 There Street', NULL, 'Charlottetown', 5, 'c1b0e3', '9025692222', NULL, NULL, NULL, NULL, 'stevebanks@hollandcollege.com', '19950-01-0', 1),
(1, 'Bruce', 'John', 'MacLean', '123 Here Drive', NULL, 'Stratford', 5, 'c1b0e3', '9025691111', NULL, NULL, NULL, NULL, 'bjmaclean@hollandcollege.com', '2000-01-05', 1);

-- Added booktique database --

--
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `publisher_id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'This is the primary key for the publisher',
  `publisher_name` varchar(36) NOT NULL,
  `publisher_return_address` varchar(60) NOT NULL,
  `publisher_notes` varchar(255) NOT NULL,
  `publisher_fax` varchar(10) NOT NULL,
  `publisher_phone` int(10) NOT NULL,
  `publisher_email` varchar(254) NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_name`, `publisher_return_address`, `publisher_notes`, `publisher_fax`, `publisher_phone`, `publisher_email`) VALUES
  ('James Williams', '123 street canada', 'This is good', '999-999-9999', '999-999-9999', 'bob@hotmail.com');


-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_isbn` int(15) NOT NULL,
  `book_text` varchar(36) NOT NULL,
  `book_author` varchar(36) NOT NULL,
  `publisher_id` int(4) NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`book_isbn`),
  FOREIGN KEY (`publisher_id`) references publisher(`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_isbn`, `book_text`, `book_author`) VALUES
  (999999999999999, 'To kill a mockingbird', 'James Williams');

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
  (50300, 'Accounting Technology'),
  (80503, 'Advanced Care Paramedicine'),
  (80330, 'Applied Degree in Culinary Operations'),
  (50680, 'Architechural Technology'),
  (59497, 'Bioscience Technology'),
  (37573, 'Business Administration'),
  (49573, 'Child and Health Care Worker'),
  (48374, 'College Foundation Program'),
  (49374, 'Computer Information Systems'),
  (57629, 'Computer Information Systems Distance'),
  (48473, 'Computer Networking Technology'),
  (49129, 'Construction Technology'),
  (87483, 'Culinary Arts'),
  (10387, 'Dance Performance'),
  (29474, 'Dental Assisting'),
  (99383, 'Early Childhood Care and Education'),
  (84643, 'Electronics Engineering Technology'),
  (37462, 'Enviromental Applied Science Technology'),
  (28484, 'Fundamental Arts'),
  (74404, 'Golf Club Management'),
  (74639, 'Graphic Design'),
  (49475, 'Human Resource Management'),
  (44776, 'Human Services'),
  (42624, 'International Hospitality Mangement'),
  (02884, 'Medical Support Services'),
  (49836, 'Music Performance'),
  (39487, 'Pastry Arts'),
  (57498, 'Performing Arts Foundation'),
  (59383, 'Photography & Digital Imaging'),
  (39483, 'Plumbing'),
  (60877, 'Practical Nursing CC'),
  (39448, 'Practical Nursing Souris'),
  (49277, 'Primary Care Paramedicine'),
  (29934, 'Professional Golf Management'),
  (69693, 'Resident Care Worker CC'),
  (83649, 'Sport & Leisure Management'),
  (29484, 'Steamfitting/Pipefitting'),
  (90983, 'Tourism & Travel Management'),
  (69338, 'Video Game Art & Animation'),
  (93645, 'Welding Fabrication'),
  (48370, 'Wildlife Conservation Technology');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(5) NOT NULL AUTO_INCREMENT,
  `staff_fname` varchar(30) NOT NULL,
  `staff_lname` varchar(30) NOT NULL,
  `staff_email` varchar(254) NOT NULL,
  `staff_phone` int(10) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_fname`,`staff_lname`, `staff_email`,`staff_phone`) VALUES
  (99999, 'Don', 'Bowers', 'dfbowers@hollandcollege.com',485-475-8457);


--
-- Table structure for table `course_order`
--

CREATE TABLE IF NOT EXISTS `course_order` (
  `course_order_id` int(5) NOT NULL AUTO_INCREMENT,
  `course_order_notes` varchar (255) NOT NULL,
  `course_order_qty` int(3) NOT NULL,
  `course_ordered_date_ordered` datetime NOT NULL,
  `course_id` int(5) NOT NULL,
  `program_account_id` int(5) NOT NULL,
  `book_isbn` int(15) NOT NULL,
  `course_order_shipping_fee` double(6,2) NOT NULL,
  `course_order_cost` double(6,2) NOT NULL,
  `course_order_retail` double(6,2) NOT NULL,
  `staff_id` int(5) NOT NULL,
  `course_order_handling_fee` double(6,2) NOT NULL,
  PRIMARY KEY (`course_order_id`),
  FOREIGN KEY (`course_id`) REFERENCES course(`course_id`) ON DELETE CASCADE,
  FOREIGN KEY (`program_account_id`) REFERENCES program(`program_account_id`) ON DELETE CASCADE,
  FOREIGN KEY (`book_isbn`) REFERENCES book(`book_isbn`) ON DELETE CASCADE,
  FOREIGN KEY (`staff_id`) REFERENCES staff(`staff_id`) ON DELETE CASCADE

) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;

--
-- Dumping data for table `course_order`
--

INSERT INTO `course_order` (`book_isbn`, `course_id`, `program_account_id`,`course_order_id`, `course_order_notes`, `course_order_qty`,`course_ordered_date_ordered`, `course_order_shipping_fee`, `course_order_cost`,`course_order_retail`, `staff_id`, `course_order_handling_fee`) VALUES
  (999999999999999, 99999, 50300, 99999, 'These are some notes', 10, '10/10/1987', 24.99, 24.99, 24.99, 99999, 24.99 );

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
  FOREIGN KEY (`staff_id`) REFERENCES staff(`staff_id`) ON DELETE CASCADE,
  FOREIGN KEY (`course_id`) REFERENCES course(`course_id`) ON DELETE CASCADE,
  FOREIGN KEY (`program_account_id`) REFERENCES program(`program_account_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `program_course`
--

INSERT INTO `program_course` (`course_id`, `program_course_start`,`program_course_end`, `staff_id`,`program_course_year`, `program_account_id`) VALUES
  (99999, 01/01/2014, 09/09/2014, 99999, 1, 50300);
