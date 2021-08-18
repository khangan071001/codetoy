-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 18, 2021 lúc 04:27 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sdlc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `Cart_id` int(20) NOT NULL,
  `Cart_date` date DEFAULT NULL,
  `User_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `singer`
--

CREATE TABLE `singer` (
  `Singer_id` int(20) NOT NULL,
  `Singer_name` varchar(50) DEFAULT NULL,
  `Singer_image` varchar(50) DEFAULT NULL,
  `Singer_gender` varchar(50) DEFAULT NULL,
  `Singer_DOB` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `singer`
--

INSERT INTO `singer` (`Singer_id`, `Singer_name`, `Singer_image`, `Singer_gender`, `Singer_DOB`) VALUES
(1, 'Trịnh Trần Phương Tuấn (Jack)', 'C:\\xampp\\htdocs\\test12\\img\\portfolio\\jack.jpg', 'Male', '12-04-1997'),
(2, 'Kim JungHwa (Jfla)', 'C:\\xampp\\htdocs\\test12\\img\\portfolio\\1.jpg', 'Female', '10-06-1987'),
(3, 'Nguyễn Tuấn Đạt (Datkaa)', 'C:\\xampp\\htdocs\\test12\\img\\portfolio\\Datkaa.jpg', 'Male', '09-12-2000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

CREATE TABLE `song` (
  `Song_id` int(20) NOT NULL,
  `Song_name` varchar(50) DEFAULT NULL,
  `Song_image` varchar(50) DEFAULT NULL,
  `Decription` varchar(50) DEFAULT NULL,
  `Song_mp3` varchar(50) NOT NULL,
  `Price` int(50) NOT NULL,
  `Singer_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`Song_id`, `Song_name`, `Song_image`, `Decription`, `Song_mp3`, `Price`, `Singer_id`) VALUES
(1, 'Car toy', '/a\\img\\portfolio\\hhd.jpg', 'composed: Jack', 'hoahaiduong.mp3', 4, 1),
(2, 'Car toy', '/a\\img\\portfolio\\hvs.jpg', 'composed: Jack', 'hoavosac.mp3', 4, 1),
(3, 'remote control aircraft', '/a\\img\\portfolio\\13.jpg', 'Cover: Jfla', 'WaitingForLove.mp3', 4, 2),
(4, 'remote control train', '/a\\img\\portfolio\\14.jpg', 'Cover: Jfla', 'Titanium.mp3', 4, 2),
(5, 'remote control train', '/a\\img\\portfolio\\15.jpg', 'Cover: Jfla', 'Don\'tLetMeDown.mp3', 4, 2),
(6, 'remote control aircraft', '/a\\img\\portfolio\\12.jpg', 'Singer: Datkaa', 'nguoicothuong.mp3', 4, 3),
(7, 'Car toy', '/a\\img\\portfolio\\4.jpg', 'Cover: Jfla', 'attention.mp3', 4, 2),
(8, 'Eminem', '/a\\img\\portfolio\\16.jpg', 'Cover: Jfla', 'Eminem.mp3', 4, 2),
(9, 'control plane', '/a\\img\\portfolio\\20.jpg', 'Cover: Jfla', 'LetMeLoveYou.mp3', 4, 2),
(10, 'car toy', '/a\\img\\portfolio\\4.jpg', 'Cover: Jfla', 'zombie.mp3', 4, 2),
(11, 'lego', '/a\\img\\portfolio\\21.jpg', 'Singer: Datkaa', 'chieuthu.mp3', 4, 3),
(12, 'Lego Classic', '/a\\img\\portfolio\\22.jpg', 'Cover: Jfla', 'imagineDragons.mp3', 4, 2),
(25, 'Song gio', NULL, 'ád', 'songgio.mp3', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song_cart`
--

CREATE TABLE `song_cart` (
  `Quantity` int(50) DEFAULT NULL,
  `Song_id` int(50) NOT NULL,
  `Cart_id` int(50) NOT NULL,
  `Song_image` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song_sing`
--

CREATE TABLE `song_sing` (
  `Singer_id` int(50) NOT NULL,
  `Song_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `song_sing`
--

INSERT INTO `song_sing` (`Singer_id`, `Song_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 12),
(3, 6),
(3, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userr`
--

CREATE TABLE `userr` (
  `User_id` int(10) NOT NULL,
  `Full_name` varchar(50) DEFAULT NULL,
  `Phone_number` int(15) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Role` varchar(20) DEFAULT '1',
  `User_name` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `userr`
--

INSERT INTO `userr` (`User_id`, `Full_name`, `Phone_number`, `Address`, `Email`, `Role`, `User_name`, `Password`) VALUES
(7, 'nguyen van an', 859250925, 'hung yen', 'khangan071001221001@gmail.com', '1', 'an', '123'),
(8, 'loan', 123, 'hung yen', 'fd@', '1', 'loan', '123'),
(9, 'Nguyen van an', 1234561, 'Hung Yen', 'khangan01@gmail.com', '0', 'admin', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Chỉ mục cho bảng `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`Singer_id`);

--
-- Chỉ mục cho bảng `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`Song_id`);

--
-- Chỉ mục cho bảng `song_cart`
--
ALTER TABLE `song_cart`
  ADD PRIMARY KEY (`Song_id`,`Cart_id`),
  ADD KEY `Cart_id` (`Cart_id`);

--
-- Chỉ mục cho bảng `song_sing`
--
ALTER TABLE `song_sing`
  ADD PRIMARY KEY (`Singer_id`,`Song_id`),
  ADD KEY `Song_id` (`Song_id`);

--
-- Chỉ mục cho bảng `userr`
--
ALTER TABLE `userr`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `Cart_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `singer`
--
ALTER TABLE `singer`
  MODIFY `Singer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `song`
--
ALTER TABLE `song`
  MODIFY `Song_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `userr`
--
ALTER TABLE `userr`
  MODIFY `User_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `userr` (`User_id`);

--
-- Các ràng buộc cho bảng `song_cart`
--
ALTER TABLE `song_cart`
  ADD CONSTRAINT `song_cart_ibfk_1` FOREIGN KEY (`Song_id`) REFERENCES `song` (`Song_id`),
  ADD CONSTRAINT `song_cart_ibfk_2` FOREIGN KEY (`Cart_id`) REFERENCES `cart` (`Cart_id`);

--
-- Các ràng buộc cho bảng `song_sing`
--
ALTER TABLE `song_sing`
  ADD CONSTRAINT `song_sing_ibfk_1` FOREIGN KEY (`Singer_id`) REFERENCES `singer` (`Singer_id`),
  ADD CONSTRAINT `song_sing_ibfk_2` FOREIGN KEY (`Song_id`) REFERENCES `song` (`Song_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
