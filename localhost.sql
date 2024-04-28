-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2024 at 09:44 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

//for the purpose of me uploading all of this - all my personal information will be taking out, so replace any 
// (DATABASE_NAME) with your database name, any (USERNAME) with your username and any (PASSWORD) with your password!

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `(DATABASE_NAME)`
--
CREATE DATABASE IF NOT EXISTS `(DATABASE_NAME)` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `(DATABASE_NAME)`;

-- --------------------------------------------------------

--
-- Table structure for table `p_applications`
--

CREATE TABLE `p_applications` (
  `ApplicationID` int(11) NOT NULL,
  `CandidateID` int(11) NOT NULL,
  `JobID` int(11) NOT NULL,
  `ApplicationDate` date NOT NULL,
  `Status` enum('Pending','Reviewed','Rejected','Accepted') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_applications`
--

INSERT INTO `p_applications` (`ApplicationID`, `CandidateID`, `JobID`, `ApplicationDate`, `Status`) VALUES
(1, 1, 55, '2024-03-09', 'Rejected'),
(2, 1, 52, '2024-03-12', 'Pending'),
(3, 1, 76, '2024-03-07', 'Rejected'),
(4, 2, 36, '2024-03-06', 'Rejected'),
(5, 2, 33, '2024-03-10', 'Reviewed'),
(6, 2, 6, '2024-03-07', 'Reviewed'),
(7, 3, 55, '2024-03-08', 'Pending'),
(8, 3, 52, '2024-03-10', 'Rejected'),
(9, 3, 76, '2024-03-11', 'Pending'),
(10, 4, 55, '2024-03-08', 'Reviewed'),
(11, 4, 52, '2024-03-11', 'Rejected'),
(12, 4, 76, '2024-03-12', 'Rejected'),
(13, 5, 55, '2024-03-11', 'Rejected'),
(14, 5, 52, '2024-03-10', 'Reviewed'),
(15, 5, 76, '2024-03-06', 'Rejected'),
(16, 6, 55, '2024-03-08', 'Pending'),
(17, 6, 52, '2024-03-08', 'Reviewed'),
(18, 6, 76, '2024-03-07', 'Reviewed'),
(19, 7, 55, '2024-03-06', 'Reviewed'),
(20, 7, 52, '2024-03-07', 'Pending'),
(21, 7, 76, '2024-03-11', 'Pending'),
(22, 8, 55, '2024-03-08', 'Reviewed'),
(23, 8, 52, '2024-03-12', 'Pending'),
(24, 8, 76, '2024-03-11', 'Reviewed'),
(25, 9, 55, '2024-03-07', 'Reviewed'),
(26, 9, 52, '2024-03-06', 'Reviewed'),
(27, 9, 76, '2024-03-08', 'Reviewed'),
(28, 10, 55, '2024-03-06', 'Pending'),
(29, 10, 52, '2024-03-07', 'Pending'),
(30, 10, 76, '2024-03-09', 'Reviewed'),
(31, 11, 55, '2024-03-12', 'Pending'),
(32, 11, 52, '2024-03-10', 'Pending'),
(33, 11, 76, '2024-03-09', 'Reviewed'),
(34, 12, 55, '2024-03-10', 'Reviewed'),
(35, 12, 52, '2024-03-07', 'Reviewed'),
(36, 12, 76, '2024-03-06', 'Reviewed'),
(37, 13, 55, '2024-03-08', 'Rejected'),
(38, 13, 52, '2024-03-08', 'Rejected'),
(39, 13, 76, '2024-03-10', 'Reviewed'),
(40, 14, 55, '2024-03-12', 'Rejected'),
(41, 14, 52, '2024-03-09', 'Rejected'),
(42, 14, 76, '2024-03-12', 'Reviewed'),
(43, 15, 55, '2024-03-07', 'Pending'),
(44, 15, 52, '2024-03-11', 'Pending'),
(45, 15, 76, '2024-03-08', 'Reviewed'),
(46, 16, 55, '2024-03-08', 'Pending'),
(47, 16, 52, '2024-03-11', 'Rejected'),
(48, 16, 76, '2024-03-12', 'Reviewed'),
(49, 17, 55, '2024-03-10', 'Reviewed'),
(50, 17, 52, '2024-03-12', 'Reviewed'),
(51, 17, 76, '2024-03-12', 'Rejected'),
(52, 18, 55, '2024-03-07', 'Pending'),
(53, 18, 52, '2024-03-12', 'Pending'),
(54, 18, 76, '2024-03-07', 'Pending'),
(55, 19, 55, '2024-03-06', 'Reviewed'),
(56, 19, 52, '2024-03-12', 'Rejected'),
(57, 19, 76, '2024-03-10', 'Pending'),
(58, 20, 55, '2024-03-09', 'Pending'),
(59, 20, 52, '2024-03-11', 'Reviewed'),
(60, 20, 76, '2024-03-06', 'Reviewed'),
(61, 21, 55, '2024-03-07', 'Reviewed'),
(62, 21, 52, '2024-03-09', 'Reviewed'),
(63, 21, 76, '2024-03-08', 'Reviewed'),
(64, 22, 55, '2024-03-11', 'Rejected'),
(65, 22, 52, '2024-03-09', 'Pending'),
(66, 22, 76, '2024-03-08', 'Reviewed'),
(67, 23, 55, '2024-03-08', 'Reviewed'),
(68, 23, 52, '2024-03-12', 'Reviewed'),
(69, 23, 76, '2024-03-08', 'Reviewed'),
(70, 24, 55, '2024-03-10', 'Rejected'),
(71, 24, 52, '2024-03-06', 'Reviewed'),
(72, 24, 76, '2024-03-08', 'Pending'),
(73, 25, 55, '2024-03-08', 'Pending'),
(74, 25, 52, '2024-03-09', 'Reviewed'),
(75, 25, 76, '2024-03-12', 'Rejected'),
(76, 26, 55, '2024-03-06', 'Reviewed'),
(77, 26, 52, '2024-03-07', 'Pending'),
(78, 26, 76, '2024-03-12', 'Reviewed'),
(79, 27, 55, '2024-03-08', 'Pending'),
(80, 27, 52, '2024-03-06', 'Reviewed'),
(81, 27, 76, '2024-03-10', 'Reviewed'),
(82, 28, 55, '2024-03-12', 'Rejected'),
(83, 28, 52, '2024-03-08', 'Reviewed'),
(84, 28, 76, '2024-03-07', 'Rejected'),
(85, 29, 55, '2024-03-11', 'Rejected'),
(86, 29, 52, '2024-03-07', 'Reviewed'),
(87, 29, 76, '2024-03-09', 'Pending'),
(88, 30, 55, '2024-03-09', 'Rejected'),
(89, 30, 52, '2024-03-06', 'Pending'),
(90, 30, 76, '2024-03-06', 'Reviewed'),
(91, 31, 55, '2024-03-08', 'Rejected'),
(92, 31, 52, '2024-03-11', 'Reviewed'),
(93, 31, 76, '2024-03-06', 'Reviewed'),
(94, 32, 55, '2024-03-10', 'Reviewed'),
(95, 32, 52, '2024-03-10', 'Reviewed'),
(96, 32, 76, '2024-03-10', 'Reviewed'),
(97, 33, 55, '2024-03-08', 'Pending'),
(98, 33, 52, '2024-03-10', 'Pending'),
(99, 33, 76, '2024-03-07', 'Pending'),
(100, 34, 55, '2024-03-10', 'Rejected'),
(101, 34, 52, '2024-03-07', 'Rejected'),
(102, 34, 76, '2024-03-09', 'Reviewed'),
(103, 35, 55, '2024-03-08', 'Rejected'),
(104, 35, 52, '2024-03-09', 'Reviewed'),
(105, 35, 76, '2024-03-07', 'Pending'),
(106, 36, 55, '2024-03-06', 'Pending'),
(107, 36, 52, '2024-03-11', 'Reviewed'),
(108, 36, 76, '2024-03-10', 'Pending'),
(109, 37, 55, '2024-03-08', 'Pending'),
(110, 37, 52, '2024-03-11', 'Rejected'),
(111, 37, 76, '2024-03-08', 'Rejected'),
(112, 38, 55, '2024-03-08', 'Reviewed'),
(113, 38, 52, '2024-03-06', 'Reviewed'),
(114, 38, 76, '2024-03-07', 'Reviewed'),
(115, 39, 55, '2024-03-06', 'Reviewed'),
(116, 39, 52, '2024-03-07', 'Rejected'),
(117, 39, 76, '2024-03-08', 'Reviewed'),
(118, 40, 55, '2024-03-07', 'Rejected'),
(119, 40, 52, '2024-03-06', 'Reviewed'),
(120, 40, 76, '2024-03-06', 'Pending'),
(121, 41, 55, '2024-03-07', 'Pending'),
(122, 41, 52, '2024-03-07', 'Rejected'),
(123, 41, 76, '2024-03-06', 'Reviewed'),
(124, 42, 55, '2024-03-10', 'Reviewed'),
(125, 42, 52, '2024-03-12', 'Pending'),
(126, 42, 76, '2024-03-08', 'Reviewed'),
(127, 43, 55, '2024-03-09', 'Pending'),
(128, 43, 52, '2024-03-09', 'Pending'),
(129, 43, 76, '2024-03-06', 'Reviewed'),
(130, 44, 55, '2024-03-12', 'Reviewed'),
(131, 44, 52, '2024-03-12', 'Rejected'),
(132, 44, 76, '2024-03-09', 'Reviewed'),
(133, 45, 55, '2024-03-09', 'Reviewed'),
(134, 45, 52, '2024-03-07', 'Pending'),
(135, 45, 76, '2024-03-11', 'Reviewed'),
(136, 46, 55, '2024-03-06', 'Reviewed'),
(137, 46, 52, '2024-03-09', 'Reviewed'),
(138, 46, 76, '2024-03-09', 'Pending'),
(139, 47, 55, '2024-03-10', 'Reviewed'),
(140, 47, 52, '2024-03-12', 'Pending'),
(141, 47, 76, '2024-03-06', 'Pending'),
(142, 48, 55, '2024-03-12', 'Reviewed'),
(143, 48, 52, '2024-03-12', 'Reviewed'),
(144, 48, 76, '2024-03-07', 'Reviewed'),
(145, 49, 55, '2024-03-07', 'Reviewed'),
(146, 49, 52, '2024-03-11', 'Pending'),
(147, 49, 76, '2024-03-12', 'Reviewed'),
(148, 50, 55, '2024-03-12', 'Reviewed'),
(149, 50, 52, '2024-03-06', 'Rejected'),
(150, 50, 76, '2024-03-07', 'Reviewed'),
(151, 51, 55, '2024-03-11', 'Reviewed'),
(152, 51, 52, '2024-03-06', 'Reviewed'),
(153, 51, 76, '2024-03-07', 'Rejected'),
(154, 52, 55, '2024-03-11', 'Rejected'),
(155, 52, 52, '2024-03-08', 'Rejected'),
(156, 52, 76, '2024-03-09', 'Pending'),
(157, 53, 55, '2024-03-06', 'Pending'),
(158, 53, 52, '2024-03-08', 'Reviewed'),
(159, 53, 76, '2024-03-09', 'Rejected'),
(160, 54, 55, '2024-03-09', 'Reviewed'),
(161, 54, 52, '2024-03-10', 'Reviewed'),
(162, 54, 76, '2024-03-12', 'Reviewed'),
(163, 55, 55, '2024-03-11', 'Pending'),
(164, 55, 52, '2024-03-11', 'Pending'),
(165, 55, 76, '2024-03-08', 'Pending'),
(166, 56, 55, '2024-03-08', 'Reviewed'),
(167, 56, 52, '2024-03-11', 'Reviewed'),
(168, 56, 76, '2024-03-10', 'Pending'),
(169, 57, 55, '2024-03-11', 'Reviewed'),
(170, 57, 52, '2024-03-11', 'Pending'),
(171, 57, 76, '2024-03-06', 'Reviewed'),
(172, 58, 55, '2024-03-11', 'Rejected'),
(173, 58, 52, '2024-03-07', 'Pending'),
(174, 58, 76, '2024-03-06', 'Rejected'),
(175, 59, 55, '2024-03-06', 'Pending'),
(176, 59, 52, '2024-03-10', 'Pending'),
(177, 59, 76, '2024-03-11', 'Pending'),
(178, 60, 55, '2024-03-08', 'Pending'),
(179, 60, 52, '2024-03-12', 'Rejected'),
(180, 60, 76, '2024-03-08', 'Rejected'),
(181, 61, 55, '2024-03-11', 'Reviewed'),
(182, 61, 52, '2024-03-08', 'Reviewed'),
(183, 61, 76, '2024-03-07', 'Rejected'),
(184, 62, 55, '2024-03-10', 'Pending'),
(185, 62, 52, '2024-03-09', 'Rejected'),
(186, 62, 76, '2024-03-11', 'Reviewed'),
(187, 63, 55, '2024-03-09', 'Reviewed'),
(188, 63, 52, '2024-03-12', 'Pending'),
(189, 63, 76, '2024-03-06', 'Pending'),
(190, 64, 55, '2024-03-10', 'Reviewed'),
(191, 64, 52, '2024-03-09', 'Rejected'),
(192, 64, 76, '2024-03-10', 'Reviewed'),
(193, 65, 55, '2024-03-09', 'Reviewed'),
(194, 65, 52, '2024-03-12', 'Pending'),
(195, 65, 76, '2024-03-10', 'Pending'),
(196, 66, 55, '2024-03-06', 'Pending'),
(197, 66, 52, '2024-03-09', 'Pending'),
(198, 66, 76, '2024-03-12', 'Rejected'),
(199, 67, 55, '2024-03-07', 'Pending'),
(200, 67, 52, '2024-03-08', 'Rejected'),
(201, 67, 76, '2024-03-07', 'Pending'),
(202, 68, 55, '2024-03-06', 'Pending'),
(203, 68, 52, '2024-03-07', 'Reviewed'),
(204, 68, 76, '2024-03-12', 'Reviewed'),
(205, 69, 55, '2024-03-10', 'Reviewed'),
(206, 69, 52, '2024-03-12', 'Reviewed'),
(207, 69, 76, '2024-03-10', 'Pending'),
(208, 70, 55, '2024-03-08', 'Rejected'),
(209, 70, 52, '2024-03-08', 'Pending'),
(210, 70, 76, '2024-03-06', 'Reviewed'),
(211, 71, 55, '2024-03-10', 'Reviewed'),
(212, 71, 52, '2024-03-10', 'Reviewed'),
(213, 71, 76, '2024-03-10', 'Reviewed'),
(214, 72, 55, '2024-03-06', 'Pending'),
(215, 72, 52, '2024-03-12', 'Reviewed'),
(216, 72, 76, '2024-03-06', 'Reviewed'),
(217, 73, 55, '2024-03-06', 'Rejected'),
(218, 73, 52, '2024-03-06', 'Reviewed'),
(219, 73, 76, '2024-03-11', 'Rejected'),
(220, 74, 55, '2024-03-08', 'Pending'),
(221, 74, 52, '2024-03-10', 'Pending'),
(222, 74, 76, '2024-03-11', 'Pending'),
(223, 75, 55, '2024-03-06', 'Reviewed'),
(224, 75, 52, '2024-03-06', 'Rejected'),
(225, 75, 76, '2024-03-11', 'Reviewed');

-- --------------------------------------------------------

--
-- Stand-in structure for view `p_applicationstatusview`
-- (See below for the actual view)
--
CREATE TABLE `p_applicationstatusview` (
`ApplicationID` int(11)
,`ApplicationDate` date
,`Status` enum('Pending','Reviewed','Rejected','Accepted')
,`CandidateFirstName` varchar(255)
,`CandidateLastName` varchar(255)
,`JobTitle` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `p_averagejobsalaryview`
-- (See below for the actual view)
--
CREATE TABLE `p_averagejobsalaryview` (
`Category` varchar(50)
,`AverageSalary` varchar(16)
);

-- --------------------------------------------------------

--
-- Table structure for table `p_candidates`
--

CREATE TABLE `p_candidates` (
  `CandidateID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `CVExists` tinyint(1) DEFAULT 0,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `LocationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_candidates`
--

INSERT INTO `p_candidates` (`CandidateID`, `UserID`, `FirstName`, `LastName`, `Email`, `Phone`, `CVExists`, `Status`, `LocationID`) VALUES
(1, 1, 'Finnegan', 'O\'Donnell', 'finnodon@example.com', '07754364086', 1, 'Active', 1),
(2, 2, 'Aine', 'Smith', 'aine.smith@example.com', '07790523613', 0, 'Active', 2),
(3, 3, 'Cormac', 'Jackson', 'cormac.jackson@example.com', '07789525810', 1, 'Active', 3),
(4, 4, 'Cian', 'Davis', 'cian.davis@example.com', '07776058213', 0, 'Active', 4),
(5, 5, 'Daniel', 'Brown', 'daniel.brown@example.com', '07711713641', 1, 'Active', 5),
(6, 6, 'Meabh', 'Wilson', 'meabh.wilson@example.com', '07730393570', 0, 'Active', 6),
(7, 7, 'Sinead', 'Clarke', 'sinead.clarke@example.com', '07716826928', 1, 'Active', 7),
(8, 8, 'Niall', 'Lynch', 'niall.lynch@example.com', '07792953936', 0, 'Active', 8),
(9, 9, 'Aofie', 'Kelly', 'aofie.kelly@example.com', '07714288898', 1, 'Active', 9),
(10, 10, 'Alexander', 'Hamilton', 'alexander.hamilton@themusical.com', '07792582686', 0, 'Active', 10),
(11, 11, 'Abby-Lee', 'Miller', 'abbylee.miller@dancemoms.com', '07720046741', 1, 'Active', 11),
(12, 12, 'Bill', 'Gates', 'bill.gates@microsoft.com', '07722485649', 0, 'Active', 12),
(13, 13, 'Taylor', 'Swift', 'taylor.swift@erastour.com', '07752288026', 1, 'Active', 13),
(14, 14, 'Selena', 'Gomez', 'selena.gomez@example.com', '07793983185', 0, 'Active', 14),
(15, 15, 'Ronan', 'O\'Connell', 'ronan.oconnell@example.com', '07713051852', 1, 'Active', 15),
(16, 16, 'George', 'Washington', 'george.washington@themusical.com', '07783309706', 0, 'Active', 16),
(17, 17, 'Aaron', 'Burr', 'aaron.burr@themusical.com', '07777392981', 1, 'Active', 17),
(18, 18, 'Max', 'Verstappen', 'max.verstappen@redbullf1.com', '07737035788', 0, 'Active', 18),
(19, 19, 'Sergio', 'Perez', 'sergio.perez@redbullf1.com', '07753000001', 1, 'Active', 19),
(20, 20, 'Carlos', 'Sainz', 'carlossainz@ferrarif1.com', '07753892646', 0, 'Active', 20),
(21, 21, 'Charles', 'LeClerc', 'charles.leclerc@ferrarif1.com', '07710463230', 1, 'Active', 21),
(22, 22, 'George', 'Russell', 'george.russell@mercf1.com', '07790638215', 0, 'Active', 22),
(23, 23, 'Lando', 'Norris', 'lando.norris@mclarenf1.com', '07721801388', 1, 'Active', 23),
(24, 24, 'Lewis', 'Hamilton', 'lewis.hamilton@mercf1.com', '07737092297', 0, 'Active', 24),
(25, 25, 'Oscar', 'Pistari', 'oscar.pistari@mcclarenf1.com', '07720057326', 1, 'Active', 25),
(26, 26, 'Daniel', 'Ricciardo', 'daniel.ricciardo@RBf1.com', '07789009744', 0, 'Active', 26),
(27, 27, 'Sofia', 'Bottas', 'sofia.bottas@example.com', '07784876745', 1, 'Active', 27),
(28, 28, 'Noah', 'Sargeant', 'noah.sargeant@example.com', '07757354498', 0, 'Active', 28),
(29, 29, 'Charlotte', 'Green', 'charlotte.green@example.com', '07732142256', 1, 'Active', 29),
(30, 30, 'Maya', 'Davies', 'maya.davies@example.com', '07788647792', 0, 'Active', 30),
(31, 31, 'Liam', 'Nelson', 'liam.nelson@example.com', '07746812194', 1, 'Active', 31),
(32, 32, 'Kim', 'Possible', 'kim.possible@disney.com', '07768117597', 0, 'Active', 32),
(33, 33, 'Miley', 'Cyrus', 'miley.cyrus@disney.com', '07700151405', 1, 'Active', 33),
(34, 34, 'Troy', 'Bolton', 'troy.bolton@disney.com', '07796404240', 0, 'Active', 34),
(35, 35, 'Gabriella', 'Montez', 'gabi.montez@highschoolmusical.com', '07781566987', 1, 'Active', 35),
(36, 36, 'Sharpay', 'Evans', 'sharpay.evans@highschoolmusical.com', '07718622221', 0, 'Active', 36),
(37, 37, 'Martha', 'Cox', 'martha.cox@highschoolmusical.com', '07748410147', 1, 'Active', 37),
(38, 38, 'Ryan', 'Evans', 'ryan.evans@highschoolmusical.com', '07786184073', 0, 'Active', 38),
(39, 39, 'Chad', 'Danforth', 'chad.danforth@highschoolmusical.com', '07785689929', 1, 'Active', 39),
(40, 40, 'Hannah', 'Montana', 'hannah.montana@disney.com', '07769897430', 0, 'Active', 40),
(41, 41, 'Alex', 'Russo', 'alex.russo@disney.com', '07792417366', 1, 'Active', 41),
(42, 42, 'Tori', 'Vega', 'tori.vega@singer.com', '07752394544', 0, 'Active', 42),
(43, 43, 'Jade', 'West', 'jade.west@victorious.com', '07784720627', 1, 'Active', 43),
(44, 44, 'Cat', 'Valentine', 'cat.valentine@victorious.com', '07766419503', 0, 'Active', 44),
(45, 45, 'Harper', 'Lee', 'harper.lee@clothing.com', '07777935641', 1, 'Active', 45),
(46, 46, 'Andre', 'Harris', 'andre.harris@victorious.com', '07790419698', 0, 'Active', 46),
(47, 47, 'Benjamin', 'Franklin', 'benjamin.franklin@foundingfather.com', '07718291573', 1, 'Active', 47),
(48, 48, 'Emma', 'Stone', 'emma.stone@lalaland.com', '07720198772', 0, 'Active', 48),
(49, 49, 'Noah', 'Schnapp', 'noah.schnapp@strangerthings.com', '07746119147', 1, 'Active', 49),
(50, 50, 'Ava', 'Hill', 'ava.hill@example.com', '07769999421', 0, 'Active', 50),
(51, 51, 'Olivia', 'Newton-John', 'olivia.newtonjohn@grease.com', '07711639668', 0, 'Active', 51),
(52, 52, 'Liam', 'Payne', 'liam.payne@onedirection.com', '07748200079', 0, 'Active', 52),
(53, 53, 'Harry', 'Styles', 'harry.styles@onedirection.com', '07706081395', 1, 'Active', 53),
(54, 54, 'Louis', 'Tomlinson', 'louis.tomilnson@onedirection.com', '07785806744', 0, 'Active', 54),
(55, 55, 'Niall', 'Horan', 'niall_horan@onedirection.com', '07710789537', 1, 'Active', 55),
(56, 56, 'Zayn', 'Malik', 'zayn_malik@onedirection.com', '07796527458', 1, 'Active', 56),
(57, 57, 'Rachel', 'Green', 'rachelgreen@friends.com', '07750268682', 1, 'Active', 57),
(58, 58, 'Monica', 'Geller', 'monicageller@friends.com', '07761761039', 1, 'Active', 58),
(59, 59, 'Ross', 'Geller', 'rossgeller@friends.com', '07757999151', 0, 'Active', 59),
(60, 60, 'Joey', 'Tribbiani', 'joeytribbiani@friends.com', '07704712643', 0, 'Active', 60),
(61, 61, 'Pheobe', 'Buffay', 'pheobe_buffay@friends.com', '07749565765', 1, 'Active', 61),
(62, 62, 'Chandler', 'Bing', 'chandler_bing@friends.com', '07733690901', 0, 'Active', 62),
(63, 63, 'Sheldon', 'Cooper', 'sheldon_cooper@thebigbangtheory.com', '07719757215', 0, 'Active', 63),
(64, 64, 'Penny', 'Teller', 'penny.teller@thebigbangtheory.com', '07797713373', 1, 'Active', 64),
(65, 65, 'Leonard', 'Hofstadter', 'leonard.hofstadter@thebigbangtheory.com', '07729295226', 1, 'Active', 65),
(66, 66, 'Howard', 'Wolowitz', 'howard.wolowitz@thebigbangtheory.com', '07753336011', 1, 'Active', 66),
(67, 67, 'Raj', 'Koothrappli', 'rajesh.koothrappli@thebigbangtheory.com', '07778794384', 1, 'Active', 67),
(68, 68, 'Amy', 'Farrah Fowler', 'amyffowler@thebigbangtheory.com', '07733963888', 1, 'Active', 68),
(69, 69, 'Bernadette', 'Wolowitz', 'bernadette.wolowitz@thebigbangtheory.com', '07733436294', 0, 'Active', 69),
(70, 70, 'Meredith', 'Grey', 'mer.grey@greysanatomy.com', '07765289808', 0, 'Active', 70),
(71, 71, 'Derek', 'Shepherd', 'derekshepherd@greysanatomy.com', '07726140162', 0, 'Active', 71),
(72, 72, 'Cristina', 'Yang', 'cristinayang@greysanatomy.com', '07734831391', 1, 'Active', 72),
(73, 73, 'Alex', 'Karev', 'alex.karev@greysanatomy.com', '07795736472', 1, 'Active', 73),
(74, 74, 'Miranda', 'Bailey', 'mirandabailey@greysanatomy.com', '07774188188', 0, 'Active', 74),
(75, 75, 'Izzie', 'Stevens', 'izzie.stevens@greys.com', '07783731530', 1, 'Active', 75);

-- --------------------------------------------------------

--
-- Table structure for table `p_candidateskills`
--

CREATE TABLE `p_candidateskills` (
  `CandidateID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_candidateskills`
--

INSERT INTO `p_candidateskills` (`CandidateID`, `SkillID`) VALUES
(1, 50),
(1, 56),
(2, 18),
(2, 46),
(3, 31),
(3, 50),
(4, 24),
(4, 54),
(5, 21),
(5, 33),
(6, 3),
(6, 21),
(7, 5),
(7, 20),
(8, 2),
(8, 56),
(9, 5),
(9, 56),
(10, 35),
(10, 37),
(11, 45),
(11, 50),
(12, 19),
(12, 33),
(13, 28),
(13, 48),
(14, 22),
(14, 50),
(15, 18),
(15, 34),
(16, 9),
(16, 53),
(17, 36),
(17, 37),
(18, 32),
(18, 54),
(19, 28),
(19, 39),
(20, 35),
(20, 47),
(21, 8),
(21, 27),
(22, 17),
(22, 38),
(23, 8),
(23, 10),
(24, 40),
(24, 51),
(25, 5),
(25, 47),
(26, 7),
(26, 9),
(27, 1),
(27, 18),
(28, 4),
(28, 33),
(29, 1),
(29, 38),
(30, 42),
(30, 49),
(31, 33),
(31, 42),
(32, 8),
(32, 11),
(33, 15),
(33, 23),
(34, 4),
(34, 19),
(35, 12),
(35, 22),
(36, 10),
(36, 51),
(37, 16),
(37, 37),
(38, 9),
(38, 27),
(39, 28),
(39, 56),
(40, 1),
(40, 18),
(41, 22),
(41, 28),
(42, 24),
(42, 26),
(43, 6),
(43, 17),
(44, 8),
(44, 30),
(45, 30),
(45, 38),
(46, 27),
(46, 40),
(47, 8),
(47, 10),
(48, 1),
(48, 26),
(49, 12),
(49, 13),
(50, 23),
(50, 50),
(51, 7),
(51, 18),
(52, 20),
(52, 37),
(53, 15),
(53, 20),
(54, 20),
(54, 32),
(55, 13),
(55, 23),
(56, 45),
(56, 47),
(57, 4),
(57, 28),
(58, 2),
(58, 11),
(59, 2),
(59, 56),
(60, 5),
(60, 48),
(61, 45),
(61, 51),
(62, 31),
(62, 34),
(63, 38),
(63, 54),
(64, 45),
(64, 55),
(65, 6),
(65, 30),
(66, 14),
(66, 40),
(67, 32),
(67, 53),
(68, 1),
(68, 31),
(69, 1),
(69, 19),
(70, 10),
(70, 39),
(71, 19),
(71, 27),
(72, 35),
(72, 46),
(73, 4),
(73, 10),
(74, 4),
(74, 54),
(75, 20),
(75, 40);

-- --------------------------------------------------------

--
-- Stand-in structure for view `p_candidateskillsview`
-- (See below for the actual view)
--
CREATE TABLE `p_candidateskillsview` (
`FirstName` varchar(255)
,`LastName` varchar(255)
,`Email` varchar(100)
,`Phone` varchar(20)
,`SkillName` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `p_employerjobpostingsview`
-- (See below for the actual view)
--
CREATE TABLE `p_employerjobpostingsview` (
`CompanyName` varchar(100)
,`Phone` varchar(20)
,`EmployerEmail` varchar(100)
,`JobTitle` varchar(100)
,`Description` text
,`Location` varchar(100)
,`PostedDate` date
);

-- --------------------------------------------------------

--
-- Table structure for table `p_employers`
--

CREATE TABLE `p_employers` (
  `EmployerID` int(11) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `City` varchar(100) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `Industry` varchar(50) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Street` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_employers`
--

INSERT INTO `p_employers` (`EmployerID`, `CompanyName`, `Email`, `Phone`, `City`, `PostalCode`, `Industry`, `Status`, `Street`) VALUES
(1, 'OceanMindsTechnologies Limited', 'contact@oceanmind.com', '0772071494346', 'London', 'EC9P 3WG', 'Technology', 'Active', '6 Donegal Square'),
(2, 'Coyle & Company.', 'contact@coyle.com', '+1 292-402-2171', 'New York', '10022', 'Consulting', 'Active', 'Seventh Daisy Avenue '),
(3, 'PIPER', 'info@piper.com', '+1 388-274-0643', 'Los Angeles', '90016', 'Design', 'Active', '8500 Beverly Road'),
(4, 'Aston Innovations', 'info@astoninno.com', '07781296472', 'Belfast', 'BT83E6F', 'Technology', 'Active', '8 Lisburn Road'),
(5, 'Derry Finance Ltd', 'info@derryfinance.com', '+44 28 1234 5678', 'Derry', 'BT47 W3F', 'Finance', 'Active', '98 Strand Road'),
(6, 'Royalities Limited Corporation', 'royalties@info.com', '07764293517', 'Seattle', '98101', 'Design', 'Active', '35 Husky Street'),
(7, 'Banana Inc.', 'banana@icloud.com', '07723456789', 'London', '95014', 'Technology', 'Active', '10 Downing Street'),
(8, 'Goliath Electronics Co., Ltd.', 'goliath@icloud.com', '07786592431', 'Suwon', '443-742', 'Technology', 'Active', '41 Browning Lane'),
(9, 'Nile.com Inc.', 'nile@yahoo.co.uk', '07784926135', 'Seattle', '98109', 'E-commerce', 'Active', '20th Avenue'),
(10, 'Research LLC', 'research@gmail.com', '07756789012', 'Sherman Oaks', '94043', 'Technology', 'Active', '41 Chestnut Street'),
(11, 'Cloudy Tech Inc.', 'cloudytech@outlook.com', '07767890123', 'Menlo Park', '94025', 'Technology', 'Active', '21 West Fork Drive'),
(12, 'Gammabet Inc.', 'gammabet@icloud.com', '077857492243', 'Mountain View', '94043', 'Technology', 'Active', '36 Rardin Drive'),
(13, 'Threads & Thinking Corporation', 'threadsandthinking@outlook.com', '07765184923', 'Santa Clara', '95054', 'Technology', 'Active', '63 Redbud Drive'),
(14, 'Sigco Systems Inc.', 'sigco@outlook.com', '07790123456', 'San Jose', '95134', 'Technology', 'Active', '27 Robinson Court'),
(15, 'IJE Corporation', 'ije@gmail.com', '07774243827', 'Armonk', '10504', 'Technology', 'Active', '18 Hickman Road'),
(16, 'Person Corporation', 'person@yahoo.co.uk', '07711094567', 'Redwood City', '94065', 'Technology', 'Active', '98 Person Driveway'),
(17, 'Sonitus Corporation', 'sonitus@microsoft.com', '07773214557', 'Tokyo', '141-0022', 'Technology', 'Active', '9th Elm Drive'),
(18, 'Valles Technologies Inc.', 'valles@icloud.com', '07736952814', 'Round Rock', '78682', 'Technology', 'Active', '45 Cherry Mews'),
(19, 'Luis Malone', 'contact@luismalone.com', '+33 9 77 40 40 77', 'Paris', '75001', 'Fashion', 'Active', '101 Rue des Champs-Élysées'),
(20, 'Raspberry Group', 'info@raspberry.com', '+44 20 8940 5500', 'London', 'W1K 7QD', 'Fashion', 'Active', '121 Regent St'),
(21, 'Luxus', 'info@luxus.com', '+39 02 5419 8010', 'Milan', '20121', 'Fashion', 'Active', 'Via Sant\'Andrea, 25'),
(22, 'Emile', 'info@emile.com', '+33 1 45 50 45 92', 'Paris', '75001', 'Fashion', 'Active', '61 Rue Cambon'),
(23, 'Grace', 'contact@grace.com', '+34 900 89 20 41', 'Paris', '15142', 'Fashion', 'Active', 'Rue de la Soleil'),
(24, 'Daisy-Chains De Fleurs, Inc.', 'info@daisychainsfleurs.com', '+1 503-671-6453', 'Beaverton', '97005', 'Perfume', 'Active', 'One Bowerman Drive'),
(25, 'Exceptional Inc', 'info@exceptional.com', '+39 055 7592 0000', 'Florence', '50123', 'Fashion', 'Active', 'Via delle Caldaie, 6'),
(26, 'Rainbows LB', 'info@rainbowslb.com', '07994362475', 'Kansas', '91074', 'Fashion', 'Active', '78 Somewhere Over the Rainbow'),
(27, 'G&C', 'info@gc.com', '+46 8 796 55 00', 'Stockholm', '106 38', 'Fashion', 'Active', '64 Owler Avenue'),
(28, 'The Westside Canvas Cor.', 'info@westsidecanvas.com', '+1 510-618-3500', 'Alameda', '94502', 'Fashion', 'Active', '2701 Harbor Bay Parkway'),
(29, 'Meshpics, Inc.', 'info@meshpics.com', '+1 866-579-7172', 'Los Gatos', '95032', 'Online Services', 'Active', '100 Winchester Cir'),
(30, 'PlayGates+', 'info@playgates.com', '+1 888-905-7888', 'London', '91505', 'Online Services', 'Active', '500 S Buena Vista St'),
(31, 'Nile Principal Video', 'info@nileprincipal.com', '+1 888-280-4331', 'Seattle', '98109', 'Online Services', 'Active', '410 Terry Ave N'),
(32, 'Plus ePlayer', 'info@plusplayer.co.uk', '+44 20 8743 8000', 'London', 'W12 7RJ', 'Online Services', 'Active', '75 Blackberry Lane'),
(33, 'Dashique', 'info@dashique.com', '+1 646-589-8850', 'New York', '10011', 'Online Services', 'Active', '90 World Trade Center'),
(34, 'WFH Player', 'info@wfh.ie', '+353 1 208 3111', 'Dublin', 'D02 HK08', 'Online Services', 'Active', 'Donnybrook'),
(35, 'Co&Wall-ie Company', 'info@cowallie.com', '+1 818-560-1000', 'Burbank', '91521', 'Entertainment', 'Active', '500 S. Buena Vista St.'),
(36, 'Primer Faces. Enjoyment Inc.', 'info@primerfaces.com', '+1 818-954-6000', 'Furbank', '91522', 'Entertainment', 'Active', '4374 Primer Blvd.'),
(37, 'Marketspring Animation Studio', 'info@marketspring .com', '+1 213-736-5453', 'Dublin', '937846', 'Entertainment', 'Active', '326 L Garlic Avenue'),
(38, 'Glosstick', 'info@glosstick.com', '+1 844-244-4263', 'New York', '10012', 'Skincare', 'Active', '545 Layette Street'),
(39, 'The Unusual', 'info@unusual.com', '+1 416-366-0700', 'Toronto', 'M5V 3M2', 'Skincare', 'Active', '9648 Yonge Rd'),
(40, 'Lugi Robbins Inc', 'info@lugirobbinsinc.com', '+1 258-457-4343', 'New York', '10022', 'Skincare', 'Active', '62nd Street'),
(41, 'Jet\'aime', 'contact@jetaime.com', '+1 232-546-2947', 'Paris', '10001', 'Skincare', 'Active', '234 Gloria Ave'),
(42, 'Neuroavenge', 'contact@neuroavenge.com', '+1 800-582-4048', 'Los Angeles', '90045', 'Skincare', 'Active', '6462 S 127th Blvd'),
(43, 'Tipsy Tiger', 'info@tipsytiger.com', '+1 281-369-4484', 'Houston', '77002', 'Skincare', 'Active', '434 W 59th St'),
(44, 'La Rochelle', 'info@larochelle.com', '+1 888-577-5226', 'New York', '10016', 'Skincare', 'Active', '23E 69th St'),
(45, 'Tipmo', 'customer.service@tipmo.co.uk', '+44 800 505555', 'London Garden City', 'AL7 1GA', 'Groceries', 'Active', '6 Tipmo House'),
(46, 'Grapefruit\'s Company', 'online@grapefruit\'s.co.uk', '+44 0800 328 1700', 'London', 'EC1N 2HT', 'Groceries', 'Active', '43 Holborn'),
(47, 'Currus Ieiunium', 'info@currus-ieiunium.com', '+49 711 17-0', 'Stuttgart', '70546', 'Automotive', 'Active', 'Currus strasse 233'),
(48, 'Rubrum H.W.', 'info@ruburm.com', '+39 0536 949111', 'Maranello', '41053', 'Automotive', 'Active', 'Via Abetone Inferiore, 4'),
(49, 'McDonnell\'s Automotive', 'info@mcdonnells.com', '+44 1483 261500', 'Woking', 'GU21 5JY', 'Automotive', 'Active', 'McDonnell\'s Technology Centre, WestSoap Road'),
(50, 'Cinis Gratia plc', 'info@cgratia.com', '+44 808 262 9818', 'Warwick', 'CV35 0DB', 'Automotive', 'Active', 'Banbury Road, Gaydon');

-- --------------------------------------------------------

--
-- Table structure for table `p_interviews`
--

CREATE TABLE `p_interviews` (
  `InterviewID` int(11) NOT NULL,
  `ApplicationID` int(11) NOT NULL,
  `InterviewDate` date NOT NULL,
  `InterviewTime` time NOT NULL,
  `InterviewLocation` varchar(150) NOT NULL,
  `InterviewerName` varchar(255) NOT NULL,
  `InterviewerEmail` varchar(100) NOT NULL,
  `InterviewerPhone` varchar(20) NOT NULL,
  `Status` enum('Scheduled','Completed','Cancelled') NOT NULL DEFAULT 'Scheduled',
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_interviews`
--

INSERT INTO `p_interviews` (`InterviewID`, `ApplicationID`, `InterviewDate`, `InterviewTime`, `InterviewLocation`, `InterviewerName`, `InterviewerEmail`, `InterviewerPhone`, `Status`, `Notes`) VALUES
(1, 2, '2024-03-20', '17:00:00', 'Office E', 'Alice White', 'awhite@gmail.com', '07023141883', 'Completed', ''),
(2, 5, '2024-03-17', '12:00:00', 'Office B', 'Peter Pan', 'peterpan@icloud.com', '07727437437', 'Completed', ''),
(3, 6, '2024-03-19', '09:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07727437437', 'Cancelled', ''),
(4, 7, '2024-03-20', '17:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Scheduled', ''),
(5, 9, '2024-03-23', '14:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07727437437', 'Completed', ''),
(6, 10, '2024-03-20', '14:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Cancelled', ''),
(7, 14, '2024-03-19', '14:00:00', 'Office A', 'Peter Pan', 'peterpan@icloud.com', '07023141883', 'Cancelled', ''),
(8, 16, '2024-03-20', '12:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07071063841', 'Completed', ''),
(9, 17, '2024-03-19', '17:00:00', 'Office A', 'Alice White', 'awhite@gmail.com', '07023141883', 'Scheduled', ''),
(10, 18, '2024-03-15', '16:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07974976474', 'Cancelled', ''),
(11, 19, '2024-03-17', '13:00:00', 'Office C', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Cancelled', ''),
(12, 20, '2024-03-15', '14:00:00', 'Office C', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07023141883', 'Completed', ''),
(13, 21, '2024-03-23', '16:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Cancelled', ''),
(14, 22, '2024-03-15', '12:00:00', 'Office C', 'Bailey Fish', 'bfish@outlook.com', '07071063841', 'Completed', ''),
(15, 23, '2024-03-20', '11:00:00', 'Office B', 'Bailey Fish', 'bfish@outlook.com', '07023141883', 'Cancelled', ''),
(16, 24, '2024-03-21', '17:00:00', 'Office A', 'Alice White', 'awhite@gmail.com', '07974976474', 'Scheduled', ''),
(17, 25, '2024-03-19', '13:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Scheduled', ''),
(18, 26, '2024-03-16', '10:00:00', 'Office D', 'Alice White', 'awhite@gmail.com', '07727437437', 'Scheduled', ''),
(19, 27, '2024-03-15', '09:00:00', 'Office E', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Completed', ''),
(20, 28, '2024-03-19', '10:00:00', 'Office D', 'Chris Castle', 'chriscastle@outlook.com', '07974976474', 'Cancelled', ''),
(21, 29, '2024-03-15', '10:00:00', 'Office B', 'Bailey Fish', 'bfish@outlook.com', '07727437437', 'Scheduled', ''),
(22, 30, '2024-03-16', '10:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07902467230', 'Completed', ''),
(23, 31, '2024-03-19', '13:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07727437437', 'Cancelled', ''),
(24, 32, '2024-03-19', '12:00:00', 'Office B', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Completed', ''),
(25, 33, '2024-03-17', '10:00:00', 'Office B', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07727437437', 'Completed', ''),
(26, 34, '2024-03-22', '09:00:00', 'Office D', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Completed', ''),
(27, 35, '2024-03-15', '13:00:00', 'Office D', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Cancelled', ''),
(28, 36, '2024-03-14', '17:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Cancelled', ''),
(29, 39, '2024-03-21', '14:00:00', 'Office A', 'Alice White', 'awhite@gmail.com', '07727437437', 'Scheduled', ''),
(30, 42, '2024-03-24', '16:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Completed', ''),
(31, 43, '2024-03-20', '17:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07974976474', 'Completed', ''),
(32, 44, '2024-03-20', '12:00:00', 'Office C', 'Alice White', 'awhite@gmail.com', '07727437437', 'Cancelled', ''),
(33, 45, '2024-03-21', '15:00:00', 'Office C', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Completed', ''),
(34, 46, '2024-03-16', '15:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Cancelled', ''),
(35, 48, '2024-03-25', '16:00:00', 'Office C', 'Alice White', 'awhite@gmail.com', '07902467230', 'Completed', ''),
(36, 49, '2024-03-23', '14:00:00', 'Office C', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Scheduled', ''),
(37, 50, '2024-03-21', '09:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07071063841', 'Scheduled', ''),
(38, 52, '2024-03-15', '11:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Completed', ''),
(39, 53, '2024-03-25', '16:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Scheduled', ''),
(40, 54, '2024-03-14', '10:00:00', 'Office E', 'Alice White', 'awhite@gmail.com', '07023141883', 'Cancelled', ''),
(41, 55, '2024-03-16', '17:00:00', 'Office B', 'Peter Pan', 'peterpan@icloud.com', '07071063841', 'Cancelled', ''),
(42, 57, '2024-03-22', '11:00:00', 'Office A', 'Peter Pan', 'peterpan@icloud.com', '07974976474', 'Completed', ''),
(43, 58, '2024-03-22', '12:00:00', 'Office C', 'Bailey Fish', 'bfish@outlook.com', '07727437437', 'Scheduled', ''),
(44, 59, '2024-03-20', '11:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Scheduled', ''),
(45, 60, '2024-03-15', '10:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Cancelled', ''),
(46, 61, '2024-03-17', '17:00:00', 'Office D', 'Chris Castle', 'chriscastle@outlook.com', '07974976474', 'Cancelled', ''),
(47, 62, '2024-03-18', '11:00:00', 'Office B', 'Bailey Fish', 'bfish@outlook.com', '07974976474', 'Completed', ''),
(48, 63, '2024-03-21', '15:00:00', 'Office B', 'Bailey Fish', 'bfish@outlook.com', '07727437437', 'Completed', ''),
(49, 65, '2024-03-22', '11:00:00', 'Office E', 'Bailey Fish', 'bfish@outlook.com', '07902467230', 'Cancelled', ''),
(50, 66, '2024-03-17', '14:00:00', 'Office C', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Completed', ''),
(51, 67, '2024-03-19', '14:00:00', 'Office B', 'Peter Pan', 'peterpan@icloud.com', '07071063841', 'Scheduled', ''),
(52, 68, '2024-03-24', '12:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07902467230', 'Completed', ''),
(53, 69, '2024-03-20', '13:00:00', 'Office B', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07902467230', 'Scheduled', ''),
(54, 71, '2024-03-15', '13:00:00', 'Office C', 'Chris Castle', 'chriscastle@outlook.com', '07974976474', 'Scheduled', ''),
(55, 72, '2024-03-21', '14:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Cancelled', ''),
(56, 73, '2024-03-16', '13:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07727437437', 'Cancelled', ''),
(57, 74, '2024-03-22', '10:00:00', 'Office B', 'Peter Pan', 'peterpan@icloud.com', '07727437437', 'Completed', ''),
(58, 76, '2024-03-14', '13:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Cancelled', ''),
(59, 77, '2024-03-15', '14:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07902467230', 'Completed', ''),
(60, 78, '2024-03-20', '12:00:00', 'Office B', 'Peter Pan', 'peterpan@icloud.com', '07023141883', 'Completed', ''),
(61, 79, '2024-03-15', '16:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07727437437', 'Cancelled', ''),
(62, 80, '2024-03-16', '17:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07727437437', 'Cancelled', ''),
(63, 81, '2024-03-22', '11:00:00', 'Office C', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07902467230', 'Scheduled', ''),
(64, 83, '2024-03-16', '12:00:00', 'Office C', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Cancelled', ''),
(65, 86, '2024-03-19', '14:00:00', 'Office C', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07902467230', 'Cancelled', ''),
(66, 87, '2024-03-22', '11:00:00', 'Office B', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07727437437', 'Completed', ''),
(67, 89, '2024-03-17', '11:00:00', 'Office A', 'Peter Pan', 'peterpan@icloud.com', '07727437437', 'Cancelled', ''),
(68, 90, '2024-03-18', '16:00:00', 'Office D', 'Bailey Fish', 'bfish@outlook.com', '07023141883', 'Completed', ''),
(69, 92, '2024-03-21', '11:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Scheduled', ''),
(70, 93, '2024-03-14', '09:00:00', 'Office E', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Cancelled', ''),
(71, 94, '2024-03-17', '09:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Cancelled', ''),
(72, 95, '2024-03-22', '14:00:00', 'Office E', 'Alice White', 'awhite@gmail.com', '07071063841', 'Cancelled', ''),
(73, 96, '2024-03-22', '10:00:00', 'Office C', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Completed', ''),
(74, 97, '2024-03-18', '14:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07974976474', 'Completed', ''),
(75, 98, '2024-03-18', '11:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Completed', ''),
(76, 99, '2024-03-15', '10:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Scheduled', ''),
(77, 102, '2024-03-22', '17:00:00', 'Office C', 'Alice White', 'awhite@gmail.com', '07902467230', 'Cancelled', ''),
(78, 104, '2024-03-17', '16:00:00', 'Office B', 'Bailey Fish', 'bfish@outlook.com', '07974976474', 'Scheduled', ''),
(79, 105, '2024-03-17', '17:00:00', 'Office E', 'Bailey Fish', 'bfish@outlook.com', '07727437437', 'Cancelled', ''),
(80, 106, '2024-03-16', '12:00:00', 'Office D', 'Alice White', 'awhite@gmail.com', '07071063841', 'Cancelled', ''),
(81, 107, '2024-03-23', '14:00:00', 'Office A', 'Peter Pan', 'peterpan@icloud.com', '07974976474', 'Cancelled', ''),
(82, 108, '2024-03-22', '15:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Cancelled', ''),
(83, 109, '2024-03-20', '11:00:00', 'Office D', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Scheduled', ''),
(84, 112, '2024-03-19', '10:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Completed', ''),
(85, 113, '2024-03-17', '13:00:00', 'Office D', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Completed', ''),
(86, 114, '2024-03-15', '13:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07974976474', 'Cancelled', ''),
(87, 115, '2024-03-19', '12:00:00', 'Office D', 'Peter Pan', 'peterpan@icloud.com', '07071063841', 'Scheduled', ''),
(88, 117, '2024-03-17', '14:00:00', 'Office D', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Completed', ''),
(89, 119, '2024-03-15', '17:00:00', 'Office E', 'Alice White', 'awhite@gmail.com', '07071063841', 'Completed', ''),
(90, 120, '2024-03-16', '15:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07023141883', 'Cancelled', ''),
(91, 121, '2024-03-15', '09:00:00', 'Office E', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Completed', ''),
(92, 123, '2024-03-13', '14:00:00', 'Office E', 'Peter Pan', 'peterpan@icloud.com', '07071063841', 'Completed', ''),
(93, 124, '2024-03-22', '11:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Cancelled', ''),
(94, 125, '2024-03-25', '11:00:00', 'Office A', 'Bailey Fish', 'bfish@outlook.com', '07023141883', 'Completed', ''),
(95, 126, '2024-03-16', '14:00:00', 'Office A', 'Bailey Fish', 'bfish@outlook.com', '07902467230', 'Cancelled', ''),
(96, 127, '2024-03-21', '17:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Completed', ''),
(97, 128, '2024-03-20', '14:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Cancelled', ''),
(98, 129, '2024-03-17', '11:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07727437437', 'Completed', ''),
(99, 130, '2024-03-19', '11:00:00', 'Office B', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Scheduled', ''),
(100, 132, '2024-03-19', '13:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07071063841', 'Scheduled', ''),
(101, 133, '2024-03-22', '11:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07974976474', 'Completed', ''),
(102, 134, '2024-03-16', '09:00:00', 'Office D', 'Alice White', 'awhite@gmail.com', '07974976474', 'Scheduled', ''),
(103, 135, '2024-03-22', '12:00:00', 'Office C', 'Alice White', 'awhite@gmail.com', '07023141883', 'Scheduled', ''),
(104, 136, '2024-03-14', '12:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Scheduled', ''),
(105, 137, '2024-03-16', '11:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07023141883', 'Scheduled', ''),
(106, 138, '2024-03-22', '10:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Completed', ''),
(107, 139, '2024-03-19', '15:00:00', 'Office A', 'Peter Pan', 'peterpan@icloud.com', '07023141883', 'Scheduled', ''),
(108, 140, '2024-03-22', '17:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07023141883', 'Completed', ''),
(109, 141, '2024-03-18', '11:00:00', 'Office A', 'Peter Pan', 'peterpan@icloud.com', '07727437437', 'Completed', ''),
(110, 142, '2024-03-25', '17:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Cancelled', ''),
(111, 143, '2024-03-21', '10:00:00', 'Office D', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07023141883', 'Completed', ''),
(112, 144, '2024-03-20', '11:00:00', 'Office D', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Completed', ''),
(113, 145, '2024-03-17', '17:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07974976474', 'Scheduled', ''),
(114, 146, '2024-03-21', '17:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Scheduled', ''),
(115, 147, '2024-03-21', '13:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07023141883', 'Completed', ''),
(116, 148, '2024-03-22', '10:00:00', 'Office D', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Scheduled', ''),
(117, 150, '2024-03-17', '15:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Scheduled', ''),
(118, 151, '2024-03-18', '13:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07727437437', 'Cancelled', ''),
(119, 152, '2024-03-16', '13:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Scheduled', ''),
(120, 156, '2024-03-20', '16:00:00', 'Office D', 'Alice White', 'awhite@gmail.com', '07023141883', 'Cancelled', ''),
(121, 157, '2024-03-14', '14:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07023141883', 'Scheduled', ''),
(122, 158, '2024-03-19', '13:00:00', 'Office B', 'Bailey Fish', 'bfish@outlook.com', '07974976474', 'Completed', ''),
(123, 160, '2024-03-18', '10:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Cancelled', ''),
(124, 161, '2024-03-21', '13:00:00', 'Office D', 'Bailey Fish', 'bfish@outlook.com', '07902467230', 'Completed', ''),
(125, 162, '2024-03-24', '16:00:00', 'Office B', 'Bailey Fish', 'bfish@outlook.com', '07023141883', 'Scheduled', ''),
(126, 163, '2024-03-23', '09:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07727437437', 'Cancelled', ''),
(127, 164, '2024-03-19', '14:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07974976474', 'Scheduled', ''),
(128, 165, '2024-03-18', '17:00:00', 'Office C', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Scheduled', ''),
(129, 166, '2024-03-21', '16:00:00', 'Office C', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07023141883', 'Cancelled', ''),
(130, 167, '2024-03-20', '17:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07023141883', 'Scheduled', ''),
(131, 168, '2024-03-19', '14:00:00', 'Office D', 'Alice White', 'awhite@gmail.com', '07974976474', 'Scheduled', ''),
(132, 169, '2024-03-22', '17:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Completed', ''),
(133, 170, '2024-03-20', '17:00:00', 'Office E', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Completed', ''),
(134, 171, '2024-03-17', '13:00:00', 'Office A', 'Alice White', 'awhite@gmail.com', '07023141883', 'Cancelled', ''),
(135, 173, '2024-03-17', '13:00:00', 'Office C', 'Alice White', 'awhite@gmail.com', '07727437437', 'Completed', ''),
(136, 175, '2024-03-18', '09:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Cancelled', ''),
(137, 176, '2024-03-19', '11:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07023141883', 'Scheduled', ''),
(138, 177, '2024-03-21', '17:00:00', 'Office C', 'Bailey Fish', 'bfish@outlook.com', '07071063841', 'Completed', ''),
(139, 178, '2024-03-17', '14:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07902467230', 'Scheduled', ''),
(140, 181, '2024-03-18', '17:00:00', 'Office A', 'Peter Pan', 'peterpan@icloud.com', '07071063841', 'Scheduled', ''),
(141, 182, '2024-03-15', '17:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07071063841', 'Cancelled', ''),
(142, 184, '2024-03-23', '13:00:00', 'Office E', 'Peter Pan', 'peterpan@icloud.com', '07023141883', 'Completed', ''),
(143, 186, '2024-03-24', '11:00:00', 'Office D', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07902467230', 'Completed', ''),
(144, 187, '2024-03-16', '13:00:00', 'Office D', 'Chris Castle', 'chriscastle@outlook.com', '07974976474', 'Scheduled', ''),
(145, 188, '2024-03-25', '16:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07902467230', 'Cancelled', ''),
(146, 189, '2024-03-16', '11:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07974976474', 'Cancelled', ''),
(147, 190, '2024-03-18', '16:00:00', 'Office D', 'Peter Pan', 'peterpan@icloud.com', '07023141883', 'Scheduled', ''),
(148, 192, '2024-03-18', '16:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07727437437', 'Completed', ''),
(149, 193, '2024-03-22', '13:00:00', 'Office B', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Scheduled', ''),
(150, 194, '2024-03-22', '10:00:00', 'Office A', 'Alice White', 'awhite@gmail.com', '07974976474', 'Cancelled', ''),
(151, 195, '2024-03-21', '17:00:00', 'Office E', 'Alice White', 'awhite@gmail.com', '07902467230', 'Completed', ''),
(152, 196, '2024-03-13', '10:00:00', 'Office A', 'Peter Pan', 'peterpan@icloud.com', '07974976474', 'Cancelled', ''),
(153, 197, '2024-03-21', '11:00:00', 'Office A', 'Bailey Fish', 'bfish@outlook.com', '07071063841', 'Cancelled', ''),
(154, 199, '2024-03-18', '13:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Cancelled', ''),
(155, 201, '2024-03-16', '16:00:00', 'Office B', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Scheduled', ''),
(156, 202, '2024-03-14', '16:00:00', 'Office B', 'Alice White', 'awhite@gmail.com', '07902467230', 'Scheduled', ''),
(157, 203, '2024-03-20', '14:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07727437437', 'Cancelled', ''),
(158, 204, '2024-03-20', '14:00:00', 'Office E', 'Peter Pan', 'peterpan@icloud.com', '07727437437', 'Completed', ''),
(159, 205, '2024-03-22', '11:00:00', 'Office E', 'Peter Pan', 'peterpan@icloud.com', '07071063841', 'Scheduled', ''),
(160, 206, '2024-03-23', '11:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07902467230', 'Scheduled', ''),
(161, 207, '2024-03-22', '16:00:00', 'Office B', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Completed', ''),
(162, 209, '2024-03-17', '14:00:00', 'Office A', 'Chris Castle', 'chriscastle@outlook.com', '07023141883', 'Scheduled', ''),
(163, 210, '2024-03-14', '14:00:00', 'Office C', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07023141883', 'Completed', ''),
(164, 211, '2024-03-17', '12:00:00', 'Office E', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Completed', ''),
(165, 212, '2024-03-22', '12:00:00', 'Office D', 'Peter Pan', 'peterpan@icloud.com', '07727437437', 'Cancelled', ''),
(166, 213, '2024-03-22', '14:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07071063841', 'Completed', ''),
(167, 214, '2024-03-13', '11:00:00', 'Office C', 'Peter Pan', 'peterpan@icloud.com', '07071063841', 'Completed', ''),
(168, 215, '2024-03-24', '15:00:00', 'Office D', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Scheduled', ''),
(169, 216, '2024-03-19', '17:00:00', 'Office D', 'Peter Pan', 'peterpan@icloud.com', '07902467230', 'Scheduled', ''),
(170, 218, '2024-03-16', '09:00:00', 'Office D', 'Bailey Fish', 'bfish@outlook.com', '07023141883', 'Cancelled', ''),
(171, 220, '2024-03-21', '14:00:00', 'Office E', 'Chris Castle', 'chriscastle@outlook.com', '07071063841', 'Cancelled', ''),
(172, 221, '2024-03-19', '09:00:00', 'Office C', 'Alice White', 'awhite@gmail.com', '07727437437', 'Completed', ''),
(173, 222, '2024-03-23', '15:00:00', 'Office B', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07974976474', 'Cancelled', ''),
(174, 223, '2024-03-15', '15:00:00', 'Office A', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07727437437', 'Cancelled', ''),
(175, 225, '2024-03-22', '14:00:00', 'Office B', 'Minnie Rose', 'minnierose@yahoo.co.uk', '07727437437', 'Cancelled', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `p_interviewscheduleview`
-- (See below for the actual view)
--
CREATE TABLE `p_interviewscheduleview` (
`InterviewID` int(11)
,`InterviewDate` date
,`InterviewTime` time
,`InterviewLocation` varchar(150)
,`CandidateFirstName` varchar(255)
,`CandidateLastName` varchar(255)
,`JobTitle` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `p_jobpostings`
--

CREATE TABLE `p_jobpostings` (
  `JobID` int(11) NOT NULL,
  `EmployerID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `PostedDate` date NOT NULL DEFAULT curdate(),
  `Requirements` text DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_jobpostings`
--

INSERT INTO `p_jobpostings` (`JobID`, `EmployerID`, `Title`, `Description`, `Category`, `Location`, `Salary`, `PostedDate`, `Requirements`, `Status`) VALUES
(1, 1, 'Data Scientist', 'Analyse data and develop machine learning models', 'Technology', 'London', 80000.00, '2024-03-22', 'Master’s degree in Data Science or related field, proficiency in Python and machine learning libraries is required additionally.', 'Active'),
(2, 2, 'Management Consultant', 'Provide strategic advice to clients', 'Consulting', 'New York', 90000.00, '2024-03-26', 'Bachelor’s degree in Business Administration or related field, Strong analytical and problem-solving skills', 'Active'),
(3, 3, 'Industrial Designer', 'Design physical products and prototypes', 'Design', 'Los Angeles', 85000.00, '2024-03-02', 'Bachelor’s degree in Industrial Design or related field, Proficiency in CAD software', 'Active'),
(4, 4, 'Hardware Engineer', 'Design and develop hardware components', 'Technology', 'Belfast', 75000.00, '2024-03-23', 'Bachelor’s degree in Electrical Engineering or related field, Experience with hardware design tools', 'Active'),
(5, 5, 'Financial Advisor', 'Provide financial planning and investment advice', 'Finance', 'Derry', 60000.00, '2024-03-18', 'Bachelor’s degree in Finance or related field, Relevant certifications such as CFP or CFA', 'Active'),
(6, 6, 'Digital Product Designer', 'Designs digital products such as websites, apps and digital platforms using the client\'s concept.', 'Design', 'Seattle', 95000.00, '2024-03-19', 'Bachelor’s degree in Graphic Design or related field. Knowledge of software such as Adobe, strong problem solving skills and creativity skills.', 'Active'),
(7, 7, 'Network Security Engineer', 'Implement and maintain network security solutions', 'Technology', 'London', 85000.00, '2024-03-08', 'Bachelor’s degree in Computer Science or related field, Certification in network security (e.g., CISSP)', 'Active'),
(8, 8, 'Systems Architect', 'Design and oversee the implementation of IT systems', 'Technology', 'Suwon', 100000.00, '2024-03-15', 'Bachelor’s degree in Information Technology or related field, Experience with system architecture frameworks', 'Active'),
(9, 9, 'Operations Manager', 'Overseeing day to day operations of Nile.com Inc; including order fulfillment,  inventory management, shipping logistics and providing customers with a pleasant shopping experience.', 'Technology', 'Seattle', 90000.00, '2024-03-19', 'Strong organisational and multitasking skills, familiarity with warehouse database systems and strong customer service skills.', 'Active'),
(10, 10, 'Technical Writer', 'Create documentation for software and technical processes', 'Technology', 'Sherman Oaks', 80000.00, '2024-03-21', 'Bachelor’s degree in English, Technical Writing, or related field, Experience with technical writing tools', 'Active'),
(11, 11, 'Product Owner', 'Define and prioritize product features', 'Technology', 'Menlo Park', 110000.00, '2024-03-13', 'Bachelor’s degree in Computer Science or related field, Experience in product management or software development', 'Active'),
(12, 12, 'Cloud Engineer', 'Design and implement cloud infrastructure solutions', 'Technology', 'Mountain View', 120000.00, '2024-03-03', 'Bachelor’s degree in Computer Science or related field, Certification in cloud platforms (e.g., AWS, Azure)', 'Active'),
(13, 13, 'Penetration Tester', 'Identify and exploit security vulnerabilities in systems using advanced software.', 'Technology', 'Santa Clara', 95000.00, '2024-03-08', 'Bachelor’s degree in Computer Science or related field.\r\nMUST have at least one certification in ethical hacking (e.g. CEH)', 'Active'),
(14, 14, 'IT Support Specialist', 'Provide technical support within the company with all sorts of issues; from hardware to software.', 'Technology', 'San Jose', 100000.00, '2024-03-29', 'Bachelor’s degree in Information Technology or related field.\r\nStrong troubleshooting skills are required as well as strong customer skills and experience in IT support is preferred.', 'Active'),
(15, 15, 'UX Researcher', 'Conduct research to understand user needs and behaviors with technology and what they expect to get out of it.', 'Technology', 'Armonk', 95000.00, '2024-03-26', 'Bachelor’s degree in Computer Science, Psychology or another related field.\r\nExcellent analytical skills, problem skills and communication are required. Previous experience is required too.', 'Active'),
(16, 16, 'Database Developer', 'Design and implement database solutions and maintain the database.', 'Technology', 'Redwood City', 90000.00, '2024-03-12', 'Bachelor’s degree in Computer Science or related field. Be very confident in the usage of SQL and comfortable with database design.', 'Active'),
(17, 17, 'IT Security Analyst', 'Monitor and analyse security threats and incidents. Responding to potential threats and ensure the security is up to industry standard.', 'Technology', 'Tokyo', 95000.00, '2024-03-15', 'Bachelor’s degree in Computer Science or related field. Experience with security tools and protocols. Strong knowledge in cybersecurity and the principals required with it. ', 'Active'),
(18, 18, 'Systems Engineer', 'Design, maintaining and implementing IT systems and infrastructure across the company.\r\n', 'Technology', 'Round Rock', 90000.00, '2024-03-05', 'Bachelor’s degree in Information Technology or related field. Experience with system administration, also proven knowledge with cloud computing or systems architecture principles', 'Active'),
(19, 19, 'Fashion Designer', 'Create designs for clothing and accessories based on current trends, develop new concepts and provide a selection of ideas.', 'Fashion', 'Paris', 80000.00, '2024-03-11', 'Bachelor’s degree in Fashion Design or related field.\r\nExperience is needed and a strong portfolio is required to apply.', 'Active'),
(20, 20, 'Retail Sales Associate', 'Providing exceptional customer service, handling other sales transactions and having a positive attitude is our ideal candidate.', 'Fashion', 'London', 25000.00, '2024-03-10', 'No previous experience is needed.\r\nEnglish and Maths GCSE (or equivalent) is required.', 'Active'),
(21, 21, 'Fashion Buyer', 'Select and purchase merchandise for retail stores to meet customer demand and drive sales. Being able to derive what are the trends and most popular items is crucial to this job.', 'Fashion', 'Milan', 90000.00, '2024-03-14', 'Bachelor’s degree in Fashion Merchandising or related field. Knowledge of fashion trends and market analysis is crucial.', 'Active'),
(22, 22, 'Fashion Merchandiser', 'Plan and coordinate product displays and promotions with merchandise strategies to drive sales and profit.', 'Fashion', 'Paris', 70000.00, '2024-03-09', 'Bachelor’s degree in Fashion Merchandising or related field. Strong visual merchandising skills, creativity skills and planning skills are essential for a good candidate', 'Active'),
(23, 23, 'Fashion Stylist', 'Provide fashion advice and coordinate outfits for clients and brands with different elements of clothing/accessories.', 'Fashion', 'Paris', 60000.00, '2024-03-04', 'Certificate or diploma in Fashion Styling or related field. Keen sense of fashion style and an awareness of trends are essential to this job.', 'Active'),
(24, 24, 'Perfumer', 'Design and develop unique fragrances to curate to a targeted group such as women, men or children.', 'Fashion', 'Beaverton', 80000.00, '2024-03-23', 'Bachelor’s degree in Chemistry or related field. Keen sense of smell and a love for different types of perfume, using different ingredients.', 'Active'),
(25, 25, 'Luxury Brand Manager', 'Oversee marketing and branding initiatives for luxury products by using the brands identity and overall enhancing the customer experience', 'Fashion', 'Florence', 100000.00, '2024-03-11', 'Bachelor’s degree in Marketing or related field. Experience in luxury brand management with a deep understanding of the market\'s inner workings and a genuine love for it.', 'Active'),
(26, 26, 'Retail Store Manager', 'Manage day-to-day operations of retail stores by providing exceptional customer service', 'Fashion', 'Kansas', 75000.00, '2024-03-17', 'Bachelor’s degree in Business Administration or related field is preferred but not required.', 'Active'),
(27, 27, 'Graphic Designer', 'Create visual concepts and designs for various projects using collaboration with the design team to translate concepts and trends into artwork.', 'Fashion', 'Stockholm', 60000.00, '2024-03-20', 'Bachelor’s degree in Graphic Design or related field, have a high understanding of using editing software such as Photoshop.', 'Active'),
(28, 28, 'Fashion Photographer', 'Capture images of fashion products and models in unique pieces curated by Westside Canvas.', 'Fashion', 'Alameda', 70000.00, '2024-03-16', 'Bachelor’s degree in Photography or related field is preferred.\r\nTeam working skills are essential and a strong portfolio is preferred', 'Active'),
(29, 29, 'Director', 'Overseeing various teams from producers, talent, writers and fashion elements.\r\nMust have strong leadership qualities within and good team-working skills.', 'Fashion', 'Los Gatos', 80000.00, '2024-03-21', 'Masters’s degree in Film or Media Production.\r\nExcellent leadership qualities, ability to form teams and good project management skills', 'Active'),
(30, 30, 'Software Engineer', 'Develop and maintain software applications to meet the needs of the customers. Must be able to work collaboratively with other software engineers.', 'Technology', 'London', 70000.00, '2024-03-24', 'Bachelor’s degree in Software Engineering or related field, 5+ years of experience in software development.', 'Active'),
(31, 31, 'Customer Service Rep', 'Assisting customers with their complaints and questions using various means such as social media, email or over the phone.', 'Online Services', 'New York', 90000.00, '2024-03-25', 'Needs a willingness to help and work flexible hours. \r\nAlso needs a lot of empathy and patience as they are dealing with emotions with customers.', 'Active'),
(32, 32, 'Assistant to Directors', 'Managing calendars, scheduling meetings and preparing reports and other administrative tasks.', 'Entertainment', 'Los Angeles', 85000.00, '2024-03-21', 'Must have good organisational skills, attention to detail and very good communicative skills.', 'Active'),
(33, 33, 'Music Editor', 'Managing music content, building playlists curated by the user\'s listening habits.', 'Technology', 'Belfast', 60000.00, '2024-03-30', 'Passion to music, curatorial skills, creativity and attention to detail are vital skills if applying for this job.', 'Active'),
(34, 34, 'Camera Operator', 'Capturing high quality, visual content for broadcasts, must remain calm under pressure.', 'Entertainment', 'Dublin', 50000.00, '2024-03-23', 'Being able to collaborate with various team members is essential and also being able to operate a professional camera ', 'Active'),
(35, 35, 'User Experience Designer', 'Design intuitive and engaging user experiences', 'Design', 'Seattle', 95000.00, '2024-03-27', 'Bachelor’s degree in Design or related field, Proficiency in UX design tools such as Sketch or Figma', 'Active'),
(36, 36, 'Network Administrator', 'Manage and troubleshoot network infrastructure', 'Technology', 'London', 75000.00, '2024-03-04', 'Bachelor’s degree in Information Technology or related field, Experience with network administration tasks', 'Active'),
(37, 37, 'Product Manager', 'Manage product development from ideation to launch', 'Technology', 'Suwon', 110000.00, '2024-03-01', 'Bachelor’s degree in Business, Computer Science, or related field, Experience in product management or software development', 'Active'),
(38, 38, 'Business Intelligence Developer', 'Design and develop BI solutions for data analysis', 'Technology', 'Seattle', 100000.00, '2024-03-24', 'Bachelor’s degree in Computer Science, Information Systems, or related field, Proficiency in BI tools (e.g., Tableau, Power BI)', 'Active'),
(39, 39, 'Research and Development Scientist', 'Responsible for formulating and testing products, conducting new research on different ingredients and formulations.', 'Technology', 'Sherman Oaks', 80000.00, '2024-03-21', 'Bachelor’s degree in Biochemistry or related field. Understanding of lab techniques, product testing and knowledge of skincare ingredients and the effect that can have on your skin.', 'Active'),
(40, 40, 'Web Developer', 'Develop and maintain web applications', 'Technology', 'Menlo Park', 90000.00, '2024-03-04', 'Bachelor’s degree in Computer Science or related field, Proficiency in web development technologies (e.g., HTML, CSS, JavaScript)', 'Active'),
(41, 11, 'Cybersecurity Specialist', 'Provides cybersecurity advice on how to be more aware of security breaches to clients when they want to know.', 'Technology', 'Mountain View', 120000.00, '2024-03-16', 'Bachelor’s degree in Cybersecurity, Computer Science, or related field. Experience with security tools and protocols', 'Active'),
(42, 42, 'Systems Analyst', 'Analyze and optimize IT systems and processes', 'Technology', 'Santa Clara', 95000.00, '2024-03-06', 'Bachelor’s degree in Information Technology or related field, Experience with system analysis and design methodologies', 'Active'),
(43, 43, 'Skincare Consultant', 'Provide skincare consulting services to customers', 'Skincare', 'San Jose', 100000.00, '2024-03-15', 'Bachelor’s degree in Cosmetology, Dermatology, or related field, experience in working within a consulting department of a skincare brand.', 'Active'),
(44, 44, 'Esthetician', 'Provides advice to clients with facials, chemical peels to improve a client\'s health and appearance', 'Skincare', 'Armonk', 90000.00, '2024-03-22', 'Complete Level 2 Facial and Skin Care course, complete level 3 facial electrotherapy course, complete a level 4 in laser hair removal and complete a level 4 in chemical peel\r\n', 'Active'),
(45, 45, 'Tipmo Database Administrator', 'Be able to maintain stock levels using a database and work as a team. Additionally be a positive influence in and out of the work environment', 'Groceries', 'Redwood City', 95000.00, '2024-03-06', 'No previous experience required.\r\nHigh level of positivity, and want to help people.', 'Active'),
(46, 46, 'Business Systems Analyst', 'Analyse business processes and design IT solutions for increase/decrease in purchasing made by customers.', 'Groceries', 'Tokyo', 90000.00, '2024-03-23', 'Bachelor’s degree in Information Systems, Business Administration, or related field, Experience with business analysis tools and methodologies', 'Active'),
(47, 47, 'DevOps Engineer', 'Applicates are required for the ability to automate and being able to streamline software development processes.', 'Automotive', 'Round Rock', 100000.00, '2024-03-05', 'Bachelor’s degree in Engineering, or related field, experience with DevOps tools and practices', 'Active'),
(48, 48, 'Engineer ', 'Design and develop high performance automotive systems, components and technology', 'Automotive', 'Paris', 110000.00, '2024-03-16', 'Bachelor’s degree in Information Technology, Project Management, or related field, PMP certification is a plus', 'Active'),
(49, 49, 'Systems Administrator', 'Manage and maintain IT infrastructure systems and networks to support computer engineering, manufacturing and operations from within the business.', 'Automotive', 'San Francisco', 95000.00, '2024-03-02', 'Bachelor’s degree in Information Technology, Computer Science, or related field, experience with system administration tasks, additionally team collaboration skills are valuable', 'Active'),
(50, 50, 'Digital Solutions Manager', 'Leads the development and implementation of digital solutions and technologies, focus is on enhancing customer experiences across various departments.', 'Automotive', 'Dublin', 90000.00, '2024-03-24', 'Bachelor’s degree in Computer Science or related field, Proficiency in both front-end and back-end technologies', 'Active'),
(51, 12, 'UX/UI Designer', 'Design user-friendly interfaces for software applications, involves long hours and being able to collaborate effectively within a team and individually.', 'Technology', 'Seattle', 90000.00, '2024-03-21', 'Bachelor’s degree in Design or related field, the applicant needs to have a proficiency in UX/UI design tools,', 'Active'),
(52, 22, 'Fashion Buyer', 'Selects and purchases items from various brands suited to top end clients based on trends, preferences whilst maintaining a healthy relationship with said customer ', 'Fashion', 'Paris', 95000.00, '2024-03-01', 'Bachelor’s degree in Marketing or related field, experience in luxury retail or in sales', 'Active'),
(53, 35, 'Production Assistant ', 'Assists in execution of various aspects including film, theatre, events by supporting the team and facilitating communication', 'Entertainment', 'Milan', 85000.00, '2024-03-04', 'Bachelor’s degree in Film production or related field, able to manage multiple tasks at the same time, excellent communication skills and strongly recommended a familiarity of production software', 'Active'),
(54, 5, 'Financial Analyst', 'Analyse financial data and provide insights to support decision-making, must be able to work in a team based environment, to be able to budget the companies money and acquire clients', 'Technology', 'Belfast', 60000.00, '2024-03-17', 'Bachelor’s degree in Finance, Accounting, or related field, strong analytical skills are required. Being able to use software and tools like Excel very confidently.', 'Active'),
(55, 18, 'Network Engineer', 'Design and implement network infrastructure solutions to ensure connectivity, availability and security in the organisation', 'Technology', 'San Francisco', 100000.00, '2024-03-11', 'Bachelor’s degree in Information Technology or related field, cisco certification preferred (CNNA). Strong knowledge of networking protocols and technologies.', 'Active'),
(56, 29, 'Content Marketing Manager', 'Develops and creates marketing campaigns and strategies to promote original content and utilising social media, digital advertising and partnerships with other brands.', 'Fashion', 'Los Angeles', 70000.00, '2024-03-03', 'Bachelor’s degree in Marketing, Journalism, or related field, strong project management skills, experience is preferred but not requried', 'Active'),
(57, 41, 'Beauty Therapist', 'Provides various cosmetic treatments to enhance clients well being', 'Skincare', 'Mountain View', 120000.00, '2024-03-14', 'Master’s degree in Cosmetology.\r\nProficiency in knowing what the clients need/require for their skin', 'Active'),
(58, 50, 'Marketing Coordinator', 'Assist in developing and implementing marketing campaigns by utilising social media and other outlets to get the brand out there', 'Fashion', 'Dublin', 60000.00, '2024-03-29', 'Bachelor’s degree in Marketing, Communications, or related field, strong organisational skills are required as multiple projects need to be maintained at the same time', 'Active'),
(59, 9, 'E-commerce Manager', 'Manage online sales channels and optimize digital marketing efforts in order to persuade clients and customers that they should buy the products', 'E-commerce', 'Seattle', 95000.00, '2024-03-09', 'Bachelor’s degree in Marketing, Business Administration, or related field.\r\nExperience in e-commerce management is required, also experience in SQL is preferred.', 'Active'),
(60, 31, 'Business Analyst', 'Gather and analyse business requirements to improve customer sales and views on the company.', 'Consulting', 'New York', 85000.00, '2024-03-20', 'Bachelor’s degree in Business Administration, Economics, or related field, strong analytical skills are required as well as problem solving skills which are preferred.', 'Active'),
(61, 49, 'Database Developer', 'Design, develop, and maintain database systems with regards to parts that need to be bought for the vehicles.  ', 'Automotive', 'San Francisco', 100000.00, '2024-03-09', 'Bachelor’s degree in Computer Science, Information Systems, or related field. Experience with database development tools such as SQL is required.', 'Active'),
(62, 19, 'Visual Merchandiser', 'Create visually appealing displays to showcase products, need to have experience with luxury brands.', 'Fashion', 'Stockholm', 65000.00, '2024-03-17', 'Bachelor’s degree in Visual Merchandising, Design, or related field, strong creative skills. Need to have luxury brand experience.', 'Active'),
(63, 36, 'Software Tester', 'Test software applications to ensure quality and reliability for the clients enjoyability and how smooth it needs to be.', 'Entertainment', 'London', 75000.00, '2024-03-27', 'Bachelor’s degree in Computer Science or related field, experience in software testing methodologies.', 'Active'),
(64, 8, 'Marketing Specialist', 'Execute marketing campaigns and analyse performance metrics for how the company is performing', 'Marketing', 'Suwon', 85000.00, '2024-03-21', 'Bachelor’s degree in Marketing, Communications, or related field. Experience in digital marketing is required', 'Active'),
(65, 45, 'Business Analyst', 'Analyse and optimize the stock systems and processes with in relation to how the business is performing', 'Groceries', 'Redwood City', 90000.00, '2024-03-23', 'Bachelor’s degree in Information Technology or related field, strong analytical skills are required, and problem-solving skills are preferred.', 'Active'),
(66, 27, 'Fashion Consultant', 'Provide personalized fashion advice to clients', 'Fashion', 'Herzogenaurach', 70000.00, '2024-03-23', 'Bachelor’s degree in Fashion Design, Merchandising, or related field, Strong knowledge of fashion trends', 'Active'),
(67, 47, 'Cybersecurity Analyst', 'Monitor and analyze security threats to protect systems', 'Technology', 'Round Rock', 110000.00, '2024-03-11', 'Bachelor’s degree in Cybersecurity, Computer Science, or related field, Experience in cybersecurity analysis', 'Active'),
(68, 3, 'Product Designer', 'Design innovative products and prototypes', 'Design', 'Los Angeles', 85000.00, '2024-03-19', 'Bachelor’s degree in Product Design, Industrial Design, or related field, Proficiency in design software', 'Active'),
(69, 24, 'Social Media Manager', 'Develop and implement social media strategies for brands', 'Marketing', 'Beaverton', 80000.00, '2024-03-31', 'Bachelor’s degree in Marketing, Communications, or related field, Experience in social media management', 'Active'),
(70, 39, 'Skincare Specialist', 'Provide skincare consultations and treatments', 'Skincare', 'Toronto', 60000.00, '2024-03-03', 'Esthetician license or certification, Knowledge of skincare products and treatments', 'Active'),
(71, 34, 'Data Analyst', 'Collect, analyze, and interpret data to support business decisions', 'Technology', 'Dublin', 85000.00, '2024-03-13', 'Bachelor’s degree in Data Science, Statistics, or related field, Proficiency in data analysis tools', 'Active'),
(72, 20, 'Retail Assistant Manager', 'Assist in managing daily operations of retail stores', 'Fashion', 'London', 50000.00, '2024-03-28', 'Bachelor’s degree in Business Administration or related field, Retail management experience', 'Active'),
(73, 7, 'UI/UX Designer', 'Design intuitive and visually appealing user interfaces', 'Technology', 'London', 90000.00, '2024-03-05', 'Bachelor’s degree in Design, Computer Science, or related field, Proficiency in UI/UX design tools', 'Active'),
(74, 25, 'Content Creator', 'Produce engaging content for fashion brands to entice customers to buy products', 'Marketing', 'Florence', 75000.00, '2024-03-02', 'Bachelor’s degree in Marketing, Communications, or related field. Strong writing and creative skills as well as sales experience is preferred', 'Active'),
(75, 10, 'Digital Marketing Manager', 'Develop and execute digital marketing strategies through various channels such as social media or ads on TV.', 'Marketing', 'Sherman Oaks', 95000.00, '2024-03-27', 'Bachelor’s degree in Marketing, or Communications. Candidate must have proven experience in this field as well as a familiarity of marketing techniques and social media channels.', 'Active'),
(76, 40, 'Quality Assurance Specialist', 'Responsible for ensuring the safety and quality of Lugi\'s skincare products are implemented throughout the production process.', 'Technology', 'New York', 80000.00, '2024-03-06', 'Bachelor’s degree in Chemistry. Familiarity with the regulations on quality assurance, good understanding on the formulation and manufacturing processes are also essential.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `p_jobpostingskills`
--

CREATE TABLE `p_jobpostingskills` (
  `JobID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_jobpostingskills`
--

INSERT INTO `p_jobpostingskills` (`JobID`, `SkillID`) VALUES
(1, 1),
(1, 3),
(1, 9),
(2, 2),
(2, 7),
(2, 17),
(3, 18),
(3, 20),
(3, 22),
(4, 7),
(4, 9),
(4, 13),
(5, 4),
(5, 7),
(5, 9),
(6, 17),
(6, 29),
(6, 32),
(7, 1),
(7, 3),
(7, 7),
(8, 1),
(8, 3),
(8, 7),
(9, 1),
(9, 3),
(9, 7),
(10, 3),
(10, 5),
(10, 7),
(11, 1),
(11, 7),
(11, 9),
(12, 1),
(12, 3),
(12, 7),
(13, 1),
(13, 3),
(13, 7),
(14, 1),
(14, 3),
(14, 7),
(15, 7),
(15, 9),
(15, 13),
(16, 1),
(16, 3),
(16, 7),
(17, 1),
(17, 3),
(17, 7),
(18, 1),
(18, 3),
(18, 7),
(19, 18),
(19, 19),
(19, 28),
(20, 7),
(20, 30),
(20, 33),
(21, 17),
(21, 20),
(21, 22),
(22, 7),
(22, 20),
(22, 22),
(23, 7),
(23, 17),
(23, 20),
(24, 7),
(24, 17),
(24, 20),
(25, 1),
(25, 7),
(25, 9),
(26, 7),
(26, 17),
(26, 20),
(27, 7),
(27, 17),
(27, 20),
(28, 7),
(28, 15),
(28, 17),
(29, 1),
(29, 7),
(29, 9),
(30, 1),
(30, 3),
(30, 7),
(31, 2),
(31, 7),
(31, 17),
(32, 18),
(32, 19),
(32, 28),
(33, 1),
(33, 3),
(33, 7),
(34, 4),
(34, 7),
(34, 9),
(35, 1),
(35, 7),
(35, 9),
(36, 7),
(36, 17),
(36, 20),
(37, 7),
(37, 17),
(37, 20),
(38, 1),
(38, 3),
(38, 7),
(39, 7),
(39, 17),
(39, 20),
(40, 2),
(40, 7),
(40, 17),
(41, 1),
(41, 3),
(41, 7),
(42, 1),
(42, 3),
(42, 7),
(43, 1),
(43, 3),
(43, 7),
(44, 1),
(44, 3),
(44, 7),
(45, 1),
(45, 3),
(45, 7),
(46, 1),
(46, 3),
(46, 7),
(47, 1),
(47, 3),
(47, 7),
(48, 1),
(48, 3),
(48, 7),
(49, 1),
(49, 3),
(49, 7),
(50, 1),
(50, 3),
(50, 7),
(51, 35),
(51, 38),
(51, 52),
(52, 1),
(52, 3),
(52, 7),
(53, 18),
(53, 20),
(53, 29),
(54, 1),
(54, 3),
(54, 7),
(55, 1),
(55, 3),
(55, 7),
(56, 4),
(56, 7),
(56, 9),
(57, 1),
(57, 3),
(57, 7),
(58, 7),
(58, 17),
(58, 20),
(59, 7),
(59, 17),
(59, 20),
(60, 1),
(60, 7),
(60, 9),
(61, 1),
(61, 3),
(61, 7),
(62, 1),
(62, 3),
(62, 7),
(63, 1),
(63, 3),
(63, 7),
(64, 1),
(64, 3),
(64, 7),
(65, 1),
(65, 3),
(65, 7),
(66, 7),
(66, 17),
(66, 20),
(67, 1),
(67, 3),
(67, 7),
(68, 18),
(68, 20),
(68, 29),
(69, 7),
(69, 17),
(69, 20),
(70, 7),
(70, 17),
(70, 20),
(71, 1),
(71, 3),
(71, 7),
(72, 7),
(72, 17),
(72, 20),
(73, 7),
(73, 17),
(73, 20),
(74, 7),
(74, 17),
(74, 20),
(75, 7),
(75, 17),
(75, 20),
(76, 1),
(76, 3),
(76, 7);

-- --------------------------------------------------------

--
-- Table structure for table `p_location`
--

CREATE TABLE `p_location` (
  `LocationID` int(11) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `House_No` int(5) NOT NULL,
  `Street` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_location`
--

INSERT INTO `p_location` (`LocationID`, `City`, `Country`, `PostalCode`, `House_No`, `Street`) VALUES
(1, 'London', 'United Kingdom', 'BT1 5G71', 1, 'Melrose Avenue'),
(2, 'New York', 'United States', 'NY 100012', 2, 'Park Road'),
(3, 'Los Angeles', 'United States', 'CA 900013', 3, 'Broadway'),
(4, 'Toronto', 'Canada', 'M5V 1J14', 4, 'King Street'),
(5, 'Paris', 'France', '750015', 5, 'Main Street'),
(6, 'Los Angeles', 'United States', 'CA 912106', 6, 'Sunset Boulevard'),
(7, 'London', 'United Kingdom', 'W1D 1BS7', 7, 'Oxford Street'),
(8, 'New York', 'United States', 'NY 100058', 8, 'Wall Street'),
(9, 'Paris', 'France', '750089', 9, 'Champs-Élysées'),
(10, 'Vancouver', 'Canada', 'V6Z 1K310', 10, 'Granville Street'),
(11, 'Beverly Hills', 'United States', '9021011', 11, 'Rodeo Drive'),
(12, 'New York', 'United States', 'NY 1002212', 12, 'Fifth Avenue'),
(13, 'Barcelona', 'Spain', '0800213', 13, 'La Rambla'),
(14, 'Dublin', 'Ireland', 'D02 FK7914', 14, 'Grafton Street'),
(15, 'Shanghai', 'China', '20000015', 15, 'Nanjing Road'),
(16, 'Hong Kong', 'China', '99907716', 16, 'Nathan Road'),
(17, 'Singapore', 'Singapore', '23883917', 17, 'Orchard Road'),
(18, 'Chicago', 'United States', '6061118', 18, 'Michigan Avenue'),
(19, 'Prague', 'Czech Republic', '110 0019', 19, 'Wenceslas Square'),
(20, 'Berlin', 'Germany', '1071920', 20, 'Kurfürstendamm'),
(21, 'New Delhi', 'India', '11001921', 21, 'Nehru Place'),
(22, 'Tokyo', 'Japan', '104-006122', 22, 'Ginza'),
(23, 'Paris', 'France', '7500123', 23, 'Rue de Rivoli'),
(24, 'São Paulo', 'Brazil', '01310-10024', 24, 'Av. Paulista'),
(25, 'Oslo', 'Norway', '015425', 25, 'Karl Johans gate'),
(26, 'Dublin', 'Ireland', 'D02 FK7926', 26, 'Grafton Street'),
(27, 'Helsinki', 'Finland', '0010027', 27, 'Kauppakeskus Citycenter'),
(28, 'Poznań', 'Poland', '61-77228', 28, 'Stary Rynek'),
(29, 'Madrid', 'Spain', '2801329', 29, 'Gran Vía'),
(30, 'London', 'United Kingdom', 'W1B 5TB30', 30, 'Regent Street'),
(31, 'Belgrade', 'Serbia', '1100031', 31, 'Knez Mihailova'),
(32, 'Rome', 'Italy', '0018632', 32, 'Via del Corso'),
(33, 'Kyiv', 'Ukraine', '0200033', 33, 'Maidan Nezalezhnosti'),
(34, 'Bangalore', 'India', '56000134', 34, 'M.G. Road'),
(35, 'Vienna', 'Austria', '101035', 35, 'Kärntner Straße'),
(36, 'São Paulo', 'Brazil', '01426-00136', 36, 'Rua Oscar Freire'),
(37, 'Seoul', 'South Korea', '0453737', 37, 'Myeong-dong'),
(38, 'Moscow', 'Russia', '10901238', 38, 'Nikolskaya Street'),
(39, 'Buenos Aires', 'Argentina', 'C1084AAB39', 39, 'Plaza de Mayo'),
(40, 'Belgrade', 'Serbia', '1100040', 40, 'Knez Mihailova'),
(41, 'São Paulo', 'Brazil', '01310-10041', 41, 'Avenida Paulista'),
(42, 'Hong Kong', 'China', '99907742', 42, 'Nathan Road'),
(43, 'Madrid', 'Spain', '2801343', 43, 'Calle de Preciados'),
(44, 'Lyon', 'France', '6900244', 44, 'Rue de la République'),
(45, 'Paris', 'France', '7500845', 45, 'Avenue des Champs-Élysées'),
(46, 'Shanghai', 'China', '20000046', 46, 'Nanjing Road'),
(47, 'Edinburgh', 'United Kingdom', 'EH2 2HG47', 47, 'Princes Street'),
(48, 'Paris', 'France', '7500848', 48, 'Champs-Élysées'),
(49, 'Bordeaux', 'France', '3300049', 49, 'Rue Sainte-Catherine'),
(50, 'Beverly Hills', 'United States', '9021050', 50, 'Rodeo Drive'),
(51, 'Madrid', 'Spain', '28013', 51, 'Gran Vía'),
(52, 'Barcelona', 'Spain', '08002', 52, 'Las Ramblas'),
(53, 'Toledo', 'Spain', '45001', 53, 'Calle Mayor'),
(54, 'Lisbon', 'Portugal', '1100-048', 54, 'Rua Augusta'),
(55, 'Lisbon', 'Portugal', '1250-096', 55, 'Avenida da Liberdade'),
(56, 'Madrid', 'Spain', '28001', 56, 'Calle Serrano'),
(57, 'Porto', 'Portugal', '4000-457', 57, 'Rua de Santa Catarina'),
(58, 'Cardiff', 'Wales', 'CF10 1BS', 58, 'Castle Street'),
(59, 'Edinburgh', 'Scotland', 'EH2 2AN', 59, 'Princes Street'),
(60, 'Swansea', 'Wales', 'SA1 1QX', 60, 'High Street'),
(61, 'Liverpool', 'England', 'L1 4DS', 61, 'Bold Street'),
(62, 'Edinburgh', 'Scotland', 'EH1 1SG', 62, 'Royal Mile'),
(63, 'Belfast', 'Northern Ireland', 'BT9 7AY', 63, 'Lisburn Road'),
(64, 'Manchester', 'England', 'M3 4LY', 64, 'Deansgate'),
(65, 'Wrexham', 'Wales', 'LL13 8YE', 65, 'Mill Lane'),
(66, 'Glasgow', 'Scotland', 'G2 3JD', 66, 'Sauchiehall Street'),
(67, 'Newcastle upon Tyne', 'England', 'NE1 6EE', 67, 'Grey Street'),
(68, 'Aberdeen', 'Scotland', 'AB10 1TX', 68, 'Rose Street'),
(69, 'Aberdeen', 'Scotland', 'AB11 5BN', 69, 'Union Street'),
(70, 'Belfast', 'Northern Ireland', 'BT2 7BN', 70, 'Great Victoria Street'),
(71, 'Belfast', 'Northern Ireland', 'BT1 5GB', 71, 'Donegall Square'),
(72, 'Belfast', 'Northern Ireland', 'BT7 1JL', 72, 'Botanic Avenue'),
(73, 'Glasgow', 'Scotland', 'G1 3HR', 73, 'Buchanan Street'),
(74, 'Budapest', 'Hungary', '1062', 74, 'Andrássy Avenue'),
(75, 'Krakow', 'Poland', '31-019', 75, 'Florianska Street');

-- --------------------------------------------------------

--
-- Table structure for table `p_skills`
--

CREATE TABLE `p_skills` (
  `SkillID` int(11) NOT NULL,
  `SkillName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_skills`
--

INSERT INTO `p_skills` (`SkillID`, `SkillName`) VALUES
(10, 'Adaptability'),
(48, 'Agile Methodology'),
(27, 'Analytical Skills'),
(43, 'Artificial Intelligence'),
(28, 'Attention to Detail'),
(44, 'Cloud Computing'),
(7, 'Communication'),
(25, 'Conflict Resolution'),
(34, 'Content Writing'),
(55, 'Copywriting'),
(18, 'Creativity'),
(19, 'Critical Thinking'),
(30, 'Customer Relationship Management'),
(45, 'Cybersecurity'),
(1, 'Data Analysis'),
(40, 'Data Entry'),
(41, 'Data Visualization'),
(20, 'Decision Making'),
(50, 'DevOps'),
(53, 'Digital Photography'),
(56, 'E-commerce'),
(16, 'Ethical Hacking'),
(4, 'Financial Modeling'),
(35, 'Graphic Design'),
(15, 'HTML'),
(11, 'Java'),
(14, 'JavaScript'),
(17, 'Leadership'),
(42, 'Machine Learning'),
(57, 'Marketing'),
(32, 'Marketing Strategy'),
(59, 'Maths'),
(58, 'Microsoft Teams'),
(37, 'Mobile App Development'),
(26, 'Negotiation'),
(46, 'Network Administration'),
(21, 'Networking'),
(29, 'Organizational Skills'),
(24, 'Presentation Skills'),
(8, 'Problem-Solving'),
(2, 'Project Management'),
(22, 'Public Speaking'),
(12, 'Python'),
(47, 'Quality Assurance'),
(23, 'Research'),
(31, 'Sales'),
(49, 'Scrum'),
(39, 'Search Engine Optimization'),
(33, 'Social Media Management'),
(51, 'Software Testing'),
(13, 'SQL'),
(3, 'Statistical Analysis'),
(6, 'Teamwork'),
(5, 'Technical Writing'),
(9, 'Time Management'),
(52, 'UI/UX Design'),
(38, 'User Experience Design'),
(54, 'Video Editing'),
(36, 'Web Development');

-- --------------------------------------------------------

--
-- Table structure for table `p_users`
--

CREATE TABLE `p_users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Reg_Date` date DEFAULT curdate(),
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_users`
--

INSERT INTO `p_users` (`UserID`, `Username`, `Password`, `Email`, `Reg_Date`, `Status`) VALUES
(1, 'finn_odon', 'password1', 'finnodon@example.com', '2023-01-01', 'Active'),
(2, 'aine_smith', 'password2', 'aine.smith@example.com', '2023-02-05', 'Active'),
(3, 'cormac_jackson', 'password3', 'cormac.jackson@example.com', '2023-03-10', 'Active'),
(4, 'cian_davis', 'password4', 'cian.davis@example.com', '2023-04-15', 'Active'),
(5, 'daniel_brown', 'password5', 'daniel.brown@example.com', '2023-05-20', 'Active'),
(6, 'meabh_wilson', 'password6', 'meabh.wilson@example.com', '2023-06-25', 'Active'),
(7, 'sinead_clarke', 'password7', 'sinead.clarke@example.com', '2023-07-30', 'Active'),
(8, 'niall_lynch', 'password8', 'niall.lynch@example.com', '2023-08-04', 'Active'),
(9, 'aofie_kelly', 'password9', 'aofie.kelly@example.com', '2023-09-09', 'Active'),
(10, 'alexander_hamilton', 'password10', 'alexander.hamilton@themusical.com', '2023-10-14', 'Active'),
(11, 'abbylee_miller', 'password11', 'abbylee.miller@dancemoms.com', '2023-11-19', 'Active'),
(12, 'bill_gates', 'password12', 'bill.gates@microsoft.com', '2023-12-24', 'Active'),
(13, 'taylor_swift', 'password13', 'taylor.swift@erastour.com', '2024-01-01', 'Active'),
(14, 'selena_gomez', 'password14', 'selena.gomez@example.com', '2024-02-05', 'Active'),
(15, 'ronan_oconnell', 'password15', 'ronan.oconnell@example.com', '2024-03-10', 'Active'),
(16, 'george_washington', 'password16', 'george.washington@themusical.com', '2024-04-15', 'Active'),
(17, 'aaron_burr', 'password17', 'aaron.burr@themusical.com', '2024-05-20', 'Active'),
(18, 'max_verstappen', 'password18', 'max.verstappen@redbullf1.com', '2024-06-25', 'Active'),
(19, 'sergio_perez', 'password19', 'sergio.perez@redbullf1.com', '2024-07-30', 'Active'),
(20, 'carlos_sainz', 'password20', 'carlossainz@ferrarif1.com', '2024-08-04', 'Active'),
(21, 'charles_leclerc', 'password21', 'charles.leclerc@ferrarif1.com', '2024-09-09', 'Active'),
(22, 'george_russell', 'password22', 'george.russell@mercf1.com', '2024-10-14', 'Active'),
(23, 'lando_norris', 'password23', 'lando.norris@mclarenf1.com', '2024-11-19', 'Active'),
(24, 'lewis_hamilton', 'password24', 'lewis.hamilton@mercf1.com', '2024-12-24', 'Active'),
(25, 'oscar_piastri', 'password25', 'oscar.pistari@mcclarenf1.com', '2025-01-01', 'Active'),
(26, 'daniel_ricc', 'password26', 'daniel.ricciardo@RBf1.com', '2025-02-05', 'Active'),
(27, 'sofia_bottas', 'password27', 'sofia.bottas@example.com', '2025-03-10', 'Active'),
(28, 'noah_sarge', 'password28', 'noah.sargeant@example.com', '2025-04-15', 'Active'),
(29, 'charlotte_green', 'password29', 'charlotte.green@example.com', '2025-05-20', 'Active'),
(30, 'maya_dave', 'password30', 'maya.davies@example.com', '2025-06-25', 'Active'),
(31, 'liam_nelson', 'password31', 'liam.nelson@example.com', '2025-07-30', 'Active'),
(32, 'kim_p', 'password32', 'kim.possible@disney.com', '2025-08-04', 'Active'),
(33, 'miley_cyrus', 'password33', 'miley.cyrus@disney.com', '2025-09-09', 'Active'),
(34, 'troy_bolton', 'password34', 'troy.bolton@disney.com', '2025-10-14', 'Active'),
(35, 'gabi_montez', 'password35', 'gabi.montez@highschoolmusical.com', '2025-11-19', 'Active'),
(36, 'sharpay_evans', 'password36', 'sharpay.evans@highschoolmusical.com', '2025-12-24', 'Active'),
(37, 'martha_cox', 'password37', 'martha.cox@highschoolmusical.com', '2026-01-01', 'Active'),
(38, 'ryan_evans', 'password38', 'ryan.evans@highschoolmusical.com', '2026-02-05', 'Active'),
(39, 'chad_danforth', 'password39', 'chad.danforth@highschoolmusical.com', '2026-03-10', 'Active'),
(40, 'hannah_montana', 'password40', 'hannah.montana@disney.com', '2026-04-15', 'Active'),
(41, 'alex_russo', 'password41', 'alex.russo@disney.com', '2026-05-20', 'Active'),
(42, 'tori_vega1', 'password42', 'tori.vega@singer.com', '2026-06-25', 'Active'),
(43, 'jade_west13', 'password43', 'jade.west@victorious.com', '2026-07-30', 'Active'),
(44, 'cat_valentine', 'password44', 'cat.valentine@victorious.com', '2026-08-04', 'Active'),
(45, 'harper_lee', 'password45', 'harper.lee@clothing.com', '2026-09-09', 'Active'),
(46, 'andre_harris54', 'password46', 'andre.harris@victorious.com', '2026-10-14', 'Active'),
(47, 'benjamin_franklin', 'password47', 'benjamin.franklin@foundingfather.com', '2026-11-19', 'Active'),
(48, 'emma_stone', 'password48', 'emma.stone@lalaland.com', '2026-12-24', 'Active'),
(49, 'noah_schnapp', 'password49', 'noah.schnapp@strangerthings.com', '2027-01-01', 'Active'),
(50, 'ava_hill', 'password50', 'ava.hill@example.com', '2027-02-05', 'Active'),
(51, 'olivia_newtonjohn', 'password51', 'olivia.newtonjohn@grease.com', '2031-05-20', 'Active'),
(52, 'liam_payne', 'password52', 'liam.payne@onedirection.com', '2031-06-25', 'Active'),
(53, 'harry_styles', 'password53', 'harry.styles@onedirection.com', '2031-07-30', 'Active'),
(54, 'louis_tomlinson', 'password54', 'louis.tomilnson@onedirection.com', '2031-08-04', 'Active'),
(55, 'niall_horan', 'password55', 'niall_horan@onedirection.com', '2031-09-09', 'Active'),
(56, 'zayn_malik', 'password56', 'zayn_malik@onedirection.com', '2031-10-14', 'Active'),
(57, 'rachel_green', 'password57', 'rachelgreen@friends.com', '2031-11-19', 'Active'),
(58, 'monica_geller', 'password58', 'monicageller@friends.com', '2032-01-01', 'Active'),
(59, 'ross_geller', 'password59', 'rossgeller@friends.com', '2032-02-05', 'Active'),
(60, 'joey_tribbiani', 'password60', 'joeytribbiani@friends.com', '2032-03-10', 'Active'),
(61, 'pheobe_buff', 'password61', 'pheobe_buffay@friends.com', '2032-04-15', 'Active'),
(62, 'chandler_bing', 'password62', 'chandler_bing@friends.com', '2032-05-20', 'Active'),
(63, 'sheldon_coop', 'password63', 'sheldon_cooper@thebigbangtheory.com', '2032-06-25', 'Active'),
(64, 'penny_teller', 'password64', 'penny.teller@thebigbangtheory.com', '2032-08-04', 'Active'),
(65, 'leonard_hofstadter', 'password65', 'leonard.hofstadter@thebigbangtheory.com', '2032-09-09', 'Active'),
(66, 'howard_wolo', 'password66', 'howard.wolowitz@thebigbangtheory.com', '2032-10-14', 'Active'),
(67, 'raj_kooth', 'password67', 'rajesh.koothrappli@thebigbangtheory.com', '2032-11-19', 'Active'),
(68, 'amy_farrah_fowler', 'password68', 'amyffowler@thebigbangtheory.com', '2032-12-24', 'Active'),
(69, 'bernie_wolo', 'password69', 'bernadette.wolowitz@thebigbangtheory.com', '2033-01-01', 'Active'),
(70, 'meredith_grey', 'password70', 'mer.grey@greysanatomy.com', '2033-02-05', 'Active'),
(71, 'derek_shepherd', 'password71', 'derekshepherd@greysanatomy.com', '2033-03-10', 'Active'),
(72, 'cristina_yang', 'password72', 'cristinayang@greysanatomy.com', '2033-04-15', 'Active'),
(73, 'alex_karev', 'password73', 'alex.karev@greysanatomy.com', '2033-05-20', 'Active'),
(74, 'miranda_bailey', 'password74', 'mirandabailey@greysanatomy.com', '2033-06-25', 'Active'),
(75, 'iz.stevens', 'password75', 'izzie.stevens@greys.com', '2033-07-30', 'Active'),
(76, 'george_omalley', 'password76', 'george_omalley@greysanatomy.com', '2033-08-04', 'Active'),
(77, 'callie_torres', 'password77', 'callie.torres@greysanatomy.com', '2033-09-09', 'Active'),
(78, 'mark_sloan', 'password78', 'mark.sloan@greys.com', '2033-10-14', 'Active'),
(79, 'arizona_robbins', 'password79', 'arizona.robbins@greys.com', '2033-11-19', 'Active'),
(80, 'owen_hunt', 'password80', 'owen.hunt@greys.com', '2033-12-24', 'Active'),
(81, 'lexie_grey', 'password81', 'lexie_grey@greys.com', '2034-01-01', 'Active'),
(82, 'richard_webber', 'password82', 'richard.webber@greys.com', '2034-02-05', 'Active'),
(83, 'jackson_avery', 'password83', 'jackson.avery@greysanatomy.com', '2034-03-10', 'Active'),
(84, 'april.kepner', 'password84', 'april.kepner@greysanatomy.com', '2034-04-15', 'Active'),
(85, 'amelia_shepherd', 'password85', 'amelia.shep@greysanatomy.com', '2034-05-20', 'Active'),
(86, 'addie_mont', 'password86', 'addie.mont@greys.com', '2034-06-25', 'Active'),
(87, 'teddy_altman', 'password87', 'teddy.altman@greys.com', '2034-07-30', 'Active'),
(88, 'jo.wilson', 'password88', 'jo_wilson@greysanatomy.com', '2034-08-04', 'Active'),
(89, 'mags_pierce', 'password89', 'maggiepierce@greysanatomy.com', '2034-09-09', 'Active'),
(90, 'levi_schmitt', 'password90', 'levi.schmitt@greys.com', '2034-10-14', 'Active'),
(91, 'atticus_lincoln', 'password91', 'atticus.lincoln@greys.com', '2034-12-24', 'Active'),
(92, 'preston_b', 'password92', 'preston.burke@greys.com', '2035-01-01', 'Active'),
(93, 'homer_simpson', 'password93', 'homersimpson@family.com', '2035-02-05', 'Active'),
(94, 'marge_simp', 'password94', 'margesimpson@family.com', '2035-03-10', 'Active'),
(95, 'bart-simp', 'password95', 'bart.simp@family.com', '2035-06-25', 'Active'),
(96, 'lisa_simp', 'password96', 'lisa.simp@family.com', '2035-07-01', 'Active'),
(97, 'maggie.simp', 'password97', 'maggie.simp@family.com', '2035-07-02', 'Active'),
(98, 'michael.scott', 'password98', 'michaelscott@theoffice.com', '2035-07-03', 'Active'),
(99, 'jim.halt', 'password99', 'jim.halpert@theoffice.com', '2035-07-04', 'Active'),
(100, 'pam_beesly', 'password100', 'pam.beesly@theoffice.com', '2035-07-05', 'Active'),
(101, 'dwight.schrute', 'password101', 'dwight.schrute@theoffice.com', '2035-07-07', 'Active'),
(102, 'andy.bernard', 'password102', 'andy.bernard@theoffice.com', '2035-07-08', 'Active'),
(103, 'jay_prit', 'password103', 'jay.prit@modernfamily.com', '2035-07-09', 'Active'),
(104, 'gloria_prit', 'password104', 'gloria.prit@modernfamily.com', '2035-07-10', 'Active'),
(105, 'phil_duncan', 'password105', 'phil_duncan@modernfamily.com', '2035-07-11', 'Active'),
(106, 'claire_duncan', 'password106', 'claire_duncan@modernfamily.co.uk', '2035-07-12', 'Active'),
(107, 'mitchell_prit', 'password107', 'mitchell.prit@modernfamily.com', '2035-07-13', 'Active'),
(108, 'lily_prit', 'password108', 'lily.prit@modernfamily.com', '2035-07-14', 'Active'),
(109, 'cameron_tuck', 'password109', 'cameron.tuck@modernfamily.com', '2035-07-15', 'Active'),
(110, 'haley.duncan', 'password110', 'haley_duncan@modernfam.com', '2035-07-16', 'Active'),
(111, 'alex.duncan', 'password111', 'alex_duncan@modernfam.com', '2035-07-17', 'Active'),
(112, 'luke-dunphy', 'password112', 'luke-dunphy@modernfam.com', '2035-07-18', 'Active'),
(113, 'manny_delgado', 'password113', 'manny_delgado@modernfamily.com', '2035-07-19', 'Active'),
(114, 'lily_evans', 'password114', 'lily.evans@harrypotter.com', '2035-07-20', 'Active'),
(115, 'james.potter', 'password115', 'james.potter@harrypotter.com', '2035-07-21', 'Active'),
(116, 'harry.pott', 'password116', 'harry.potter@harrypotter.com', '2035-07-22', 'Active'),
(117, 'hermione_granger', 'password117', 'hermione_granger@harrypotter.com', '2035-07-23', 'Active'),
(118, 'ronweasley1', 'password118', 'ronweasley@harrypotter.com', '2035-07-24', 'Active'),
(119, 'albus_dumbledore', 'password119', 'albus.dumbledore@harrypotter.com', '2035-07-25', 'Active'),
(120, 'draco_malfoy', 'password120', 'draco.malfoy@harrypotter.com', '2035-07-26', 'Active'),
(121, 'ginny_weasley', 'password121', 'ginny.weasley@harrypotter.com', '2035-07-27', 'Active'),
(122, 'sirius.black1', 'password122', 'sirius.black@harrypotter.com', '2035-07-28', 'Active'),
(123, 'remus_lupin', 'password123', 'remus_lupin@harrypotter.com', '2035-07-29', 'Active'),
(124, 'fredweasley7', 'password124', 'fredweasley7@harrypotter.com', '2035-07-30', 'Active'),
(125, 'georgeweasley7', 'password125', 'georgeweasley7@harrypotter.com', '2035-07-31', 'Active'),
(126, 'luna_lovegood', 'password126', 'luna_lovegood@harrypotter.com', '2035-08-01', 'Active'),
(127, 'neville.longbottom', 'password127', 'neville.longbottom@harrypotter.com', '2035-08-02', 'Active'),
(128, 'minervamcgonagall7', 'password128', 'minervamcgonagall@harrypotter.com', '2035-08-03', 'Active'),
(129, 'bellatrix_lestrange', 'password129', 'bellatrix_lestrange@harrypotter.com', '2035-08-04', 'Active'),
(130, 'madeyemoody12', 'password130', 'madeyemoody12@harrypotter.com', '2035-08-05', 'Active'),
(131, 'ced_diggory', 'password131', 'ced_diggory@harrypotter.com', '2035-08-06', 'Active'),
(132, 'dobby_theelf', 'password132', 'dobby_theelf@harrypotter.com', '2035-08-07', 'Active'),
(133, 'liv_rooney', 'password133', 'livrooney@disney.com', '2035-08-08', 'Active'),
(134, 'maddie.rooney', 'password134', 'maddierooney@disney.com', '2035-08-09', 'Active'),
(135, 'joey.rooney1', 'password135', 'joey.rooney@disney.co.uk', '2035-08-10', 'Active'),
(136, 'caoimhe_obrien', 'password126', 'caoimhe.obrien@example.com', '2035-08-13', 'Active'),
(137, 'katie_obrien', 'password137', 'katie.obrien@example.com', '2035-08-14', 'Active'),
(138, 'willow_cruz', 'password138', 'willow.cruz@example.com', '2035-08-15', 'Active'),
(139, 'mary_moore', 'password139', 'mary.moore@example.com', '2035-08-16', 'Active'),
(140, 'emma_smalls', 'password140', 'emma.smalls@outlook.com', '2035-08-20', 'Active'),
(142, 'henry_bennett', 'password142', 'henry_bennett@example.com', '2035-08-21', 'Active'),
(143, 'serena_williams', 'password143', 'serena.williams@example.com', '2035-08-22', 'Active'),
(144, 'olivia.pope', 'password144', 'olivia.pope@scandal.com', '2035-08-23', 'Active'),
(145, 'fitz.grant05', 'password145', 'fitz.grant1@scandal.com', '2035-08-24', 'Active'),
(146, 'mellie.grant', 'password146', 'mellie.grant@scandal.com', '2035-08-25', 'Active'),
(147, 'cyrus.beene', 'password147', 'cyrus.beene@scandal.co.uk', '2035-08-26', 'Active'),
(148, 'quinn.perkin', 'password148', 'quinn.perkins@scandal.co.uk', '2035-08-27', 'Active'),
(149, 'abby.whelan', 'password149', 'abby.whelan9@scandal.com', '2035-08-28', 'Active'),
(150, 'david.rosen', 'password150', 'david.rosen@scandal.com', '2035-08-29', 'Active'),
(151, 'jake.ballard', 'password151', 'jake_ballard@scandal.co.uk', '2035-08-30', 'Active');

-- --------------------------------------------------------

--
-- Structure for view `p_applicationstatusview`
--
DROP TABLE IF EXISTS `p_applicationstatusview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`(DATABASE_NAME)`@`localhost` SQL SECURITY DEFINER VIEW `p_applicationstatusview`  AS SELECT `a`.`ApplicationID` AS `ApplicationID`, `a`.`ApplicationDate` AS `ApplicationDate`, `a`.`Status` AS `Status`, `c`.`FirstName` AS `CandidateFirstName`, `c`.`LastName` AS `CandidateLastName`, `jp`.`Title` AS `JobTitle` FROM ((`p_applications` `a` join `p_candidates` `c` on(`a`.`CandidateID` = `c`.`CandidateID`)) join `p_jobpostings` `jp` on(`a`.`JobID` = `jp`.`JobID`)) ORDER BY `a`.`ApplicationDate` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `p_averagejobsalaryview`
--
DROP TABLE IF EXISTS `p_averagejobsalaryview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`(DATABASE_NAME)`@`localhost` SQL SECURITY DEFINER VIEW `p_averagejobsalaryview`  AS SELECT `jp`.`Category` AS `Category`, format(avg(`jp`.`Salary`),2) AS `AverageSalary` FROM `p_jobpostings` AS `jp` GROUP BY `jp`.`Category` ;

-- --------------------------------------------------------

--
-- Structure for view `p_candidateskillsview`
--
DROP TABLE IF EXISTS `p_candidateskillsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`(DATABASE_NAME)`@`localhost` SQL SECURITY DEFINER VIEW `p_candidateskillsview`  AS SELECT `c`.`FirstName` AS `FirstName`, `c`.`LastName` AS `LastName`, `c`.`Email` AS `Email`, `c`.`Phone` AS `Phone`, `s`.`SkillName` AS `SkillName` FROM ((`p_candidates` `c` join `p_candidateskills` `cs` on(`c`.`CandidateID` = `cs`.`CandidateID`)) join `p_skills` `s` on(`cs`.`SkillID` = `s`.`SkillID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `p_employerjobpostingsview`
--
DROP TABLE IF EXISTS `p_employerjobpostingsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`(DATABASE_NAME)`@`localhost` SQL SECURITY DEFINER VIEW `p_employerjobpostingsview`  AS SELECT `e`.`CompanyName` AS `CompanyName`, `e`.`Phone` AS `Phone`, `e`.`Email` AS `EmployerEmail`, `jp`.`Title` AS `JobTitle`, `jp`.`Description` AS `Description`, `jp`.`Location` AS `Location`, `jp`.`PostedDate` AS `PostedDate` FROM (`p_employers` `e` join `p_jobpostings` `jp` on(`e`.`EmployerID` = `jp`.`EmployerID`)) WHERE `jp`.`PostedDate` between '2024-03-13 09:00:00' and '2024-03-16 18:00:00' ;

-- --------------------------------------------------------

--
-- Structure for view `p_interviewscheduleview`
--
DROP TABLE IF EXISTS `p_interviewscheduleview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`(DATABASE_NAME)`@`localhost` SQL SECURITY DEFINER VIEW `p_interviewscheduleview`  AS SELECT `i`.`InterviewID` AS `InterviewID`, `i`.`InterviewDate` AS `InterviewDate`, `i`.`InterviewTime` AS `InterviewTime`, `i`.`InterviewLocation` AS `InterviewLocation`, `c`.`FirstName` AS `CandidateFirstName`, `c`.`LastName` AS `CandidateLastName`, `jp`.`Title` AS `JobTitle` FROM (((`p_interviews` `i` join `p_applications` `a` on(`i`.`ApplicationID` = `a`.`ApplicationID`)) join `p_candidates` `c` on(`a`.`CandidateID` = `c`.`CandidateID`)) join `p_jobpostings` `jp` on(`a`.`JobID` = `jp`.`JobID`)) WHERE `i`.`Status` = 'Scheduled' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p_applications`
--
ALTER TABLE `p_applications`
  ADD PRIMARY KEY (`ApplicationID`),
  ADD KEY `CandidateID` (`CandidateID`),
  ADD KEY `JobID` (`JobID`);

--
-- Indexes for table `p_candidates`
--
ALTER TABLE `p_candidates`
  ADD PRIMARY KEY (`CandidateID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `LocationID` (`LocationID`);

--
-- Indexes for table `p_candidateskills`
--
ALTER TABLE `p_candidateskills`
  ADD PRIMARY KEY (`CandidateID`,`SkillID`),
  ADD KEY `SkillID` (`SkillID`);

--
-- Indexes for table `p_employers`
--
ALTER TABLE `p_employers`
  ADD PRIMARY KEY (`EmployerID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `p_interviews`
--
ALTER TABLE `p_interviews`
  ADD PRIMARY KEY (`InterviewID`),
  ADD KEY `ApplicationID` (`ApplicationID`);

--
-- Indexes for table `p_jobpostings`
--
ALTER TABLE `p_jobpostings`
  ADD PRIMARY KEY (`JobID`),
  ADD KEY `EmployerID` (`EmployerID`);

--
-- Indexes for table `p_jobpostingskills`
--
ALTER TABLE `p_jobpostingskills`
  ADD PRIMARY KEY (`JobID`,`SkillID`),
  ADD KEY `SkillID` (`SkillID`);

--
-- Indexes for table `p_location`
--
ALTER TABLE `p_location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `p_skills`
--
ALTER TABLE `p_skills`
  ADD PRIMARY KEY (`SkillID`),
  ADD UNIQUE KEY `SkillName` (`SkillName`);

--
-- Indexes for table `p_users`
--
ALTER TABLE `p_users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `p_applications`
--
ALTER TABLE `p_applications`
  MODIFY `ApplicationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `p_candidates`
--
ALTER TABLE `p_candidates`
  MODIFY `CandidateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `p_employers`
--
ALTER TABLE `p_employers`
  MODIFY `EmployerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `p_interviews`
--
ALTER TABLE `p_interviews`
  MODIFY `InterviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `p_jobpostings`
--
ALTER TABLE `p_jobpostings`
  MODIFY `JobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `p_location`
--
ALTER TABLE `p_location`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `p_skills`
--
ALTER TABLE `p_skills`
  MODIFY `SkillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `p_users`
--
ALTER TABLE `p_users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p_applications`
--
ALTER TABLE `p_applications`
  ADD CONSTRAINT `p_applications_ibfk_1` FOREIGN KEY (`CandidateID`) REFERENCES `p_candidates` (`CandidateID`),
  ADD CONSTRAINT `p_applications_ibfk_2` FOREIGN KEY (`JobID`) REFERENCES `p_jobpostings` (`JobID`);

--
-- Constraints for table `p_candidates`
--
ALTER TABLE `p_candidates`
  ADD CONSTRAINT `fk_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `p_location` (`LocationID`),
  ADD CONSTRAINT `p_candidates_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `p_users` (`UserID`);

--
-- Constraints for table `p_candidateskills`
--
ALTER TABLE `p_candidateskills`
  ADD CONSTRAINT `p_candidateskills_ibfk_1` FOREIGN KEY (`CandidateID`) REFERENCES `p_candidates` (`CandidateID`),
  ADD CONSTRAINT `p_candidateskills_ibfk_2` FOREIGN KEY (`SkillID`) REFERENCES `p_skills` (`SkillID`);

--
-- Constraints for table `p_interviews`
--
ALTER TABLE `p_interviews`
  ADD CONSTRAINT `p_interviews_ibfk_1` FOREIGN KEY (`ApplicationID`) REFERENCES `p_applications` (`ApplicationID`);

--
-- Constraints for table `p_jobpostings`
--
ALTER TABLE `p_jobpostings`
  ADD CONSTRAINT `p_jobpostings_ibfk_1` FOREIGN KEY (`EmployerID`) REFERENCES `p_employers` (`EmployerID`);

--
-- Constraints for table `p_jobpostingskills`
--
ALTER TABLE `p_jobpostingskills`
  ADD CONSTRAINT `p_jobpostingskills_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `p_jobpostings` (`JobID`),
  ADD CONSTRAINT `p_jobpostingskills_ibfk_2` FOREIGN KEY (`SkillID`) REFERENCES `p_skills` (`SkillID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
