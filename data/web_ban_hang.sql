-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2023 at 04:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `ma_loai_san_pham` int(11) NOT NULL,
  `ten_loai_san_pham` varchar(30) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`ma_loai_san_pham`, `ten_loai_san_pham`, `hinh_anh`, `trang_thai`) VALUES
(9, 'Điện thoại', '233264959fc73d28fc2f2f46115986c9.webp', 1),
(10, 'Laptop', 'e808cf0038280f33c56239495d878a70.png', 1),
(11, 'Máy tính bảng', '36e38b7e202245f7873f6e75572f479a.jpg', 1),
(14, 'Tai nghe', 'b961f42a19ad9da0539839aa22291adf.jpg', 1),
(15, 'Bàn phím', '09a7aca2a5a4636135b0940a3218f720.jfif', 1),
(16, 'Chuột', 'a6f05ac337dde19b0d1e2bb0e8bec956.jpeg', 1),
(17, 'Ốp lưng điện thoại', '1b27d0cb89b25627c2c96070cc39aa72.jpeg', 1),
(18, 'Dây sạc', '94f6b129d5dba0ad4ff91858da3c55e5.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loai_tin_tuc`
--

CREATE TABLE `loai_tin_tuc` (
  `ma_loai_tin_tuc` int(11) NOT NULL,
  `ten_loai_tin_tuc` varchar(30) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loai_tin_tuc`
--

INSERT INTO `loai_tin_tuc` (`ma_loai_tin_tuc`, `ten_loai_tin_tuc`, `trang_thai`) VALUES
(27, 'Công nghệ', 1),
(28, 'Điện thoại', 0),
(29, 'Thị trường', 1),
(32, 'Laptop', 1),
(35, 'Máy tính bảng', 1),
(36, 'Máy tính', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `tai_khoan` varchar(30) NOT NULL,
  `mat_khau` varchar(64) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`tai_khoan`, `mat_khau`, `trang_thai`) VALUES
('admin1', '4d565b77e2340e0c7244af54b5fe2ebf', 1),
('admin2', '674f3c2c1a8a6f90461e8a66fb5550ba', 0),
('admin3', 'a7ae7a15f4a2e1aec73b1d76f41c7b8f', 1),
('admin4', 'c48f52be1d67b287c9697290261c2ac4', 0),
('admin5', '67b8f5b781ff92786ddeffb2f12d6238', 1),
('admin6', 'f8ab9ecc92256fc8d85a7e276a5f8069', 1),
('admin8', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nha_san_xuat`
--

CREATE TABLE `nha_san_xuat` (
  `ma_nha_san_xuat` int(11) NOT NULL,
  `ten_nha_san_xuat` varchar(30) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nha_san_xuat`
--

INSERT INTO `nha_san_xuat` (`ma_nha_san_xuat`, `ten_nha_san_xuat`, `hinh_anh`, `trang_thai`) VALUES
(1, 'Apple', '798c41d7861642bde8d53cbe3cf79e97.png', 1),
(2, 'Samsung', 'a783cf0057d0f29c0788e0f79fdabab5.png', 1),
(4, 'Xiaomi', '56a7909b7acb20f48443b6e9a37f9982.png', 1),
(5, 'Oppo', '89ba36805453b14e3c88a78c8ac63192.jpg', 1),
(8, 'Realme', 'e7c47f57cb6f535509ff640d8bee6a7b.png', 1),
(9, 'Vivo', 'd651badd322b78e403ae19f57253e291.jpg', 1),
(10, 'Logitech', '1a6170438995d350c6394f50203a13a9.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(30) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `gia` int(11) NOT NULL,
  `gia_khuyen_mai` int(11) NOT NULL,
  `mo_ta` varchar(1000) NOT NULL,
  `luot_xem` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ma_loai_san_pham` int(11) NOT NULL,
  `ma_nha_san_xuat` int(11) NOT NULL,
  `tai_khoan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ten_san_pham`, `hinh_anh`, `gia`, `gia_khuyen_mai`, `mo_ta`, `luot_xem`, `trang_thai`, `ma_loai_san_pham`, `ma_nha_san_xuat`, `tai_khoan`) VALUES
(1, 'Iphone 14 Pro', 'db4cfeea29d4c26e105448ebd5da9bed.jpg', 20000000, 18000000, 'Rất đẹp', 100, 1, 9, 1, 'admin'),
(3, 'Samsung S22 ', '2a40b2e663364d11bdf3e03320d45410.jpg', 20000000, 18000000, 'Rất bền', 100, 1, 9, 2, 'admin'),
(4, 'Xiaomi 11 Lite 5G ', 'b7ba9b7df06a87987b544267f0361248.jpg', 20000000, 18000000, 'Rất trắng', 100, 0, 9, 4, 'admin'),
(5, 'Ipad Air', 'a1d1f6f67e1fff86aa856b9b7fb1b7bd.jfif', 20000000, 18000000, 'Rất hồng', 100, 1, 11, 1, 'admin'),
(6, 'Tai nghe Logitech G435', 'd5f20becee38040949fee041bcefb39f.jpg', 2000000, 1800000, 'Chất lượng nghe tốt', 100, 1, 14, 10, 'admin'),
(7, 'Macbook Pro 2021', 'e3f963f8a09801e00d38edd851355ea0.jpg', 20000000, 18000000, 'Rất mượt', 100, 1, 10, 1, 'admin'),
(8, 'Bàn phím Logitech K120', '83cc9cee91490176db8ff123abc0cb37.jpg', 200000, 180000, 'Rất tốt', 100, 1, 15, 10, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `ma_tin_tuc` int(11) NOT NULL,
  `tieu_de` varchar(30) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `tom_tat` varchar(1000) NOT NULL,
  `noi_dung` varchar(10000) NOT NULL,
  `ngay_dang` date NOT NULL,
  `luot_xem` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ma_loai_tin_tuc` int(11) NOT NULL,
  `tai_khoan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tin_tuc`, `tieu_de`, `hinh_anh`, `tom_tat`, `noi_dung`, `ngay_dang`, `luot_xem`, `trang_thai`, `ma_loai_tin_tuc`, `tai_khoan`) VALUES
(1, 'Tin tức 1', '9c684b8015354eca17dcb4486f1c7055.jpg', 'ABCD', 'hshshshsuduhsduhsud', '2023-07-31', 0, 1, 27, 'admin'),
(2, 'Tin tức 2', 'ca918c5869c37d3cc2fc4e8a30d013a8.PNG', 'gagsggsgs', 'adfasdffasdfa', '2023-07-31', 0, 1, 29, 'admin'),
(3, 'Tin tức 3', 'dfa3d4793c57fbec99664f8b93aaa0eb.jpg', 'Laptop', 'Laptop 1', '2023-08-06', 0, 1, 32, 'admin'),
(4, 'Tin tức 4', '7266f61664e4763ea0dc421858f3e66e.jfif', 'Bro', 'Bro', '2023-08-06', 0, 0, 35, 'admin'),
(5, 'Tin tức 5', '189f28837f4a62efd094d0657cfa282d.jpg', 'ACVB', 'ádasdasdasdad', '2023-08-06', 0, 1, 27, 'admin'),
(7, 'Tin tức 6', '300deb43cec1d490db3070825db06ec5.jpg', 'New', 'New', '2023-08-06', 0, 1, 32, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`ma_loai_san_pham`),
  ADD UNIQUE KEY `ten_loai_san_pham` (`ten_loai_san_pham`);

--
-- Indexes for table `loai_tin_tuc`
--
ALTER TABLE `loai_tin_tuc`
  ADD PRIMARY KEY (`ma_loai_tin_tuc`),
  ADD UNIQUE KEY `ten_loai_tin_tuc` (`ten_loai_tin_tuc`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`tai_khoan`);

--
-- Indexes for table `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  ADD PRIMARY KEY (`ma_nha_san_xuat`),
  ADD UNIQUE KEY `ten_nha_san_xuat` (`ten_nha_san_xuat`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_san_pham`),
  ADD UNIQUE KEY `ten_san_pham` (`ten_san_pham`);

--
-- Indexes for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tin_tuc`),
  ADD UNIQUE KEY `tieu_de` (`tieu_de`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  MODIFY `ma_loai_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `loai_tin_tuc`
--
ALTER TABLE `loai_tin_tuc`
  MODIFY `ma_loai_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  MODIFY `ma_nha_san_xuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ma_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
