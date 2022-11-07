-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 03:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `court_case_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `admin_last_name` varchar(155) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(122) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `phone_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_first_name`, `admin_last_name`, `email`, `password`, `phone_no`) VALUES
(1, 'test', 'test', 'test@test', '$2y$10$TraCEh6Dmy74N9.JhDWxLO/XCTi45hZhFYUbKVyLLf8Ryvg/c3DTi', 0),
(2, 'test2', 'test2', 'test2@test2', '$2y$10$YKcA3jx8imPGQJN/OKF4sOYfXM/cHTNLl0LyqBF6wo.E4w6sw0/BW', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_id` int(11) NOT NULL,
  `case_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `case_details` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `next_hearing_date` date NOT NULL,
  `prev_hearing_date` date NOT NULL,
  `case_status` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `court_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `lawyer_id_assigned` int(11) NOT NULL,
  `lawyer_status` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `clientforcase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`case_id`, `case_type`, `case_details`, `next_hearing_date`, `prev_hearing_date`, `case_status`, `court_name`, `lawyer_id_assigned`, `lawyer_status`, `clientforcase_id`) VALUES
(12, 'Murder', 'hsdhfdshfg', '0000-00-00', '0000-00-00', 'pending', 'AndhraPradesh', 1, 'accepted', 1),
(13, 'Crime', 'Slapped Tapsee', '0000-00-00', '0000-00-00', 'finished', 'TELANGANA ', 1, 'accepted', 5);

-- --------------------------------------------------------

--
-- Table structure for table `case_invoices`
--

CREATE TABLE `case_invoices` (
  `case_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `image_proof` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_first_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `client_last_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `client_email` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `client_password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `phone_no` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_first_name`, `client_last_name`, `client_email`, `client_password`, `phone_no`, `address`) VALUES
(1, 'shaik', 'Younus', 'shaik@gmail.com', '$2y$10$AfzhcOKRLVlFbWTq5kDju.Eu4EyLBVWOp82dxXx1bwrJICrK4Hvna', 2147483647, ''),
(5, 'dfhgd', 'shgsjfag', 'y@gmail.com', '$2y$10$QOePt7kZRKkzPnybgyHLt.oZVYqlxIbl4yDXEoMTl7yIoiooTFHb.', 1234512451, '');

-- --------------------------------------------------------

--
-- Table structure for table `client_notifications`
--

CREATE TABLE `client_notifications` (
  `client_id` int(11) NOT NULL,
  `notifications` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `feedback_id` int(11) NOT NULL,
  `feedback_content` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `lawyer_id` int(11) NOT NULL,
  `retainer` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `hearing` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `consulting` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`lawyer_id`, `retainer`, `hearing`, `consulting`, `invoice_id`) VALUES
(1, '0', '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_login`
--

CREATE TABLE `lawyer_login` (
  `lawyer_id` int(11) NOT NULL,
  `lawyer_first_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `lawyer_last_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `lawyer_password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lawyer_city` int(11) NOT NULL,
  `lawyer_address` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `lawyer_phone_no` int(11) NOT NULL,
  `lawyer_rating` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `specialization` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `lawyer_image` blob NOT NULL,
  `lawyer_email` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `lawyer_login`
--

INSERT INTO `lawyer_login` (`lawyer_id`, `lawyer_first_name`, `lawyer_last_name`, `lawyer_password`, `lawyer_city`, `lawyer_address`, `lawyer_phone_no`, `lawyer_rating`, `specialization`, `lawyer_image`, `lawyer_email`) VALUES
(1, 'wert', 'qwrt', '$2y$10$PWKFycfHRdsZmTujPMWDweV44WfH6j2RY49HOVHyLOhvxOlRymwV2', 0, '', 0, '', '', '', 'b@gmail.com'),
(11, 'hgsvsghfv', 'jgfadsgf', '$2y$10$Y4dziUAGkA1He4CvRjlQsOvt0CqU3r25EHuplYQ9Csr7OnoC1bIJC', 0, '', 0, '', '', '', 'm@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_notifications`
--

CREATE TABLE `lawyer_notifications` (
  `lawyer_id` int(11) NOT NULL,
  `notification` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notif_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `case_type` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `case_detail` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `lawyer_id` int(11) NOT NULL,
  `accepted_status` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notif_id`, `client_id`, `case_type`, `case_detail`, `lawyer_id`, `accepted_status`) VALUES
(1, 1, 'Murder', 'hsdhfdshfg', 1, 'accepted'),
(2, 5, 'Crime', 'Slapped Tapsee', 1, 'accepted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `case_invoices`
--
ALTER TABLE `case_invoices`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `client_notifications`
--
ALTER TABLE `client_notifications`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `lawyer_login`
--
ALTER TABLE `lawyer_login`
  ADD PRIMARY KEY (`lawyer_id`);

--
-- Indexes for table `lawyer_notifications`
--
ALTER TABLE `lawyer_notifications`
  ADD PRIMARY KEY (`lawyer_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notif_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `case_invoices`
--
ALTER TABLE `case_invoices`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client_notifications`
--
ALTER TABLE `client_notifications`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lawyer_login`
--
ALTER TABLE `lawyer_login`
  MODIFY `lawyer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lawyer_notifications`
--
ALTER TABLE `lawyer_notifications`
  MODIFY `lawyer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notif_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `case_invoices`
--
ALTER TABLE `case_invoices`
  ADD CONSTRAINT `foreign_key_to_case_id` FOREIGN KEY (`case_id`) REFERENCES `cases` (`case_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
