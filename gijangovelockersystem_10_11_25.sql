-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2025 at 09:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gijangovelockersystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminID` int(11) NOT NULL,
  `adminUserName` varchar(50) DEFAULT NULL,
  `adminPassword` varchar(100) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `adminEmailAddress` varchar(100) DEFAULT NULL,
  `adminContactNum` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminID`, `adminUserName`, `adminPassword`, `role`, `adminEmailAddress`, `adminContactNum`) VALUES
(1, 'admin1', '$2y$10$RAiO4yFY/MKEl4hqbzWiwuwgnoN7wrh8b5RC22PEOsM2QlWaiKa4G', 'admin', 'vunenebasa@gmail.com', '0723433343'),
(2, 'admin2', '$2y$10$RAiO4yFY/MKEl4hqbzWiwuwgnoN7wrh8b5RC22PEOsM2QlWaiKa4G', 'admin', 'vunenebasa@gmail.com', '0733433343');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookingID` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `lockerID` int(11) DEFAULT NULL,
  `status` enum('pending','approved','completed','rejected') NOT NULL DEFAULT 'pending',
  `bookingDate` date DEFAULT curdate(),
  `approvalDate` datetime DEFAULT NULL,
  `approvedByAdminID` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bookingID`, `studentID`, `lockerID`, `status`, `bookingDate`, `approvalDate`, `approvedByAdminID`, `comments`) VALUES
(209, 1028, 72, 'completed', '2026-04-07', '2025-11-05 01:17:34', 1, 'Your booking is pending | wainting for an approval.'),
(210, 1029, 73, 'completed', '2026-06-22', '2025-11-05 01:16:25', 1, 'Your booking is pending | wainting for an approval.'),
(211, 1030, 74, 'completed', '2026-01-26', '2025-11-05 01:17:52', 1, 'Your booking is pending | wainting for an approval.'),
(212, 1031, 75, 'completed', '2026-03-29', '2025-11-05 01:17:46', 1, 'Your booking is pending | wainting for an approval.'),
(213, 1032, 76, 'completed', '2026-05-01', '2025-11-05 01:16:32', 1, 'Your booking is pending | wainting for an approval.'),
(214, 1033, 77, 'completed', '2026-04-28', '2025-11-05 01:17:25', 1, 'Your booking is pending | wainting for an approval.'),
(215, 1034, 78, 'completed', '2026-03-05', '2025-11-05 02:20:05', 1, 'Your booking is pending | wainting for an approval.'),
(216, 1035, 79, 'completed', '2026-01-11', '2025-11-05 02:26:06', 1, 'Your booking is pending | wainting for an approval.'),
(217, 1036, 80, 'completed', '2026-03-21', '2025-11-05 02:32:18', 1, 'Your booking is pending | wainting for an approval.'),
(218, 1037, 81, 'completed', '2026-03-07', '2025-11-05 02:38:41', 1, 'Your booking is pending | wainting for an approval.'),
(219, 1039, 82, 'pending', '2026-04-01', NULL, NULL, 'Your booking is pending | wainting for an approval.');

-- --------------------------------------------------------

--
-- Table structure for table `lockers`
--

CREATE TABLE `lockers` (
  `lockerID` int(11) NOT NULL,
  `studentGrade` varchar(10) DEFAULT NULL,
  `lockerNumber` varchar(50) DEFAULT NULL,
  `lockerLocation` enum('Top','Middle','Bottom') NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lockers`
--

INSERT INTO `lockers` (`lockerID`, `studentGrade`, `lockerNumber`, `lockerLocation`, `availability`) VALUES
(72, 'Grade 12', 'L01', 'Top', 1),
(73, 'Grade 11', 'L02', 'Top', 1),
(74, 'Grade 8', 'L03', 'Top', 1),
(75, 'Grade 11', 'L04', 'Top', 1),
(76, 'Grade 9', 'L05', 'Top', 1),
(77, 'Grade 10', 'L06', 'Top', 1),
(78, 'Grade 12', 'L07', 'Top', 1),
(79, 'Grade 12', 'L08', 'Top', 1),
(80, 'Grade 12', 'L09', 'Top', 1),
(81, 'Grade 12', 'L10', 'Top', 1),
(82, 'Grade 9', 'L11', 'Top', 1),
(83, NULL, 'L12', 'Top', 0),
(84, NULL, 'L13', 'Top', 0),
(85, NULL, 'L14', 'Top', 0),
(86, NULL, 'L15', 'Top', 0),
(87, NULL, 'L16', 'Top', 0),
(88, NULL, 'L17', 'Top', 0),
(89, NULL, 'L18', 'Top', 0),
(90, NULL, 'L19', 'Top', 0),
(91, NULL, 'L20', 'Top', 0),
(92, NULL, 'L21', 'Top', 0),
(93, NULL, 'L22', 'Top', 0),
(94, NULL, 'L23', 'Top', 0),
(95, NULL, 'L24', 'Top', 0),
(96, NULL, 'L25', 'Top', 0),
(97, NULL, 'L26', 'Middle', 0),
(98, NULL, 'L27', 'Middle', 0),
(99, NULL, 'L28', 'Middle', 0),
(100, NULL, 'L29', 'Middle', 0),
(101, NULL, 'L30', 'Middle', 0),
(102, NULL, 'L31', 'Middle', 0),
(103, NULL, 'L32', 'Middle', 0),
(104, NULL, 'L33', 'Middle', 0),
(105, NULL, 'L34', 'Middle', 0),
(106, NULL, 'L35', 'Middle', 0),
(107, NULL, 'L36', 'Middle', 0),
(108, NULL, 'L37', 'Middle', 0),
(109, NULL, 'L38', 'Middle', 0),
(110, NULL, 'L39', 'Middle', 0),
(111, NULL, 'L40', 'Middle', 0),
(112, NULL, 'L41', 'Middle', 0),
(113, NULL, 'L42', 'Middle', 0),
(114, NULL, 'L43', 'Middle', 0),
(115, NULL, 'L44', 'Middle', 0),
(116, NULL, 'L45', 'Middle', 0),
(117, NULL, 'L46', 'Middle', 0),
(118, NULL, 'L47', 'Middle', 0),
(119, NULL, 'L48', 'Middle', 0),
(120, NULL, 'L49', 'Middle', 0),
(121, NULL, 'L50', 'Middle', 0),
(122, NULL, 'L51', 'Bottom', 0),
(123, NULL, 'L52', 'Bottom', 0),
(124, NULL, 'L53', 'Bottom', 0),
(125, NULL, 'L54', 'Bottom', 0),
(126, NULL, 'L55', 'Bottom', 0),
(127, NULL, 'L56', 'Bottom', 0),
(128, NULL, 'L57', 'Bottom', 0),
(129, NULL, 'L58', 'Bottom', 0),
(130, NULL, 'L59', 'Bottom', 0),
(131, NULL, 'L60', 'Bottom', 0),
(132, NULL, 'L61', 'Bottom', 0),
(133, NULL, 'L62', 'Bottom', 0),
(134, NULL, 'L63', 'Bottom', 0),
(135, NULL, 'L64', 'Bottom', 0),
(136, NULL, 'L65', 'Bottom', 0),
(137, NULL, 'L66', 'Bottom', 0),
(138, NULL, 'L67', 'Bottom', 0),
(139, NULL, 'L68', 'Bottom', 0),
(140, NULL, 'L69', 'Bottom', 0),
(141, NULL, 'L70', 'Bottom', 0),
(142, NULL, 'L71', 'Bottom', 0),
(143, NULL, 'L72', 'Bottom', 0),
(144, NULL, 'L73', 'Bottom', 0),
(145, NULL, 'L74', 'Bottom', 0),
(146, NULL, 'L75', 'Bottom', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notificationID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `adminID` int(11) NOT NULL,
  `type` enum('phone number','Email') NOT NULL,
  `message` text NOT NULL,
  `status` enum('available','pending','completed','rejected') DEFAULT 'pending',
  `dateSent` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notificationID`, `parentID`, `title`, `adminID`, `type`, `message`, `status`, `dateSent`) VALUES
(257, 76, 'Locker Booking Request', 1, 'Email', 'The student Tsiki Maswanganye has a locker booking pending approval.', 'completed', '2025-11-04 23:34:36'),
(258, 76, 'Locker Booking Request', 1, 'Email', 'The student Thandy Maswanganye has a locker booking pending approval.', 'completed', '2025-11-05 00:17:21'),
(259, 76, 'Locker Booking Request', 1, 'Email', 'The student Nhlamulo Maswanganye has a locker booking pending approval.', 'completed', '2025-11-05 00:23:19'),
(260, 76, 'Locker Booking Request', 1, 'Email', 'The student Nthavi Maswanganye has a locker booking pending approval.', 'completed', '2025-11-05 00:24:26'),
(261, 79, 'Locker Booking Request', 1, 'Email', 'The student Ntombinyana Makaringe has a locker booking pending approval.', 'completed', '2025-11-05 01:13:26'),
(262, 79, 'Locker Booking Request', 1, 'Email', 'The student Nthavelani Makaringe has a locker booking pending approval.', 'completed', '2025-11-05 01:14:17'),
(263, 79, 'Locker Booking Request', 1, 'Email', 'The student Tutu Makaringe has a locker booking pending approval.', 'completed', '2025-11-05 02:06:57'),
(264, 1, 'Locker Booking Request', 1, 'Email', 'The student Michael Smith has a locker booking pending approval.', 'completed', '2025-11-05 02:23:35'),
(265, 79, 'Locker Booking Request', 1, 'Email', 'The student Ginita Makaringe has a locker booking pending approval.', 'completed', '2025-11-05 02:31:07'),
(266, 76, 'Locker Booking Request', 1, 'Email', 'The student Nyeleti Maswanganye has a locker booking pending approval.', 'completed', '2025-11-05 02:37:20'),
(267, 1, 'Student Added to Waiting List', 1, 'Email', 'The student Thomas Smith has been added to the locker waiting list.', 'pending', '2025-11-05 02:40:45'),
(268, 76, 'Locker Booking Request', 1, 'Email', 'The student Kulani Maswanganye has a locker booking pending approval.', 'pending', '2025-11-05 13:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parentID` int(11) NOT NULL,
  `parentTitle` varchar(10) DEFAULT NULL,
  `parentIDNumber` varchar(20) DEFAULT NULL,
  `parentName` varchar(50) DEFAULT NULL,
  `parentSurname` varchar(50) DEFAULT NULL,
  `parentEmailAddress` varchar(100) DEFAULT NULL,
  `parentPhoneNumber` varchar(20) DEFAULT NULL,
  `parentHomeAddress` text DEFAULT NULL,
  `parentUsername` varchar(50) DEFAULT NULL,
  `parentPassword` varchar(100) DEFAULT NULL,
  `preferredNotification` varchar(50) DEFAULT 'Email',
  `dateCreated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`parentID`, `parentTitle`, `parentIDNumber`, `parentName`, `parentSurname`, `parentEmailAddress`, `parentPhoneNumber`, `parentHomeAddress`, `parentUsername`, `parentPassword`, `preferredNotification`, `dateCreated`) VALUES
(1, 'Mr', '7110115033116', 'Joe', 'Smith', 'yinhlanthavela@gmail.com', '0821234567', '123 Maple St', 'jsmith', '$2y$10$qWGh.LtjbxKAnUxi.ptF6urtls/xJ7tSI8l/r/hGQ80GQPB8HJqPi', 'Email', '2025-06-20 10:24:33'),
(2, 'Mrs', '7903018701182', 'Mary', 'Johnson', 'mary.johnson@gmail.com', '0832345678', '456 Oak Ave', 'mjohnson', 'mjohnson$2345', 'Email', '2025-06-20 10:24:33'),
(3, 'Ms', '9504200125035', 'Linda', 'Brown', 'linda.brown@gmail.com', '0843456789', '789 Pine Rd', 'lbrown', '$2y$10$qWGh.LtjbxKAnUxi.ptF6urtls/xJ7tSI8l/r/hGQ80GQPB8HJqPi', 'Email', '2025-06-20 10:24:33'),
(4, 'Mr', '9411277787016', 'David', 'Johnson', 'david.johnson@gmail.com', '0745678901', '321 Maple Lane', 'djohnson', 'djohnson$5678', 'Email', '2025-06-20 10:24:33'),
(5, 'Mrs', '9298654199120', 'Emma', 'Wilson', 'emma.wilson@gmail.com', '0756789012', '654 Cedar Drive', 'ewilson1', 'ewilson$6789', 'Email', '2025-06-20 10:24:33'),
(6, 'Dr', '9212011817041', 'Robert', 'Taylor', 'robert.taylor@gmail.com', '0767890123', '987 Birch Boulevard', 'rtaylor1', 'rtaylor$7890', 'Email', '2025-06-20 10:24:33'),
(7, 'Ms', '5004038523192', 'Linda', 'Anderson', 'linda.anderson@gmail.com', '0778901234', '135 Spruce Street', 'landerson1', 'landerson$8901', 'Email', '2025-06-20 10:24:33'),
(8, 'Mr', '4109137427178', 'James', 'Thomas', 'james.thomas@gmail.com', '0789012345', '246 Redwood Court', 'jthomas', 'jthomas$9012', 'Email', '2025-06-20 10:24:33'),
(9, 'Mrs', '5612226663035', 'Robert', 'Wilson', 'robert.wilson@gmail.com', '0735460310', '189 Pine Street', 'rwilson', '$2y$10$HEwPvZyqPwQm.If5wcbl4.Bh5ebibu8kOY2KuJNETZySsN/IndRMa', 'Email', '2025-06-20 10:24:33'),
(10, 'Mr', '9101073547175', 'Michael', 'Anderson', 'michael.anderson@gmail.com', '0775510858', '702 Maple Street', 'manderson', 'manderson$5510', 'Email', '2025-06-20 10:24:33'),
(11, 'Ms', '4207012946087', 'Emma', 'Smith', 'emma.smith@gmail.com', '0749100605', '718 Ash Street', 'esmith', 'esmith$9100', 'Email', '2025-06-20 10:24:33'),
(12, 'Mrs', '8305068147131', 'Ava', 'Smith', 'ava.smith@gmail.com', '0783072551', '599 Spruce Street', 'asmith1', 'asmith$3072', 'Email', '2025-06-20 10:24:33'),
(13, 'Mr', '9505017498148', 'Ava', 'Hall', 'ava.hall@gmail.com', '0791798774', '332 Maple Street', 'ahall', 'ahall$1798', 'Email', '2025-06-20 10:24:33'),
(14, 'Ms', '6602050571067', 'Liam', 'White', 'liam.white@gmail.com', '0737988829', '842 Birch Street', 'lwhite', 'lwhite$7988', 'Email', '2025-06-20 10:24:33'),
(15, 'Mrs', '9012129123195', 'Noah', 'Hall', 'noah.hall@gmail.com', '0743682129', '190 Willow Street', 'nhall', 'nhall$3682', 'Email', '2025-06-20 10:24:33'),
(16, 'Dr', '7306052541142', 'Easter', 'Anderson', 'easter.anderson@gmail.com', '0721206388', '704 Willow Street', 'eanderson', 'eanderson$1206', 'Email', '2025-06-20 10:24:33'),
(17, 'Ms', '9507203452020', 'Robert', 'Anderson', 'robert.anderson@gmail.com', '0739094911', '875 Maple Street', 'randerson', 'randerson$9094', 'Email', '2025-06-20 10:24:33'),
(18, 'Mr', '6806020888197', 'Michael', 'Nkosi', 'michael.nkosi@gmail.com', '0798801632', '897 Cedar Street', 'mnkosi', 'mnkosi$8801', 'Email', '2025-06-20 10:24:33'),
(19, 'Dr', '7807275046086', 'Liam', 'Brown', 'liam.brown@gmail.com', '0786828544', '492 Spruce Street', 'lbrown1', 'lbrown$6828', 'Email', '2025-06-20 10:24:33'),
(20, 'Dr', '4809209872196', 'Robert', 'Smith', 'robert.smith@gmail.com', '0768346836', '757 Cedar Street', 'rsmith', 'rsmith$8346', 'Email', '2025-06-20 10:24:33'),
(21, 'Mrs', '4204287904104', 'Liam', 'Nkosi', 'liam.nkosi@gmail.com', '0744083306', '433 Birch Street', 'lnkosi', 'lnkosi$4083', 'Email', '2025-06-20 10:24:33'),
(22, 'Dr', '7612064343182', 'Oska', 'Nkosi', 'oska.nkosi@gmail.com', '0752005034', '852 Cedar Street', 'onkosi', 'onkosi$2005', 'Email', '2025-06-20 10:24:33'),
(23, 'Ms', '4809018674075', 'Rose', 'Taylor', 'rose.taylor@gmail.com', '0743877000', '162 Ash Street', 'rtaylor', 'rtaylor$3877', 'Email', '2025-06-20 10:24:33'),
(24, 'Mr', '5707284141112', 'Liam', 'Anderson', 'liam.anderson@gmail.com', '0796115093', '327 Redwood Street', 'landerson', 'landerson$6115', 'Email', '2025-06-20 10:24:33'),
(25, 'Mr', '7009119979038', 'Ava', 'Wilson', 'ava.wilson@gmail.com', '0764281373', '911 Birch Street', 'awilson1', 'awilson$4281', 'Email', '2025-06-20 10:24:33'),
(26, 'Mrs', '5106123937064', 'Alice', 'Smith', 'alice.smith@gmail.com', '0759764000', '447 Birch Street', 'asmith', 'asmith$9764', 'Email', '2025-06-20 10:24:33'),
(27, 'Dr', '4510283636054', 'Noah', 'White', 'noah.white@gmail.com', '0777393801', '604 Pine Street', 'nwhite', 'nwhite$7393', 'Email', '2025-06-20 10:24:33'),
(28, 'Ms', '8502022675077', 'Jane', 'Anderson', 'jane.anderson@gmail.com', '0758356276', '431 Spruce Street', 'janderson', 'janderson$8356', 'Email', '2025-06-20 10:24:33'),
(29, 'Dr', '4409125431129', 'John', 'Nkosi', 'john.nkosi@gmail.com', '0799536039', '436 Elm Street', 'jnkosi', 'jnkosi$9536', 'Email', '2025-06-20 10:24:33'),
(30, 'Ms', '6305123394192', 'Easter', 'Johnson', 'easter.johnson@gmail.com', '0763177499', '715 Birch Street', 'ejohnson', 'ejohnson$3177', 'Email', '2025-06-20 10:24:33'),
(31, 'Mr', '5912127358130', 'Michael', 'White', 'michael.white@gmail.com', '0743043868', '238 Oak Street', 'mwhite', 'mwhite$3043', 'Email', '2025-06-20 10:24:33'),
(32, 'Mrs', '6603287420165', 'Sophia', 'Hall', 'sophia.hall@gmail.com', '0778621486', '776 Cedar Street', 'shall', 'shall$8621', 'Email', '2025-06-20 10:24:33'),
(33, 'Mr', '6012217265129', 'Joe', 'Nkosi', 'joe.nkosi@gmail.com', '0728680821', '600 Elm Street', 'jnkosi1', 'jnkosi$8680', 'Email', '2025-06-20 10:24:33'),
(34, 'Ms', '9602046538016', 'Ava', 'Thomas', 'ava.thomas@gmail.com', '0711846135', '446 Redwood Street', 'athomas', 'athomas$1846', 'Email', '2025-06-20 10:24:33'),
(35, 'Dr', '7303154126003', 'Ethan', 'Taylor', 'ethan.taylor@gmail.com', '0799314784', '404 Oak Street', 'etaylor', 'etaylor$9314', 'Email', '2025-06-20 10:24:33'),
(36, 'Ms', '8202019503196', 'Jane', 'Taylor', 'jane.taylor@gmail.com', '0781998910', '911 Ash Street', 'jtaylor', 'jtaylor$1998', 'Email', '2025-06-20 10:24:33'),
(37, 'Mrs', '5512102556093', 'Liam', 'Wilson', 'liam.wilson@gmail.com', '0748585981', '413 Ash Street', 'lwilson', 'lwilson$8585', 'Email', '2025-06-20 10:24:33'),
(38, 'Mr', '9309202925129', 'Liam', 'Smith', 'liam.smith@gmail.com', '0742749180', '310 Maple Street', 'lsmith', 'lsmith$2749', 'Email', '2025-06-20 10:24:33'),
(39, 'Mrs', '8809035978098', 'John', 'Smith', 'john.smith@gmail.com', '0775223322', '140 Maple Street', 'jsmith1', 'jsmith$5223', 'Email', '2025-06-20 10:24:33'),
(40, 'Ms', '9912089374198', 'Sulphina', 'Hall', 'sulphina.hall@gmail.com', '0777667807', '661 Maple Street', 'shall1', 'shall$7667', 'Email', '2025-06-20 10:24:33'),
(41, 'Dr', '6705260699127', 'Donald', 'Johnson', 'donald.johnson@gmail.com', '0784780625', '473 Birch Street', 'djohnson1', 'djohnson$4780', 'Email', '2025-06-20 10:24:33'),
(42, 'Mr', '8008113111123', 'Albert', 'Wilson', 'albert.wilson@gmail.com', '0737248373', '636 Cedar Street', 'awilson', 'awilson$7248', 'Email', '2025-06-20 10:24:33'),
(43, 'Mr', '8912266784015', 'Noah', 'Nkosi', 'noah.nkosi@gmail.com', '0763407066', '353 Oak Street', 'nnkosi', 'nnkosi$3407', 'Email', '2025-06-20 10:24:33'),
(44, 'Mrs', '4803233540087', 'Ethel', 'Nkosi', 'ethel.nkosi@gmail.com', '0722944641', '336 Willow Street', 'enkosi1', 'enkosi$2944', 'Email', '2025-06-20 10:24:33'),
(45, 'Mr', '9501303848045', 'Evra', 'Wilson', 'evra.wilson@gmail.com', '0714946067', '487 Spruce Street', 'ewilson2', 'ewilson$4946', 'Email', '2025-06-20 10:24:33'),
(46, 'Mr', '6711189204048', 'Ethan', 'Nkosi', 'ethan.nkosi@gmail.com', '0738510987', '382 Elm Street', 'enkosi', 'enkosi$8510', 'Email', '2025-06-20 10:24:33'),
(47, 'Mrs', '6301209154077', 'Olivia', 'Hall', 'olivia.hall@gmail.com', '0717403055', '864 Cedar Street', 'ohall', 'ohall$7403', 'Email', '2025-06-20 10:24:33'),
(48, 'Mrs', '7811225151184', 'Emma', 'Johnson', 'emma.johnson@gmail.com', '0787978403', '483 Oak Street', 'ejohnson1', 'ejohnson$7978', 'Email', '2025-06-20 10:24:33'),
(49, 'Dr', '4608148192183', 'John', 'Anderson', 'john.anderson@gmail.com', '0777769694', '789 Willow Street', 'janderson1', 'janderson$7769', 'Email', '2025-06-20 10:24:33'),
(50, 'Mr', '6204032653193', 'Michael', 'Taylor', 'michael.taylor@gmail.com', '0721216884', '701 Spruce Street', 'mtaylor', 'mtaylor$1216', 'Email', '2025-06-20 10:24:33'),
(51, 'Dr', '4901218928125', 'Michael', 'Thomas', 'michael.thomas@gmail.com', '0711790361', '104 Elm Street', 'mthomas', 'mthomas$1790', 'Email', '2025-06-20 10:24:33'),
(52, 'Mrs', '5206163043195', 'David', 'Taylor', 'david.taylor@gmail.com', '0749909129', '744 Maple Street', 'dtaylor', 'dtaylor$9909', 'Email', '2025-06-20 10:24:33'),
(53, 'Ms', '9108286769008', 'Noah', 'Taylor', 'noah.taylor@gmail.com', '0787273081', '566 Ash Street', 'ntaylor', 'ntaylor$7273', 'Email', '2025-06-20 10:24:33'),
(54, 'Ms', '4708037500102', 'Ethan', 'Wilson', 'ethan.wilson@gmail.com', '0718425293', '500 Birch Street', 'ewilson', 'ewilson$8425', 'Email', '2025-06-20 10:24:33'),
(55, 'Mr', '4609139102037', 'Obert', 'Smith', 'obert.smith@gmail.com', '0763380717', '216 Oak Street', 'osmith', '$2y$10$5D6GhflsQY69FZWBA15CSOSqCVZ442KpN28fc4CZZDTr4RlV8iMOC', 'Email', '2025-06-20 10:24:33'),
(56, 'Ms', '6104301288034', 'Emily', 'Brown', 'emily.brown@gmail.com', '0719919743', '906 Oak Street', 'ebrown', 'ebrown$9919', 'Email', '2025-06-20 10:24:33'),
(57, 'Dr', '8612145459128', 'Rudolph', 'Anderson', 'rudolph.anderson@gmail.com', '0764100813', '991 Redwood Street', 'randerson1', 'randerson$4100', 'Email', '2025-06-20 10:24:33'),
(58, 'Mr', '4108192658003', 'Olivia', 'Anderson', 'olivia.anderson@gmail.com', '0714962168', '404 Cedar Street', 'oanderson', 'oanderson$4962', 'Email', '2025-06-20 10:24:33'),
(59, 'Mr', '8211122255055', 'Robert', 'Nkuna', 'robert.nkuna@gmail.com', '0794962169', '661 Oak Street', 'rnkuna', 'rnkuna$4962', 'Email', '2025-06-20 10:24:33'),
(60, 'Mr', '8108192658004', 'William', 'Smith', 'william.smith@gmail.com', '0724962110', '545 Via Street', 'wsmith', 'wsmith$4962', 'Email', '2025-06-20 10:24:33'),
(61, 'Mrs', '8208192658005', 'Mercy', 'Khumalo', 'mercy.khumalo@gmail.com', '0734962121', '767 Watlo Street', 'mkhumalo', 'mkhumalo$4962', 'Email', '2025-06-20 10:24:33'),
(62, 'Dr', '8408192658006', 'Sizwe', 'Vuma', 'sizwe.vuma@gmail.com', '0744962132', '456 Christ Street', 'svuma', 'svuma$4962', 'Email', '2025-06-20 10:24:33'),
(63, 'Prof', '7808192658007', 'Hlulani', 'Mabunda', 'hlulani.mabunda@gmail.com', '0754962143', '565 Emelo Street', 'hmabunda', 'hmabunda$4962', 'Email', '2025-06-20 10:24:33'),
(64, 'Mr', '7108192658008', 'Stephen', 'Ngobeni', 'stephen.ngobeni@gmail.com', '0714962154', '787 Giy Street', 'sngobeni', 'sngobeni$4962', 'Email', '2025-06-20 10:24:33'),
(65, 'Mrs', '7308192658009', 'Wendy', 'Hlungwane', 'wendy.hlungwane@gmail.com', '0764962165', '345 House Street', 'whlungwane', 'whlungwane$4962', 'Email', '2025-06-20 10:24:33'),
(66, 'Ms', '7408192658010', 'Ntombi', 'Sithebe', 'ntombi.sithebe@gmail.com', '0774962177', '555 Lou Street', 'nsithebe', 'nsithebe$4962', 'Email', '2025-06-20 10:24:33'),
(67, 'Mr', '6908192658011', 'Thabang ', 'Sithole', 'thabang.sithole@gmail.com', '0784962187', '245 Key Street', 'tsithole', 'tsithole$4962', 'Email', '2025-06-20 10:24:33'),
(68, 'Dr', '7208192658012', 'Kenneth', 'Maluleke', 'kenneth.maluleke@gmail.com', '0764962198', '623 Teka Street', 'kmaluleke', 'kmaluleke$4962', 'Email', '2025-06-20 10:24:33'),
(69, 'Dr', '7708192658013', 'Kingston', 'Mahlaule', 'kingston.mahlaule@gmail.com', '0724962112', '222 Kuma Street', 'kmahlaule', 'kmahlaule$4962', 'Email', '2025-06-20 10:24:33'),
(74, 'Mrs', '8301077788082', 'Tiyani', 'Nkuna', 'yinhlanthavela@gmail.com', '0726541526', '85 Standstand street, Centurion', 'Tiyani', '$2y$10$HIyxy29umFq23uvtf8QMkODfaT60XcxhQVxjTICSB4yzL.snhHp/O', 'Email', '2025-09-10 13:22:30'),
(76, 'Mr', '9003155588001', 'Mondi', 'Maswanganye', 'yinhlanthavela@gmail.com', '0733984629', 'Success Steet, Highveld, Centurion 0157\r\nTurnhouse Steet, Highveld, Centurion 0157', 'Mondi', '$2y$10$95RbWGOjWrwpnqKKEHD6Ee3z7wI2AiDmlRu2tnaV/HXc37zLeeJyu', 'Email', '2025-10-02 21:39:51'),
(79, 'Ms', '8202166677077', 'Rahel', 'Makaringe', 'yinhlanthavela@gmail.com', '0733984629', 'Giyani Main Road', 'Rahel', '$2y$10$XZTK56Ietf54yVdm8RBvPe.kW47Vs954eplzr0iD/NLatGWbEZCei', 'Email', '2025-10-27 22:22:59'),
(80, 'Mrs', '9003155588002', 'Gladys', 'Maswanganye', 'yinhlanthavela@gmail.com', '0773984628', 'Higveld, Centurion\r\nTurnhouse Street', 'Gladys', '$2y$10$/aGFta7Hx59WkMTnx4vP.uDvUXPnZGvxJ2vqdMsV7c7EdHArRIFnq', 'Email', '2025-11-05 00:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` int(11) NOT NULL,
  `bookingID` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 340.00,
  `paymentDate` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('available','pending','completed','rejected') DEFAULT 'pending',
  `proofOfPayment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `bookingID`, `amount`, `paymentDate`, `status`, `proofOfPayment`) VALUES
(115, 212, 100.00, '2025-11-05 00:41:17', 'completed', 'uploads/proof_690a810da740f.pdf'),
(116, 209, 100.00, '2025-11-05 00:41:45', 'completed', 'uploads/proof_690a81298dbef.pdf'),
(117, 210, 100.00, '2025-11-05 00:42:07', 'completed', 'uploads/proof_690a813fe5b3c.pdf'),
(118, 211, 100.00, '2025-11-05 00:42:23', 'completed', 'uploads/proof_690a814fdc6e2.pdf'),
(119, 214, 100.00, '2025-11-05 01:14:54', 'completed', 'uploads/proof_690a88eeed6ca.pdf'),
(120, 213, 100.00, '2025-11-05 01:15:13', 'completed', 'uploads/proof_690a890149582.pdf'),
(121, 215, 100.00, '2025-11-05 02:10:28', 'completed', 'uploads/proof_690a95f47a14e.pdf'),
(122, 216, 100.00, '2025-11-05 02:24:17', 'completed', 'uploads/proof_690a993117caa.pdf'),
(123, 217, 100.00, '2025-11-05 02:32:00', 'completed', 'uploads/proof_690a9b0093541.pdf'),
(124, 218, 100.00, '2025-11-05 02:38:11', 'completed', 'uploads/proof_690a9c739f3e3.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentID` int(11) NOT NULL,
  `studentSchoolNumber` char(6) DEFAULT NULL,
  `studentName` varchar(50) DEFAULT NULL,
  `studentSurname` varchar(50) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `studentGrade` varchar(20) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `lockerID` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentID`, `studentSchoolNumber`, `studentName`, `studentSurname`, `dateOfBirth`, `gender`, `studentGrade`, `parentID`, `lockerID`) VALUES
(1, '510010', 'Emma', 'Smith', '2010-04-12', 'Female', 'Grade 9', 1, 85),
(2, '357874', 'Liam', 'Johnson', '2011-01-20', 'Male', 'Grade 8', 2, NULL),
(3, '550037', 'Olivia', 'Brown', '2009-07-05', 'Female', 'Grade 10', 3, NULL),
(4, '217985', 'Leem', 'Johnson', '2009-11-30', 'Male', 'Grade 10', 4, NULL),
(5, '110216', 'Olivia', 'Wilson', '2010-03-25', 'Female', 'Grade 9', 5, NULL),
(6, '764982', 'Noah', 'Taylor', '2011-06-17', 'Male', 'Grade 9', 6, NULL),
(7, '200443', 'Ava', 'Anderson', '2008-08-03', 'Female', 'Grade 11', 7, NULL),
(8, '910983', 'Ethan', 'Thomas', '2009-09-14', 'Male', 'Grade 10', 8, NULL),
(9, '390412', 'James', 'Wilson', '2010-10-10', 'Male', 'Grade 9', 9, NULL),
(10, '878977', 'Noah', 'Anderson', '2010-05-19', 'Male', 'Grade 9', 10, NULL),
(11, '558556', 'Liam', 'Smith', '2009-02-23', 'Male', 'Grade 10', 11, NULL),
(12, '317750', 'Ava', 'Smith', '2009-12-15', 'Female', 'Grade 10', 12, NULL),
(13, '453633', 'Emily', 'Hall', '2011-01-18', 'Female', 'Grade 9', 13, NULL),
(14, '611784', 'Jane', 'White', '2011-04-22', 'Female', 'Grade 9', 14, NULL),
(15, '582349', 'John', 'Hall', '2009-11-02', 'Male', 'Grade 10', 15, NULL),
(16, '528034', 'Jane', 'Anderson', '2008-07-09', 'Female', 'Grade 11', 16, NULL),
(17, '173463', 'Michael', 'Anderson', '2010-01-12', 'Male', 'Grade 9', 17, NULL),
(18, '287868', 'David', 'Nkosi', '2011-10-27', 'Male', 'Grade 9', 18, NULL),
(19, '908979', 'Emily', 'Brown', '2009-06-29', 'Female', 'Grade 10', 19, NULL),
(20, '271520', 'Alice', 'Smith', '2011-03-14', 'Female', 'Grade 9', 20, NULL),
(21, '720053', 'Jane', 'Nkosi', '2009-08-08', 'Female', 'Grade 10', 21, NULL),
(22, '761953', 'Sophia', 'Nkosi', '2009-09-30', 'Female', 'Grade 10', 22, NULL),
(23, '916977', 'James', 'Taylor', '2010-11-05', 'Male', 'Grade 9', 23, NULL),
(24, '407505', 'Emily', 'Anderson', '2010-06-13', 'Female', 'Grade 9', 24, NULL),
(25, '652308', 'Michael', 'Wilson', '2009-05-07', 'Male', 'Grade 10', 25, NULL),
(26, '312754', 'Leey', 'Smith', '2009-07-01', 'Male', 'Grade 10', 26, NULL),
(27, '801075', 'Ava', 'White', '2008-09-12', 'Female', 'Grade 11', 27, NULL),
(28, '825753', 'Ethan', 'Anderson', '2011-02-20', 'Male', 'Grade 9', 28, NULL),
(29, '739637', 'John', 'Nkosi', '2010-06-18', 'Male', 'Grade 9', 29, NULL),
(30, '902543', 'Alice', 'Johnson', '2008-04-25', 'Female', 'Grade 11', 30, NULL),
(31, '749847', 'Robert', 'White', '2010-11-10', 'Male', 'Grade 9', 31, NULL),
(32, '611591', 'Liam', 'Hall', '2011-05-14', 'Male', 'Grade 9', 32, NULL),
(33, '899951', 'Liam', 'Nkosi', '2011-08-22', 'Male', 'Grade 8', 33, NULL),
(34, '264399', 'Robert', 'Thomas', '2011-12-02', 'Male', 'Grade 8', 34, NULL),
(35, '509342', 'Olivia', 'Taylor', '2011-07-30', 'Female', 'Grade 9', 35, NULL),
(36, '895067', 'Alice', 'Taylor', '2010-01-19', 'Female', 'Grade 9', 36, NULL),
(37, '828859', 'Ethan', 'Wilson', '2007-06-06', 'Male', 'Grade 12', 37, NULL),
(38, '628670', 'Ethan', 'Smith', '2009-03-03', 'Male', 'Grade 10', 38, NULL),
(39, '508534', 'Emmar', 'Smith', '2009-09-09', 'Female', 'Grade 10', 39, NULL),
(40, '773539', 'Johnnes', 'Hall', '2011-04-17', 'Male', 'Grade 8', 40, NULL),
(41, '617741', 'Olive', 'Johnson', '2007-11-11', 'Female', 'Grade 12', 41, NULL),
(42, '647927', 'Alice', 'Wilson', '2007-10-20', 'Female', 'Grade 12', 42, NULL),
(43, '277788', 'Olivia', 'Nkosi', '2009-06-05', 'Female', 'Grade 10', 43, NULL),
(44, '382254', 'Michael', 'Nkosi', '2011-01-07', 'Male', 'Grade 9', 44, NULL),
(45, '163680', 'Emmara', 'Wilson', '2011-09-21', 'Female', 'Grade 8', 45, NULL),
(46, '248256', 'Liamme', 'Nkosi', '2009-02-14', 'Male', 'Grade 10', 46, NULL),
(47, '582399', 'Jammy', 'Hall', '2011-05-25', 'Male', 'Grade 10', 47, NULL),
(48, '567866', 'Oliviaser', 'Johnson', '2010-08-08', 'Female', 'Grade 9', 48, NULL),
(49, '977032', 'Jameson', 'Anderson', '2008-03-13', 'Male', 'Grade 11', 49, NULL),
(50, '762563', 'Johanson', 'Taylor', '2008-12-28', 'Male', 'Grade 11', 50, NULL),
(51, '922628', 'Sophiar', 'Thomas', '2010-10-16', 'Female', 'Grade 9', 51, NULL),
(52, '221375', 'Ava', 'Taylor', '2008-07-17', 'Female', 'Grade 11', 52, NULL),
(53, '540787', 'Sophia', 'Taylor', '2011-06-11', 'Female', 'Grade 9', 53, NULL),
(54, '309568', 'Jane', 'Wilson', '2010-02-09', 'Female', 'Grade 9', 54, NULL),
(55, '801734', 'Olivia', 'Smith', '2007-05-15', 'Female', 'Grade 12', 55, NULL),
(56, '868018', 'James', 'Brown', '2009-11-30', 'Male', 'Grade 10', 56, NULL),
(57, '694925', 'Ava', 'Anderson', '2008-04-02', 'Female', 'Grade 11', 57, NULL),
(58, '366289', 'Liam', 'Anderson', '2010-09-05', 'Male', 'Grade 9', 58, NULL),
(59, '376289', 'Lee', 'Nkuna', '2009-01-03', 'Male', 'Grade 10', 59, NULL),
(60, '386289', 'Leam', 'Smith', '2008-08-19', 'Male', 'Grade 11', 60, NULL),
(61, '396289', 'Ntando', 'Khumalo', '2008-10-10', 'Male', 'Grade 11', 61, NULL),
(62, '310289', 'Wam ', 'Vuma', '2010-03-01', 'Male', 'Grade 9', 62, NULL),
(63, '311289', 'Nko', 'Mabunda', '2010-06-26', 'Male', 'Grade 9', 63, NULL),
(64, '312289', 'Tab', 'Ngobeni', '2008-11-13', 'Male', 'Grade 11', 64, NULL),
(65, '313289', 'Dima', 'Hlungwane', '2007-04-04', 'Female', 'Grade 12', 65, NULL),
(66, '314289', 'Sandile', 'Sithebe', '2008-01-27', 'Male', 'Grade 11', 66, NULL),
(67, '315289', 'Lisedi', 'Sithole', '2010-07-23', 'Female', 'Grade 9', 67, NULL),
(68, '316289', 'Hluma', 'Maluleke', '2008-06-06', 'Female', 'Grade 11', 68, NULL),
(69, '317289', 'Hole', 'Mahlaule', '2008-12-15', 'Female', 'Grade 11', 69, NULL),
(73, '520010', 'Liam', 'Smith', '2011-09-25', 'Male', 'Grade 8', 15, NULL),
(1028, '977033', 'Tsiki', 'Maswanganye', '2008-12-12', 'Female', 'Grade 12', 76, 72),
(1029, '977034', 'Thandy', 'Maswanganye', '2009-06-09', 'Female', 'Grade 11', 76, 73),
(1030, '977035', 'Nhlamulo', 'Maswanganye', '2012-12-12', 'Male', 'Grade 8', 76, 74),
(1031, '977036', 'Nthavi', 'Maswanganye', '2009-12-12', 'Female', 'Grade 11', 76, 75),
(1032, '977037', 'Ntombinyana', 'Makaringe', '2011-02-03', 'Female', 'Grade 9', 79, 76),
(1033, '977038', 'Nthavelani', 'Makaringe', '2010-02-03', 'Male', 'Grade 10', 79, 77),
(1034, '977039', 'Tutu', 'Makaringe', '2008-12-12', 'Male', 'Grade 12', 79, 78),
(1035, '977040', 'Michael', 'Smith', '2008-12-03', 'Male', 'Grade 12', 1, 79),
(1036, '977041', 'Ginita', 'Makaringe', '2008-08-08', 'Female', 'Grade 12', 79, 80),
(1037, '977042', 'Nyeleti', 'Maswanganye', '2008-01-02', 'Female', 'Grade 12', 76, 81),
(1038, '977043', 'Thomas', 'Smith', '2008-06-06', 'Male', 'Grade 12', 1, 82),
(1039, '977044', 'Kulani', 'Maswanganye', '2011-05-05', 'Female', 'Grade 9', 76, 82);

-- --------------------------------------------------------

--
-- Table structure for table `waitinglist`
--

CREATE TABLE `waitinglist` (
  `waitingID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `studentGrade` enum('Grade 8','Grade 9','Grade 10','Grade 11','Grade 12') NOT NULL,
  `dateAdded` date NOT NULL DEFAULT curdate(),
  `status` enum('Pending','Approved','Cancelled','Completed','Regret') NOT NULL DEFAULT 'Pending',
  `type` enum('Phone','Email') NOT NULL DEFAULT 'Email',
  `lockerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waitinglist`
--

INSERT INTO `waitinglist` (`waitingID`, `studentID`, `studentGrade`, `dateAdded`, `status`, `type`, `lockerID`) VALUES
(84, 1038, 'Grade 12', '2025-11-05', 'Pending', 'Email', 82);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `unique_student_locker` (`studentID`,`lockerID`),
  ADD KEY `bookings_ibfk_2` (`lockerID`);

--
-- Indexes for table `lockers`
--
ALTER TABLE `lockers`
  ADD PRIMARY KEY (`lockerID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notificationID`),
  ADD KEY `notifications_ibfk_1` (`parentID`),
  ADD KEY `notifications_ibfk_2` (`adminID`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parentID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `payments_ibfk_1` (`bookingID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentID`),
  ADD UNIQUE KEY `unique_school_number` (`studentSchoolNumber`),
  ADD KEY `parentID` (`parentID`),
  ADD KEY `fk_students_lockerID` (`lockerID`);

--
-- Indexes for table `waitinglist`
--
ALTER TABLE `waitinglist`
  ADD PRIMARY KEY (`waitingID`),
  ADD KEY `fk_waitinglist_studentID` (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `lockers`
--
ALTER TABLE `lockers`
  MODIFY `lockerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `parentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `waitinglist`
--
ALTER TABLE `waitinglist`
  MODIFY `waitingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentID`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`lockerID`) REFERENCES `lockers` (`lockerID`),
  ADD CONSTRAINT `fk_booking_locker` FOREIGN KEY (`lockerID`) REFERENCES `lockers` (`lockerID`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_booking_student` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_locker` FOREIGN KEY (`lockerID`) REFERENCES `lockers` (`lockerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentID`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`adminID`) REFERENCES `admins` (`adminID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_parent` FOREIGN KEY (`parentID`) REFERENCES `parents` (`parentID`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`parentID`) REFERENCES `parents` (`parentID`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`adminID`) REFERENCES `admins` (`adminID`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `bookings` (`bookingID`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_students_lockerID` FOREIGN KEY (`lockerID`) REFERENCES `lockers` (`lockerID`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`parentID`) REFERENCES `parents` (`parentID`);

--
-- Constraints for table `waitinglist`
--
ALTER TABLE `waitinglist`
  ADD CONSTRAINT `fk_waitinglist_studentID` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentID`) ON DELETE CASCADE,
  ADD CONSTRAINT `waitinglist_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `students` (`studentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
