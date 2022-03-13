-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 12, 2022 lúc 07:22 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `document`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bao`
--

CREATE TABLE `bao` (
  `idTL` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenNXB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soBPH` int(11) NOT NULL,
  `ngayPH` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bao`
--

INSERT INTO `bao` (`idTL`, `tenNXB`, `soBPH`, `ngayPH`) VALUES
('B001', 'ABC', 10, '21/10/2021'),
('B002', 'DCS', 12, '09/01/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `idTL` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenNXB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soBPH` int(11) NOT NULL,
  `tenTG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`idTL`, `tenNXB`, `soBPH`, `tenTG`, `soTrang`) VALUES
('S001', 'ABC', 10, 'Hoàng A', 120),
('S002', 'DCS', 10, 'Nguyễn A', 150);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tapchi`
--

CREATE TABLE `tapchi` (
  `idTL` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenNXB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soBPH` int(11) NOT NULL,
  `soPH` int(11) NOT NULL,
  `thangPH` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tapchi`
--

INSERT INTO `tapchi` (`idTL`, `tenNXB`, `soBPH`, `soPH`, `thangPH`) VALUES
('TC001', 'ABC', 10, 12, '9/2021'),
('TC002', 'DCS', 12, 10, '1/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`email`, `password`, `institution`) VALUES
('thaithang@gmail.com', '123456789', 'Đông Hà'),
('thaithang115@gmail.com', 'Thang2906', 'Da Nang'),
('thang@gmail.com', '123456', 'Đà Nẵng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bao`
--
ALTER TABLE `bao`
  ADD PRIMARY KEY (`idTL`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`idTL`);

--
-- Chỉ mục cho bảng `tapchi`
--
ALTER TABLE `tapchi`
  ADD PRIMARY KEY (`idTL`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
