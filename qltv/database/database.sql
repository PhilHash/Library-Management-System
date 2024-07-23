-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 08:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LMS`
--
CREATE DATABASE IF NOT EXISTS `LMS` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `LMS`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`BookId`, `Author`) VALUES
(1, 'Phùng Quán'),
(2, 'Nam Cao'),
(3, 'Phùng Quán'),
(4, 'Nguyễn Du'),
(5, 'Ernest Hemingway'),
(6, 'Nam Cao'),
(7, 'Nam Cao'),
(8, 'Nguyễn Du'),
(9, 'Ernest Hemingway'),
(10, 'Nguyễn Nhật Ánh'),
(11, 'Nguyễn Nhật Ánh'),
(12, 'Hạ Trang');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Availability` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `Title`, `Publisher`, `Year`, `Availability`) VALUES
(1, 'Tuổi thơ dữ dội', 'Hồ Chí Minh', '2002', 5),
(2, 'Sống mòn', 'Hà Nội', '2003', 4),
(3, 'Vượt côn đảo', 'Hồ Chí Minh', '2003', 1),
(4, 'Kim Vân Kiều', 'Hồ Chí Minh', '2003', 0),
(5, 'Ông Già Và Biển Cả', 'Kim Đồng', '2002', 1),
(6, 'Chí Phèo', 'Kim Đồng', '2001', 7),
(7, 'Lão Hạc', 'Hồ Chí Minh', '2002', 7),
(8, 'Truyện Kiều', 'Kim Đồng', '2005', 7),
(9, 'Mặt trời vẫn mọc', 'Hồ Chí Minh', '2001', 3),
(10, 'Cho tôi xin một vé đi tuổi thơ', 'Hồ Chí Minh', '2006', 3),
(11, 'Tôi thấy hoa vàng trên cỏ xanh', 'Hồ Chí Minh', '2010', 7),
(12, 'Chồng Xứ Lạ', 'Hồ Chí Minh', '2010', 6);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`M_Id`, `RollNo`, `Msg`, `Date`, `Time`) VALUES
(1, 'user01', 'Yêu cầu cho id sách: 1  đã được chấp nhận', '2024-06-15', '23:47:40'),
(2, 'user02', 'Yêu cầu cho id sách: 1  đã được chấp nhận', '2024-06-15', '23:47:50'),
(3, 'user01', 'Yêu cầu cho id sách: 2  đã bị từ chối', '2024-06-15', '23:47:58'),
(4, 'user04', 'Yêu cầu cho id sách: 3  đã được chấp nhận', '2024-06-16', '16:54:29'),
(5, 'user05', 'Yêu cầu cho id sách: 2  đã được chấp nhận', '2024-06-16', '16:54:58'),
(6, 'user06', 'Yêu cầu cho id sách: 6  đã được chấp nhận', '2024-06-16', '21:56:11'),
(7, 'user02', 'Yêu cầu cho id sách: 6 đã được chấp nhận', '2024-06-16', '22:11:12'),
(8, 'user07', 'Yêu cầu làm mới cho id sách: 1  đã được chấp nhận', '2024-06-16', '22:43:24'),
(9, 'user03', 'Yêu cầu trả id sách: 6  đã được chấp nhận', '2024-06-16', '22:44:24'),
(10, 'user02', 'Yêu cầu làm mới cho id sách: 1  đã được chấp nhận', '2024-06-16', '23:05:12'),
(11, 'user03', 'Yêu cầu làm mới cho id sách: 1  đã được chấp nhận', '2024-05-16', '23:09:51'),
(12, 'user01', 'Yêu cầu trả id sách: 6  đã được chấp nhận', '2024-05-16', '23:10:27'),
(13, 'user04', 'Yêu cầu trả id sách: 2  đã được chấp nhận', '2024-05-16', '23:36:10'),
(14, 'user05', 'Yêu cầu mượn id sách: 1  đã bị từ chối', '2024-06-16', '23:36:20'),
(15, 'user03', 'Yêu cầu mượn id sách: 3  đã bị từ chối', '2024-06-16', '23:43:37'),
(16, 'user03', 'Yêu cầu mượn id sách: 6  đã bị từ chối', '2024-03-16', '23:43:42'),
(34, 'user01', 'Yêu cầu mượn: 11  đã được chấp nhận', '2024-07-09', '09:28:32'),
(35, 'user01', 'Yêu cầu mượn: 6  đã được chấp nhận', '2024-07-09', '09:28:33'),
(36, 'user01', 'Yêu cầu mượn: 12  đã được chấp nhận', '2024-07-09', '09:28:33'),
(37, 'user02', 'Yêu cầu mượn: 7  đã được chấp nhận', '2024-07-09', '09:28:34'),
(38, 'user05', 'Yêu cầu mượn: 2 đã được chấp nhận', '2024-07-09', '09:28:35'),
(39, 'user04', 'Yêu cầu mượn: 12 đã được chấp nhận', '2024-07-09', '09:28:37'),
(40, 'user04', 'Yêu cầu mượn: 4 đã được chấp nhận', '2024-07-09', '09:28:39'),
(41, 'user07', 'Yêu cầu mượn: 6 đã được chấp nhận', '2024-07-09', '09:28:41'),
(42, 'user05', 'Yêu cầu mượn: 11 đã được chấp nhận', '2024-07-09', '09:28:43'),
(43, 'user02', 'Yêu cầu mượn sách với id: 6  bị từ chối', '2024-07-09', '09:28:45'),
(44, 'user04', 'Yêu cầu mượn sách với id: 7  bị từ chối', '2024-07-09', '09:28:46'),
(45, 'user07', 'Yêu cầu mượn sách với id: 9  bị từ chối', '2024-07-09', '09:28:46'),
(46, 'user01', 'Yêu cầu mượn: 8  đã được chấp nhận', '2024-07-22', '13:20:16'),
(47, 'user01', 'Yêu cầu mượn: 7  đã được chấp nhận', '2024-07-22', '13:20:18'),
(48, 'user01', 'Yêu cầu mượn: 5  đã được chấp nhận', '2024-07-22', '13:20:20'),
(49, 'user01', 'Yêu cầu mượn: 11  đã được chấp nhận', '2024-07-22', '13:47:52'),
(50, 'user01', 'Yêu cầu mượn: 8  đã được chấp nhận', '2024-07-22', '13:47:53'),
(51, 'user01', 'Yêu cầu mượn: 12  đã được chấp nhận', '2024-07-22', '13:47:54'),
(52, 'user01', 'Yêu cầu mượn: 7  đã được chấp nhận', '2024-07-22', '13:47:55'),
(53, 'user01', 'Yêu cầu mượn: 1  đã được chấp nhận', '2024-07-22', '13:47:55'),
(54, 'user01', 'Yêu cầu mượn: 3  đã được chấp nhận', '2024-07-22', '13:47:56'),
(55, 'user01', 'Your request for return of BookId: 7  has been accepted', '2024-07-22', '13:48:56'),
(56, 'user01', 'Yêu cầu mượn: 6  đã được chấp nhận', '2024-07-22', '13:49:23'),
(57, 'user01', 'Yêu cầu mượn: 5  đã được chấp nhận', '2024-07-22', '13:50:55'),
(58, 'user01', 'Yêu cầu mượn: 7  đã được chấp nhận', '2024-07-22', '13:50:56'),
(59, 'user02', 'Yêu cầu mượn: 11  đã được chấp nhận', '2024-07-22', '13:50:56'),
(60, 'user02', 'Yêu cầu mượn: 8  đã được chấp nhận', '2024-07-22', '13:50:57'),
(61, 'user02', 'Yêu cầu mượn: 12  đã được chấp nhận', '2024-07-22', '13:50:58'),
(62, 'user02', 'Yêu cầu mượn: 7  đã được chấp nhận', '2024-07-22', '13:50:59'),
(63, 'user03', 'Yêu cầu mượn: 11 đã được chấp nhận', '2024-07-22', '13:51:00'),
(64, 'user03', 'Yêu cầu mượn: 8 đã được chấp nhận', '2024-07-22', '13:51:01'),
(65, 'user03', 'Yêu cầu mượn: 12 đã được chấp nhận', '2024-07-22', '13:51:04'),
(66, 'user04', 'Yêu cầu mượn: 2 đã được chấp nhận', '2024-07-22', '13:51:06'),
(67, 'user04', 'Yêu cầu mượn: 3 đã được chấp nhận', '2024-07-22', '13:51:08'),
(68, 'user05', 'Yêu cầu mượn: 5 đã được chấp nhận', '2024-07-22', '13:51:10'),
(69, 'user05', 'Yêu cầu mượn: 9 đã được chấp nhận', '2024-07-22', '13:51:11'),
(70, 'user07', 'Yêu cầu mượn: 6 đã được chấp nhận', '2024-07-22', '13:51:13'),
(71, 'user07', 'Yêu cầu mượn: 8 đã được chấp nhận', '2024-07-22', '13:51:14'),
(72, 'user06', 'Yêu cầu mượn: 11  đã được chấp nhận', '2024-07-22', '13:51:16'),
(73, 'user06', 'Yêu cầu mượn: 8  đã được chấp nhận', '2024-07-22', '13:51:17'),
(74, 'user06', 'Yêu cầu mượn: 12  đã được chấp nhận', '2024-07-22', '13:51:17'),
(75, 'user06', 'Yêu cầu mượn: 5  đã được chấp nhận', '2024-07-22', '13:51:18'),
(76, 'user07', 'Yêu cầu mượn: 3 đã được chấp nhận', '2024-07-22', '13:51:18'),
(77, 'user07', 'Yêu cầu mượn: 2 đã được chấp nhận', '2024-07-22', '13:51:20'),
(78, 'user03', 'Your request for return of BookId: 8  has been accepted', '2024-07-22', '13:51:25'),
(79, 'user02', 'Yêu cầu làm mới: 11  đã được chấp nhận', '2024-07-22', '13:51:28'),
(80, 'user01', 'Your request for return of BookId: 1  has been accepted', '2024-07-22', '13:51:50'),
(81, 'user01', 'Your request for return of BookId: 6  has been accepted', '2024-07-22', '13:51:51'),
(82, 'user01', 'Your request for return of BookId: 7  has been accepted', '2024-07-22', '13:51:52'),
(83, 'user02', 'Your request for return of BookId: 11  has been accepted', '2024-07-22', '13:52:13'),
(84, 'user01', 'Your request for return of BookId: 8  has been accepted', '2024-07-22', '13:52:14'),
(85, 'user02', 'Yêu cầu mượn: 11  đã được chấp nhận', '2024-07-22', '13:52:27'),
(86, 'user03', 'Yêu cầu làm mới: 11 đã được chấp nhận', '2024-07-22', '13:54:05'),
(87, 'user04', 'Your request for return of BookId: 2  has been accepted', '2024-07-22', '13:54:07'),
(88, 'user06', 'Your request for return of BookId: 8  has been accepted', '2024-07-22', '13:54:07'),
(89, 'user07', 'Your request for return of BookId: 2  has been accepted', '2024-07-22', '13:54:08'),
(90, 'user05', 'Yêu cầu mượn: 8 đã được chấp nhận', '2024-07-22', '13:54:10'),
(91, 'user04', 'Yêu cầu mượn: 8 đã được chấp nhận', '2024-07-22', '13:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `R_ID` int(10) NOT NULL,
  `Book_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `RollNo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`R_ID`, `Book_Name`, `Description`, `RollNo`) VALUES
(2, 'Sống mòn', 'Đề xuất sách vì hay', 'user01'),
(3, 'Vượt côn đảo', 'Đề xuất sách vì hữu ích', 'user01'),
(5, 'Lão Hạc', 'Tác phẩm được đánh giá là một trong những truyện ngắn tiêu biểu của dòng văn học hiện thực, nội dung truyện đã phần nào phản ánh được hiện trạng xã hội Việt Nam trong giai đoạn trước Cách mạng tháng Mười Nga.', 'user04'),
(7, 'Tuổi thơ dữ dội ', 'tiểu thuyết dài tám phần xuất bản năm 1988 của nhà văn Phùng Quán, có nội dung xoay quanh cuộc sống chiến đấu và sự hy sinh của những thiếu niên 13, 14 tuổi trong hàng ngũ Đội thiếu niên trinh sát của trung đoàn Trần Cao Vân.', 'user07'),
(8, 'Tôi thấy hoa vàng trên cỏ xanh', 'một tiểu thuyết dành cho thanh thiếu niên của nhà văn Nguyễn Nhật Ánh', 'user03'),
(9, 'Ông Già Và Biển Cả', 'Tác phẩm là bản anh hùng ca ca ngợi sức lao động và khát vọng của con người', 'user05'),
(10, 'Hoàng tử bé  ', 'tiểu thuyết nổi tiếng nhất của nhà văn và phi công Pháp Antoine de Saint-Exupéry', 'user01'),
(11, 'Ông già và biển cả', 'Hết sách', 'user04');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`RollNo`, `BookId`, `Date_of_Issue`, `Due_Date`, `Date_of_Return`, `Dues`, `Renewals_left`, `Time`) VALUES
('user01', 3, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:47:40'),
('user01', 5, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:49:04'),
('user01', 11, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:47:32'),
('user01', 12, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:47:35'),
('user02', 7, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:49:39'),
('user02', 8, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:49:37'),
('user02', 11, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:52:21'),
('user02', 12, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:49:38'),
('user03', 11, '2024-07-22', '2024-10-10', NULL, NULL, 0, '13:49:53'),
('user03', 12, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:49:55'),
('user04', 3, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:07'),
('user04', 8, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:53:43'),
('user05', 5, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:16'),
('user05', 8, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:53:34'),
('user05', 9, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:17'),
('user06', 5, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:40'),
('user06', 11, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:42'),
('user06', 12, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:41'),
('user07', 3, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:29'),
('user07', 6, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:26'),
('user07', 8, '2024-07-22', '2024-08-31', NULL, NULL, 1, '13:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `renew`
--

INSERT INTO `renew` (`RollNo`, `BookId`) VALUES
('user01', 2),
('user04', 12),
('user05', 6);

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`RollNo`, `BookId`) VALUES
('user04', 5),
('user06', 3),
('user07', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`RollNo`, `Name`, `Type`, `Category`, `EmailId`, `MobNo`, `Password`) VALUES
('ADMIN', 'admin', 'Admin', NULL, 'admin@gmail.com', 123456789, 'admin'),
('user01', 'Phi', 'Sinh Viên', 'SV', 'phi@gmail.com', 9876543210, 'user01'),
('user02', 'Huy', 'Sinh Viên', 'SV', 'huy@gmail.com', 7845965212, 'user02'),
('user03', 'Thi', 'Người dùng', 'US', 'thi@hotmail.com', 4512451245, 'user03'),
('user04', 'Tiến', 'Giáo viên', 'GV', 'tien@gmail.com', 6352416352, 'user04'),
('user05', 'Lý', 'Giáo viên', 'GV', 'ly@gmail.com', 96685747485, 'user05'),
('user06', 'Long', 'Sinh Viên', 'SV', 'long@gmail.com', 4141415263, 'user06'),
('user07', 'Anh', 'Giáo viên', 'GV', 'anh@gmail.com', 4545451212, 'user07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`BookId`,`Author`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`RollNo`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `R_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`) ON DELETE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`) ON DELETE CASCADE;

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`) ON DELETE CASCADE;

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`) ON DELETE CASCADE;

--
-- Constraints for table `renew`
--
ALTER TABLE `renew`
  ADD CONSTRAINT `renew_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `renew_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`) ON DELETE CASCADE;

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `return_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`) ON DELETE CASCADE;
