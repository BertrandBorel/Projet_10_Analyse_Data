-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8080
-- Generation Time: Mar 21, 2022 at 09:40 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brief_pizza`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ajout_company` (IN `p_nom_company` VARCHAR(42))  BEGIN INSERT INTO company(nom_company) VALUES (p_nom_company);END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `nom_company` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `nom_company`) VALUES
(1, 'Domino\'s Pizza'),
(2, 'Pizza Hut'),
(3, 'Godfather\'s Pizza'),
(4, 'IMO\'s Pizza');

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `id_pizza` int(11) NOT NULL,
  `nom_pizza` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `id_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`id_pizza`, `nom_pizza`, `price`, `id_type`, `id_size`, `id_company`) VALUES
(1, 'Hand Tossed', 6, 1, 1, 1),
(2, 'Hand Tossed', 8, 1, 2, 1),
(3, 'Hand Tossed', 10, 1, 3, 1),
(4, 'Handmade Pan', 8, 1, 2, 1),
(5, 'Crunchy Thin Crust', 6, 1, 1, 1),
(6, 'Crunchy Thin Crust', 8, 1, 2, 1),
(7, 'Crunchy Thin Crust', 10, 1, 3, 1),
(8, 'Brooklyn Style', 10, 1, 3, 1),
(9, 'Brooklyn Style', 12, 1, 4, 1),
(10, 'Gluten Free Crust', 9, 1, 1, 1),
(11, 'Spinach & Feta (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(12, 'Spinach & Feta (Hand Tossed, Handmade Pan or Thin Crust)', 14, 2, 2, 1),
(13, 'Spinach & Feta (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(14, 'Spinach & Feta (Brooklyn Style)', 18, 2, 4, 1),
(15, 'Spinach & Feta (Gluten Free Crust)', 15, 2, 1, 1),
(16, 'Wisconsin 6 Cheese (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(17, 'Wisconsin 6 Cheese (Hand Tossed, Handmade Pan or Thin Crust)', 14, 2, 2, 1),
(18, 'Wisconsin 6 Cheese (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(19, 'Wisconsin 6 Cheese (Brooklyn Style)', 18, 2, 4, 1),
(20, 'Wisconsin 6 Cheese (Gluten Free Crust)', 15, 2, 1, 1),
(21, 'Honolulu Hawaiian (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(22, 'Honolulu Hawaiian (Hand Tossed, Handmade Pan or Thin Crust)', 14, 2, 2, 1),
(23, 'Honolulu Hawaiian (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(24, 'Honolulu Hawaiian (Brooklyn Style)', 18, 2, 4, 1),
(25, 'Honolulu Hawaiian (Gluten Free Crust)', 15, 2, 1, 1),
(26, 'Philly Cheese Steak (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(27, 'Philly Cheese Steak (Hand Tossed, Handmade Pan or Thin Crust)', 14, 2, 2, 1),
(28, 'Philly Cheese Steak (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(29, 'Philly Cheese Steak (Brooklyn Style)', 18, 2, 4, 1),
(30, 'Philly Cheese Steak (Gluten Free Crust)', 15, 2, 1, 1),
(31, 'Pacific Veggie (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(32, 'Pacific Veggie (Hand Tossed, Handmade Pan or Thin Crust)', 14, 2, 2, 1),
(33, 'Pacific Veggie (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(34, 'Pacific Veggie (Brooklyn Style)', 18, 2, 4, 1),
(35, 'Pacific Veggie (Gluten Free Crust)', 15, 2, 1, 1),
(36, 'Cali Chicken Bacon Ranch™ (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(37, 'Cali Chicken Bacon Ranch™ (Hand Tossed, Handmade Pan or Thin Crust)', 14, 2, 2, 1),
(38, 'Cali Chicken Bacon Ranch™ (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(39, 'Cali Chicken Bacon Ranch™ (Brooklyn Style)', 18, 2, 4, 1),
(40, 'Cali Chicken Bacon Ranch™ (Gluten Free Crust)', 15, 2, 1, 1),
(41, 'Fiery Hawaiian™ (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(42, 'Fiery Hawaiian™ (Hand Tossed, Handmade Pan or Thin Crust)', 14, 2, 2, 1),
(43, 'Fiery Hawaiian™ (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(44, 'Fiery Hawaiian™ (Brooklyn Style)', 18, 2, 4, 1),
(45, 'Fiery Hawaiian™ (Gluten Free Crust)', 15, 2, 1, 1),
(46, 'Buffalo Chicken (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(47, 'Buffalo Chicken (Hand Tossed, Handmade Pan or Thin Crust)', 14, 2, 2, 1),
(48, 'Buffalo Chicken (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(49, 'Buffalo Chicken (Brooklyn Style)', 18, 2, 4, 1),
(50, 'Buffalo Chicken (Gluten Free Crust)', 15, 2, 1, 1),
(51, 'Memphis BBQ Chicken (Hand Tossed or Thin Crust)', 12, 2, 1, 1),
(52, 'Memphis BBQ Chicken (Hand Tossed, Hnadmade Pan or Thin Crust)', 14, 2, 2, 1),
(53, 'Memphis BBQ Chicken (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 2, 3, 1),
(54, 'Memphis BBQ Chicken (Brooklyn Style)', 18, 2, 4, 1),
(55, 'Memphis BBQ Chicken (Gluten Free Crust)', 15, 2, 1, 1),
(56, 'America\'s Favorite Feast® (Hand Tossed or Thin Crust)', 12, 3, 1, 1),
(57, 'America\'s Favorite Feast® (Hand Tossed or Thin Crust)', 14, 3, 2, 1),
(58, 'America\'s Favorite Feast® (Handmade Pan)', 15, 3, 2, 1),
(59, 'America\'s Favorite Feast® (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 3, 3, 1),
(60, 'America\'s Favorite Feast® (Brooklyn Style)', 18, 3, 4, 1),
(61, 'America\'s Favorite Feast® (Gluten Free Crust)', 15, 3, 1, 1),
(62, 'Bacon Cheeseburger Feast® (Hand Tossed or Thin Crust)', 12, 3, 1, 1),
(63, 'Bacon Cheeseburger Feast® (Hand Tossed or Thin Crust)', 14, 3, 2, 1),
(64, 'Bacon Cheeseburger Feast® (Handmade Pan)', 15, 3, 2, 1),
(65, 'Bacon Cheeseburger Feast® (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 3, 3, 1),
(66, 'Bacon Cheeseburger Feast® (Brooklyn Style)', 18, 3, 4, 1),
(67, 'Bacon Cheeseburger Feast® (Gluten Free Crust)', 15, 3, 1, 1),
(68, 'Deluxe Feast® (Hand Tossed or Thin Crust)', 12, 3, 1, 1),
(69, 'Deluxe Feast® (Hand Tossed or Thin Crust)', 14, 3, 2, 1),
(70, 'Deluxe Feast® (Handmade Pan)', 15, 3, 2, 1),
(71, 'Deluxe Feast® (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 3, 3, 1),
(72, 'Deluxe Feast® (Brooklyn Style)', 18, 3, 4, 1),
(73, 'Deluxe Feast® (Gluten Free Crust)', 15, 3, 1, 1),
(74, 'ExtravaganZZa Feast® (Hand Tossed or Thin Crust)', 12, 3, 1, 1),
(75, 'ExtravaganZZa Feast® (Hand Tossed, Handmade Pan or Thin Crust)', 14, 3, 2, 1),
(76, 'ExtravaganZZa Feast® (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 3, 3, 1),
(77, 'ExtravaganZZa Feast® (Brooklyn Style)', 18, 3, 4, 1),
(78, 'ExtravaganZZa Feast® (Gluten Free Crust)', 15, 3, 1, 1),
(79, 'MeatZZa Feast® (Hand Tossed or Thin Crust)', 12, 3, 1, 1),
(80, 'MeatZZa Feast® (Hand Tossed, Handmade Pan or Thin Crust)', 14, 3, 2, 1),
(81, 'MeatZZa Feast® (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 3, 3, 1),
(82, 'MeatZZa Feast® (Brooklyn Style)', 18, 3, 4, 1),
(83, 'MeatZZa Feast® (Gluten Free Crust)', 15, 3, 1, 1),
(84, 'Ultimate Pepperoni Feast™ (Hand Tossed or Thin Crust)', 12, 3, 1, 1),
(85, 'Ultimate Pepperoni Feast™ (Hand Tossed, Handmade Pan or Thin Crust)', 14, 3, 2, 1),
(86, 'Ultimate Pepperoni Feast™ (Hand Tossed, Thin Crust or Brooklyn Style)', 16, 3, 3, 1),
(87, 'Ultimate Pepperoni Feast™ (Brooklyn Style)', 18, 3, 4, 1),
(88, 'Ultimate Pepperoni Feast™ (Gluten Free Crust)', 15, 3, 1, 1),
(89, 'Hand-Tossed', 8, 4, 5, 2),
(90, 'Hand-Tossed', 10, 4, 6, 2),
(91, 'Pan Pizza', 4, 4, 7, 2),
(92, 'Pan Pizza', 8, 4, 5, 2),
(93, 'Pan Pizza', 10, 4, 6, 2),
(94, 'Thin N Crispy', 8, 4, 5, 2),
(95, 'Thin N Crispy', 10, 4, 6, 2),
(96, 'Stuffed Crust', 12, 4, 6, 2),
(97, 'Skinny Slice', 10, 4, 6, 2),
(98, 'Pepperoni Lover\'s® Pizza (Hand-Tossed)', 12, 5, 5, 2),
(99, 'Pepperoni Lover\'s® Pizza (Hand-Tossed)', 15, 5, 6, 2),
(100, 'Pepperoni Lover\'s® Pizza (Pan Pizza)', 5, 5, 7, 2),
(101, 'Pepperoni Lover\'s® Pizza (Pan Pizza)', 12, 5, 5, 2),
(102, 'Pepperoni Lover\'s® Pizza (Pan Pizza)', 15, 5, 6, 2),
(103, 'Pepperoni Lover\'s® Pizza (Thin N Crispy)', 12, 5, 5, 2),
(104, 'Pepperoni Lover\'s® Pizza (Thin N Crispy)', 15, 5, 6, 2),
(105, 'Pepperoni Lover\'s® Pizza (Stuffed Crust)', 17, 5, 6, 2),
(106, 'Pepperoni Lover\'s® Pizza (Skinny Slice)', 15, 5, 6, 2),
(107, 'Meat Lover\'s® Pizza (Hand-Tossed)', 12, 5, 5, 2),
(108, 'Meat Lover\'s® Pizza (Hand-Tossed)', 15, 5, 6, 2),
(109, 'Meat Lover\'s® Pizza (Pan Pizza)', 5, 5, 7, 2),
(110, 'Meat Lover\'s® Pizza (Pan Pizza)', 12, 5, 5, 2),
(111, 'Meat Lover\'s® Pizza (Pan Pizza)', 15, 5, 6, 2),
(112, 'Meat Lover\'s® Pizza (Thin N Crispy)', 12, 5, 5, 2),
(113, 'Meat Lover\'s® Pizza (Thin N Crispy)', 15, 5, 6, 2),
(114, 'Meat Lover\'s® Pizza (Stuffed Crust)', 17, 5, 6, 2),
(115, 'Meat Lover\'s® Pizza (Skinny Slice)', 15, 5, 6, 2),
(116, 'Ultimate Cheese Lover\'s Pizza (Hand-Tossed)', 12, 5, 5, 2),
(117, 'Ultimate Cheese Lover\'s Pizza (Hand-Tossed)', 15, 5, 6, 2),
(118, 'Ultimate Cheese Lover\'s Pizza (Pan Pizza)', 5, 5, 7, 2),
(119, 'Ultimate Cheese Lover\'s Pizza (Pan Pizza)', 12, 5, 5, 2),
(120, 'Ultimate Cheese Lover\'s Pizza (Pan Pizza)', 15, 5, 6, 2),
(121, 'Ultimate Cheese Lover\'s Pizza (Thin N Crispy)', 12, 5, 5, 2),
(122, 'Ultimate Cheese Lover\'s Pizza (Thin N Crispy)', 15, 5, 6, 2),
(123, 'Ultimate Cheese Lover\'s Pizza (Stuffed Crust)', 17, 5, 6, 2),
(124, 'Ultimate Cheese Lover\'s Pizza (Skinny Slice)', 15, 5, 6, 2),
(125, 'Veggie Lover\'s® Pizza (Hand-Tossed)', 12, 5, 5, 2),
(126, 'Veggie Lover\'s® Pizza (Hand-Tossed)', 15, 5, 6, 2),
(127, 'Veggie Lover\'s® Pizza (Pan Pizza)', 5, 5, 7, 2),
(128, 'Veggie Lover\'s® Pizza (Pan Pizza)', 12, 5, 5, 2),
(129, 'Veggie Lover\'s® Pizza (Pan Pizza)', 15, 5, 6, 2),
(130, 'Veggie Lover\'s® Pizza (Thin N Crispy)', 12, 5, 5, 2),
(131, 'Veggie Lover\'s® Pizza (Thin N Crispy)', 15, 5, 6, 2),
(132, 'Veggie Lover\'s® Pizza (Stuffed Crust)', 17, 5, 6, 2),
(133, 'Veggie Lover\'s® Pizza (Skinny Slice)', 15, 5, 6, 2),
(134, 'Supreme Pizza (Hand-Tossed)', 12, 5, 5, 2),
(135, 'Supreme Pizza (Hand-Tossed)', 15, 5, 6, 2),
(136, 'Supreme Pizza (Pan Pizza)', 5, 5, 7, 2),
(137, 'Supreme Pizza (Pan Pizza)', 12, 5, 5, 2),
(138, 'Supreme Pizza (Pan Pizza)', 15, 5, 6, 2),
(139, 'Supreme Pizza (Thin N Crispy)', 12, 5, 5, 2),
(140, 'Supreme Pizza (Thin N Crispy)', 15, 5, 6, 2),
(141, 'Supreme Pizza (Stuffed Crust)', 17, 5, 6, 2),
(142, 'Supreme Pizza (Skinny Slice)', 15, 5, 6, 2),
(143, 'BBQ Lover\'s™ (Hand-Tossed)', 12, 5, 5, 2),
(144, 'BBQ Lover\'s™ (Hand-Tossed)', 15, 5, 6, 2),
(145, 'BBQ Lover\'s™ (Pan Pizza)', 5, 5, 7, 2),
(146, 'BBQ Lover\'s™ (Pan Pizza)', 12, 5, 5, 2),
(147, 'BBQ Lover\'s™ (Pan Pizza)', 15, 5, 6, 2),
(148, 'BBQ Lover\'s™ (Thin N Crispy)', 12, 5, 5, 2),
(149, 'BBQ Lover\'s™ (Thin N Crispy)', 15, 5, 6, 2),
(150, 'BBQ Lover\'s™ (Stuffed Crust)', 17, 5, 6, 2),
(151, 'BBQ Lover\'s™ (Skinny Slice)', 15, 5, 6, 2),
(152, 'Chicken Supreme Pizza (Hand-Tossed)', 13, 5, 5, 2),
(153, 'Chicken Supreme Pizza (Hand-Tossed)', 16, 5, 6, 2),
(154, 'Chicken Supreme Pizza (Pan Pizza)', 5, 5, 7, 2),
(155, 'Chicken Supreme Pizza (Pan Pizza)', 13, 5, 5, 2),
(156, 'Chicken Supreme Pizza (Pan Pizza)', 16, 5, 6, 2),
(157, 'Chicken Supreme Pizza (Thin N Crispy)', 13, 5, 5, 2),
(158, 'Chicken Supreme Pizza (Thin N Crispy)', 16, 5, 6, 2),
(159, 'Chicken Supreme Pizza (Stuffed Crust)', 18, 5, 6, 2),
(160, 'Chicken Supreme Pizza (Skinny Slice)', 16, 5, 6, 2),
(161, 'New Primo Meat Pizza (Hand-Tossed)', 12, 5, 5, 2),
(162, 'New Primo Meat Pizza (Hand-Tossed)', 15, 5, 6, 2),
(163, 'New Primo Meat Pizza (Pan Pizza)', 5, 5, 7, 2),
(164, 'New Primo Meat Pizza (Pan Pizza)', 12, 5, 5, 2),
(165, 'New Primo Meat Pizza (Pan Pizza)', 15, 5, 6, 2),
(166, 'New Primo Meat Pizza (Thin N Crispy)', 12, 5, 5, 2),
(167, 'New Primo Meat Pizza (Thin N Crispy)', 15, 5, 6, 2),
(168, 'New Primo Meat Pizza (Stuffed Crust)', 17, 5, 6, 2),
(169, 'New Primo Meat Pizza (Skinny Slice)', 15, 5, 6, 2),
(170, 'Hawaiian Luau (Hand-Tossed)', 12, 5, 5, 2),
(171, 'Hawaiian Luau (Hand-Tossed)', 15, 5, 6, 2),
(172, 'Hawaiian Luau (Pan Pizza)', 5, 5, 7, 2),
(173, 'Hawaiian Luau (Pan Pizza)', 12, 5, 5, 2),
(174, 'Hawaiian Luau (Pan Pizza)', 15, 5, 6, 2),
(175, 'Hawaiian Luau (Thin N Crispy)', 12, 5, 5, 2),
(176, 'Hawaiian Luau (Thin N Crispy)', 15, 5, 6, 2),
(177, 'Hawaiian Luau (Stuffed Crust)', 17, 5, 6, 2),
(178, 'Hawaiian Luau (Skinny Slice)', 15, 5, 6, 2),
(179, 'Super Supreme Pizza (Hand-Tossed)', 13, 5, 5, 2),
(180, 'Super Supreme Pizza (Hand-Tossed)', 16, 5, 6, 2),
(181, 'Super Supreme Pizza (Pan Pizza)', 5, 5, 7, 2),
(182, 'Super Supreme Pizza (Pan Pizza)', 13, 5, 5, 2),
(183, 'Super Supreme Pizza (Pan Pizza)', 16, 5, 6, 2),
(184, 'Super Supreme Pizza (Thin N Crispy)', 13, 5, 5, 2),
(185, 'Super Supreme Pizza (Thin N Crispy)', 16, 5, 6, 2),
(186, 'Super Supreme Pizza (Stuffed Crust)', 18, 5, 6, 2),
(187, 'Super Supreme Pizza (Skinny Slice)', 16, 5, 6, 2),
(188, 'Garden Party™ (Thin N Crispy)', 12, 6, 5, 2),
(189, 'Garden Party™ (Thin N Crispy)', 15, 6, 6, 2),
(190, 'Old Fashioned Meatbrawl™ (Pan Pizza)', 5, 6, 7, 2),
(191, 'Old Fashioned Meatbrawl™ (Pan Pizza)', 12, 6, 5, 2),
(192, 'Old Fashioned Meatbrawl™ (Pan Pizza)', 15, 6, 6, 2),
(193, 'Cock-a-doodle Bacon™ (Hand-Tossed)', 12, 6, 5, 2),
(194, 'Cock-a-doodle Bacon™ (Hand-Tossed)', 15, 6, 6, 2),
(195, 'Hot and Twisted™ (Hand-Tossed)', 12, 6, 5, 2),
(196, 'Hot and Twisted™ (Hand-Tossed)', 15, 6, 6, 2),
(197, 'Pretzel Piggy™ (Hand-Tossed)', 12, 6, 5, 2),
(198, 'Pretzel Piggy™ (Hand-Tossed)', 15, 6, 6, 2),
(199, 'BBQ Bacon Cheeseburger (Hand-Tossed)', 12, 6, 5, 2),
(200, 'BBQ Bacon Cheeseburger (Hand-Tossed)', 15, 6, 6, 2),
(201, 'Giddy-Up BBQ Chicken™ (Hand-Tossed)', 12, 6, 5, 2),
(202, 'Giddy-Up BBQ Chicken™ (Hand-Tossed)', 15, 6, 6, 2),
(203, 'Buffalo State of Mind™ (Hand-Tossed)', 12, 6, 5, 2),
(204, 'Buffalo State of Mind™ (Hand-Tossed)', 15, 6, 6, 2),
(205, 'Cherry Pepper Bombshell™ (Thin N Crispy)', 12, 6, 5, 2),
(206, 'Cherry Pepper Bombshell™ (Thin N Crispy)', 15, 6, 6, 2),
(207, '7-Alarm Fire™ (Hand-Tossed)', 12, 6, 5, 2),
(208, '7-Alarm Fire™ (Hand-Tossed)', 15, 6, 6, 2),
(209, 'Skinny Beach™ (Skinny Slice)', 15, 7, 6, 2),
(210, 'Skinny With A Kick™ (Skinny Slice)', 15, 7, 6, 2),
(211, 'Skinny Italy (Skinny Slice)', 15, 7, 6, 2),
(212, 'Skinny Luau™ (Skinny Slice)', 15, 7, 6, 2),
(213, 'Skinny Club™ (Skinny Slice)', 15, 7, 6, 2),
(214, 'Create Your Own (Gluten-Free Crust)', 10, 8, 8, 2),
(215, 'Cheese (Original Crust)', 5, 4, 9, 3),
(216, 'Cheese (Original or Golden Crust)', 11, 4, 8, 3),
(217, 'Cheese (Original, Golden or Thin Crust)', 13, 4, 5, 3),
(218, 'Cheese (Mozza-Loaded Crust)', 13, 4, 5, 3),
(219, 'Cheese (Original, Golden or Thin Crust)', 16, 4, 6, 3),
(220, 'Cheese (Mozza-Loaded Crust)', 16, 4, 6, 3),
(221, 'Cheese (Original or Thin Crust)', 19, 4, 10, 3),
(222, 'All-Meat Combo Pizza (Original Crust)', 6, 2, 9, 3),
(223, 'All-Meat Combo Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(224, 'All-Meat Combo Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(225, 'All-Meat Combo Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(226, 'All-Meat Combo Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(227, 'All-Meat Combo Pizza (Mozza-Loaded Crust)', 28, 2, 6, 3),
(228, 'Bacon Cheeseburger Pizza (Original Crust)', 6, 2, 9, 3),
(229, 'Bacon Cheeseburger Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(230, 'Bacon Cheeseburger Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(231, 'Bacon Cheeseburger Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(232, 'Bacon Cheeseburger Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(233, 'Bacon Cheeseburger Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(234, 'Bacon Cheeseburger Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(235, 'Taco Pie Pizza (Original Crust)', 6, 2, 9, 3),
(236, 'Taco Pie Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(237, 'Taco Pie Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(238, 'Taco Pie Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(239, 'Taco Pie Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(240, 'Taco Pie Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(241, 'Taco Pie Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(242, 'Classic Combo Pizza (Original Crust)', 6, 2, 9, 3),
(243, 'Classic Combo Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(244, 'Classic Combo Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(245, 'Classic Combo Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(246, 'Classic Combo Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(247, 'Classic Combo Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(248, 'Classic Combo Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(249, 'Humble Pie Pizza (Original Crust)', 6, 2, 9, 3),
(250, 'Humble Pie Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(251, 'Humble Pie Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(252, 'Humble Pie Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(253, 'Humble Pie Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(254, 'Humble Pie Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(255, 'Humble Pie Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(256, 'Veggie Pie Pizza (Original Crust)', 6, 2, 9, 3),
(257, 'Veggie Pie Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(258, 'Veggie Pie Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(259, 'Veggie Pie Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(260, 'Veggie Pie Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(261, 'Veggie Pie Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(262, 'Veggie Pie Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(263, 'Hot Stuff Pizza (Original Crust)', 6, 2, 9, 3),
(264, 'Hot Stuff Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(265, 'Hot Stuff Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(266, 'Hot Stuff Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(267, 'Hot Stuff Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(268, 'Hot Stuff Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(269, 'Hot Stuff Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(270, 'Hawaiian Pizza (Original Crust)', 6, 2, 9, 3),
(271, 'Hawaiian Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(272, 'Hawaiian Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(273, 'Hawaiian Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(274, 'Hawaiian Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(275, 'Hawaiian Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(276, 'Hawaiian Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(277, 'BLT Pizza (Original Crust)', 6, 2, 9, 3),
(278, 'BLT Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(279, 'BLT Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(280, 'BLT Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(281, 'BLT Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(282, 'BLT Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(283, 'BLT Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(284, 'Buffalo Chicken Pizza (Original Crust)', 6, 2, 9, 3),
(285, 'Buffalo Chicken Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(286, 'Buffalo Chicken Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(287, 'Buffalo Chicken Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(288, 'Buffalo Chicken Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(289, 'Buffalo Chicken Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(290, 'Buffalo Chicken Pizza (Original or Thin Crust)', 28, 2, 10, 3),
(291, 'Super Combo Pizza (Original or Golden Crust)', 17, 2, 8, 3),
(292, 'Super Combo Pizza (Original, Golden or Thin Crust)', 22, 2, 5, 3),
(293, 'Super Combo Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(294, 'Super Combo Pizza (Original, Golden or Thin Crust)', 26, 2, 6, 3),
(295, 'Super Combo Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(296, 'Super Combo Pizza (Original or Thin Crust)', 30, 2, 10, 3),
(297, 'Super Hawaiian Pizza (Original or Golden Crust)', 17, 2, 8, 3),
(298, 'Super Hawaiian Pizza (Original, Golden or Thin Crust)', 22, 2, 5, 3),
(299, 'Super Hawaiian Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(300, 'Super Hawaiian Pizza (Original, Golden or Thin Crust)', 26, 2, 6, 3),
(301, 'Super Hawaiian Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(302, 'Super Hawaiian Pizza (Original or Thin Crust)', 30, 2, 10, 3),
(303, 'Super Taco Pizza (Original or Golden Crust)', 17, 2, 8, 3),
(304, 'Super Taco Pizza (Original, Golden or Thin Crust)', 22, 2, 5, 3),
(305, 'Super Taco Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(306, 'Super Taco Pizza (Original, Golden or Thin Crust)', 26, 2, 6, 3),
(307, 'Super Taco Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(308, 'Super Taco Pizza (Original or Thin Crust)', 30, 2, 10, 3),
(309, 'The Don (Original or Golden Crust)', 17, 2, 8, 3),
(310, 'The Don (Original, Golden or Thin Crust)', 22, 2, 5, 3),
(311, 'The Don (Mozza-Loaded Crust)', 22, 2, 5, 3),
(312, 'The Don (Original, Golden or Thin Crust)', 26, 2, 6, 3),
(313, 'The Don (Mozza-Loaded Crust)', 26, 2, 6, 3),
(314, 'The Don (Original or Thin Crust)', 30, 2, 10, 3),
(315, 'Super Veggie Pizza (Original or Golden Crust)', 16, 2, 8, 3),
(316, 'Super Veggie Pizza (Original, Golden or Thin Crust)', 21, 2, 5, 3),
(317, 'Super Veggie Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(318, 'Super Veggie Pizza (Original, Golden or Thin Crust)', 25, 2, 6, 3),
(319, 'Super Veggie Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(320, 'Super Veggie Pizza (Original or Thin Crust)', 29, 2, 10, 3),
(321, 'BBQ Bacon Cheeseburger Pizza (Original Crust)', 6, 2, 9, 3),
(322, 'BBQ Bacon Cheeseburger Pizza (Original, Golden or Thin Crust)', 16, 2, 8, 3),
(323, 'BBQ Bacon Cheeseburger Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(324, 'BBQ Bacon Cheeseburger Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(325, 'BBQ Bacon Cheeseburger Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(326, 'BBQ Bacon Cheeseburger Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(327, 'BBQ Bacon Cheeseburger Pizza (Original, Golden or Thin Crust)', 28, 2, 10, 3),
(328, 'Chipotle Chicken and Bacon Pizza (Original Crust)', 6, 2, 9, 3),
(329, 'Chipotle Chicken and Bacon Pizza (Original, Golden or Thin Crust)', 16, 2, 8, 3),
(330, 'Chipotle Chicken and Bacon Pizza (Original, Golden or Thin Crust)', 20, 2, 5, 3),
(331, 'Chipotle Chicken and Bacon Pizza (Mozza-Loaded Crust)', 22, 2, 5, 3),
(332, 'Chipotle Chicken and Bacon Pizza (Original, Golden or Thin Crust)', 24, 2, 6, 3),
(333, 'Chipotle Chicken and Bacon Pizza (Mozza-Loaded Crust)', 26, 2, 6, 3),
(334, 'Chipotle Chicken and Bacon Pizza (Original, Golden or Thin Crust)', 28, 2, 10, 3),
(335, 'Margherita Pizza (Original, Golden or Thin Crust)', 10, 2, 5, 3),
(336, 'Margherita Pizza (Thin Crust)', 14, 2, 6, 3),
(337, 'Margherita Chicken Pizza (Original, Golden or Thin Crust)', 12, 2, 5, 3),
(338, 'Margherita Chicken Pizza (Thin Crust)', 16, 2, 6, 3),
(339, 'Thin Crust', 20, 8, 5, 3),
(340, 'Thin Crust', 24, 8, 6, 3),
(341, 'Original Crust', 5, 9, 9, 3),
(342, 'Original or Golden Crust', 13, 9, 8, 3),
(343, 'Original, Golden or Thin Crust', 15, 9, 5, 3),
(344, 'Mozza-Loaded Crust', 15, 9, 5, 3),
(345, 'Original, Golden or Thin Crust', 19, 9, 6, 3),
(346, 'Mozza-Loaded Crust', 19, 9, 6, 3),
(347, 'Original or Thin Crust', 22, 9, 10, 3),
(348, 'Deluxe Pizza', 13, 2, 1, 4),
(349, 'Deluxe Pizza', 16, 2, 2, 4),
(350, 'Deluxe Pizza', 20, 2, 3, 4),
(351, 'Deluxe Pizza', 24, 2, 11, 4),
(352, 'Veggie Pizza', 13, 2, 1, 4),
(353, 'Veggie Pizza', 16, 2, 2, 4),
(354, 'Veggie Pizza', 20, 2, 3, 4),
(355, 'Veggie Pizza', 24, 2, 11, 4),
(356, 'Cheese Pizza', 9, 2, 1, 4),
(357, 'Cheese Pizza', 12, 2, 2, 4),
(358, 'Cheese Pizza', 14, 2, 3, 4),
(359, 'Cheese Pizza', 17, 2, 11, 4),
(360, 'All Meat Pizza', 13, 2, 1, 4),
(361, 'All Meat Pizza', 16, 2, 2, 4),
(362, 'All Meat Pizza', 20, 2, 3, 4),
(363, 'All Meat Pizza', 24, 2, 11, 4),
(364, 'BBQ Chicken Pizza', 13, 2, 1, 4),
(365, 'BBQ Chicken Pizza', 16, 2, 2, 4),
(366, 'BBQ Chicken Pizza', 19, 2, 3, 4),
(367, 'BBQ Chicken Pizza', 24, 2, 11, 4),
(368, 'Egg-Ceptional Pizza', 12, 2, 1, 4),
(369, 'Egg-Ceptional Pizza', 15, 2, 2, 4),
(370, 'Egg-Ceptional Pizza', 19, 2, 3, 4),
(371, 'Egg-Ceptional Pizza', 22, 2, 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id_size` int(11) NOT NULL,
  `size_pizza` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id_size`, `size_pizza`) VALUES
(1, 'Small (10\")'),
(2, 'Medium (12\")'),
(3, 'Large (14\")'),
(4, 'X-Large (16\")'),
(5, 'Medium'),
(6, 'Large'),
(7, 'Personal'),
(8, 'Small'),
(9, 'Mini'),
(10, 'Jumbo'),
(11, 'X Large (16\")');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `type_pizza` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `type_pizza`) VALUES
(1, 'Cheeses Pizza'),
(2, 'Specialty Pizzas'),
(3, 'Feast Pizzas'),
(4, 'Cheese Pizza'),
(5, 'Classic Recipe Pizzas'),
(6, 'New Recipe Pizzas'),
(7, 'Skinny Pizzas'),
(8, 'Gluten-Free Pizzas'),
(9, 'Express Favorites');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pizza_dominos`
-- (See below for the actual view)
--
CREATE TABLE `view_pizza_dominos` (
`nom_pizza` varchar(100)
,`price` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_pizza_dominos`
--
DROP TABLE IF EXISTS `view_pizza_dominos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pizza_dominos`  AS SELECT `pizza`.`nom_pizza` AS `nom_pizza`, `pizza`.`price` AS `price` FROM `pizza` WHERE (`pizza`.`id_company` = 1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id_pizza`),
  ADD KEY `id_company` (`id_company`),
  ADD KEY `id_size` (`id_size`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id_pizza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pizza`
--
ALTER TABLE `pizza`
  ADD CONSTRAINT `pizza_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `company` (`id_company`),
  ADD CONSTRAINT `pizza_ibfk_2` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `pizza_ibfk_3` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
