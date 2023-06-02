-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2023 at 11:09 PM
-- Server version: 5.7.42
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nh529_marketPlaceItems`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pic_name` varchar(255) DEFAULT NULL,
  `description` text,
  `seller` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `pic_name`, `description`, `seller`, `date`) VALUES
(1, 'Laptop', '500.00', 'uploads/laptop.png', 'Used, good condition', 'seller1', '2023-06-01 16:28:50'),
(2, 'Textbook', '40.00', 'uploads/textbook.png', 'Barely used textbook for physics', 'seller2', '2023-06-01 16:28:50'),
(3, 'Bicycle', '120.00', 'uploads/bicycle.png', 'Great for campus travel', 'seller3', '2023-06-01 16:28:50'),
(4, 'Microwave', '50.00', 'uploads/microwave.png', 'Perfect for a dorm room', 'seller4', '2023-06-01 16:28:50'),
(5, 'Mini Fridge', '70.00', 'uploads/fridge.png', 'A must-have for any dorm room', 'seller5', '2023-06-01 16:28:50'),
(6, 'Office Chair', '80.00', 'uploads/chair.png', 'Comfortable for studying', 'seller6', '2023-06-01 16:28:50'),
(7, 'Study Lamp', '20.00', 'uploads/lamp.png', 'Perfect for late-night study sessions', 'seller7', '2023-06-01 16:28:50'),
(8, 'Printer', '80.00', 'uploads/printer.png', 'In good condition, with ink', 'seller8', '2023-06-01 16:28:50'),
(9, 'HDMI Cable', '10.00', 'uploads/hdmi.png', 'Useful for presentations', 'seller9', '2023-06-01 16:28:50'),
(10, 'Backpack', '40.00', 'uploads/backpack.png', 'Durable and spacious', 'seller10', '2023-06-01 16:28:50'),
(11, 'Wireless Mouse', '15.00', 'uploads/mouse.png', 'Comfortable for long usage', 'seller11', '2023-06-01 16:28:50'),
(12, 'External Hard Drive', '60.00', 'uploads/harddrive.png', 'Extra storage for your files', 'seller12', '2023-06-01 16:28:50'),
(13, 'Notebooks', '10.00', 'uploads/notebooks.png', 'For all your note taking needs', 'seller13', '2023-06-01 16:28:50'),
(14, 'Mechanical Pencil', '5.00', 'uploads/pencil.png', 'Great for note taking and drawing', 'seller14', '2023-06-01 16:28:50'),
(15, 'Water Bottle', '10.00', 'uploads/waterbottle.png', 'Stay hydrated', 'seller15', '2023-06-01 16:28:50'),
(16, 'Earphones', '30.00', 'uploads/earphones.png', 'For music on the go', 'seller16', '2023-06-01 16:28:50'),
(17, 'USB Flash Drive', '15.00', 'uploads/usb.png', 'For carrying your digital files', 'seller17', '2023-06-01 16:28:50'),
(18, 'Cell Phone Stand', '10.00', 'uploads/stand.png', 'Hold your phone while you study', 'seller18', '2023-06-01 16:28:50'),
(19, 'Laptop Stand', '25.00', 'uploads/laptopstand.png', 'For comfortable typing', 'seller19', '2023-06-01 16:28:50'),
(20, 'Desk Organizer', '20.00', 'uploads/organizer.png', 'Keep your desk tidy', 'seller20', '2023-06-01 16:28:50'),
(21, 'Coffee Maker', '35.00', 'uploads/coffeemaker.png', 'Essential for late study nights', 'seller21', '2023-06-01 16:28:50'),
(22, 'Calculator', '30.00', 'uploads/calculator.png', 'Perfect for engineering students', 'seller22', '2023-06-01 16:28:50'),
(23, 'Pencil Case', '10.00', 'uploads/pencilcase.png', 'Keep all your stationery organized', 'seller23', '2023-06-01 16:28:50'),
(24, 'Post-it Notes', '5.00', 'uploads/postit.png', 'For reminders and notes', 'seller24', '2023-06-01 16:28:50'),
(25, 'Markers Set', '15.00', 'uploads/markers.png', 'For highlighting and coloring', 'seller25', '2023-06-01 16:28:50'),
(26, 'Lunch Box', '20.00', 'uploads/lunchbox.png', 'Pack your meals and save money', 'seller26', '2023-06-01 16:28:50'),
(27, 'Umbrella', '15.00', 'uploads/umbrella.png', 'For rainy days', 'seller27', '2023-06-01 16:28:50'),
(28, 'Bedside Lamp', '25.00', 'uploads/bedlamp.png', 'Useful for late night reading', 'seller28', '2023-06-01 16:28:50'),
(29, 'Yoga Mat', '30.00', 'uploads/yogamat.png', 'For workouts and meditation', 'seller29', '2023-06-01 16:28:50'),
(30, 'Hoodie', '35.00', 'uploads/hoodie.png', 'Stay warm and cozy', 'seller30', '2023-06-01 16:28:50'),
(31, 'Running Shoes', '60.00', 'uploads/runningshoes.png', 'Perfect for the gym', 'seller31', '2023-06-01 16:28:50'),
(32, 'Bluetooth Speaker', '45.00', 'uploads/speaker.png', 'Great sound quality', 'seller32', '2023-06-01 16:28:50'),
(33, 'Watch', '100.00', 'uploads/watch.png', 'Keep track of time', 'seller33', '2023-06-01 16:28:50'),
(34, 'Shower Caddy', '15.00', 'uploads/showercaddy.png', 'Organize your bathroom essentials', 'seller34', '2023-06-01 16:28:50'),
(35, 'Coat Rack', '20.00', 'uploads/coatrack.png', 'Hang your coats and bags', 'seller35', '2023-06-01 16:28:50'),
(36, 'Laundry Bag', '15.00', 'uploads/laundrybag.png', 'Keep your dirty clothes organized', 'seller36', '2023-06-01 16:28:50'),
(37, 'Portable Charger', '25.00', 'uploads/portablecharger.png', 'Stay charged on the go', 'seller37', '2023-06-01 16:28:50'),
(38, 'Alarm Clock', '20.00', 'uploads/alarmclock.png', 'Never miss your morning class', 'seller38', '2023-06-01 16:28:50'),
(39, 'Yoga Ball', '30.00', 'uploads/yogaball.png', 'Stay fit', 'seller39', '2023-06-01 16:28:50'),
(40, 'Gym Bag', '40.00', 'uploads/gymbag.png', 'Carry your workout essentials', 'seller40', '2023-06-01 16:28:50'),
(41, 'Corkscrew', '10.00', 'uploads/corkscrew.png', 'Essential for wine lovers', 'seller41', '2023-06-01 16:28:50'),
(42, 'French Press', '25.00', 'uploads/frenchpress.png', 'Make your own coffee', 'seller42', '2023-06-01 16:28:50'),
(43, 'Bed Sheets', '35.00', 'uploads/bedsheets.png', 'Stay comfortable and warm', 'seller43', '2023-06-01 16:28:50'),
(44, 'Plants', '20.00', 'uploads/plants.png', 'Bring life to your room', 'seller44', '2023-06-01 16:28:50'),
(45, 'Hair Dryer', '30.00', 'uploads/hairdryer.png', 'For a quick dry and style', 'seller45', '2023-06-01 16:28:50'),
(46, 'Electric Kettle', '25.00', 'uploads/kettle.png', 'Quickly boil water', 'seller46', '2023-06-01 16:28:50'),
(47, 'Wireless Keyboard', '50.00', 'uploads/keyboard.png', 'Comfortable typing', 'seller47', '2023-06-01 16:28:50'),
(48, 'Sleeping Mask', '10.00', 'uploads/sleepmask.png', 'Sleep better', 'seller48', '2023-06-01 16:28:50'),
(49, 'Stationery Set', '20.00', 'uploads/stationery.png', 'For all your writing needs', 'seller49', '2023-06-01 16:28:50'),
(50, 'Mirror', '30.00', 'uploads/mirror.png', 'A full-length mirror for your room', 'seller50', '2023-06-01 16:28:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
