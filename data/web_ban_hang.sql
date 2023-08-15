-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 06:46 PM
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
(9, 'Điện thoại', '107f70e193daaf306224376a63d9dd77.webp', 1),
(10, 'Laptop', '139861edeb12c3b8a7d6e248e7b531a0.png', 1),
(11, 'Máy tính bảng', '8c47b5910b8043b4694868c96ee908b2.jpg', 1),
(14, 'Tai nghe', '183f87c0d6242ce251dd418e64a9ea2e.jpg', 1),
(15, 'Bàn phím', '03606ba3d8801ded46d935b737b9b1f7.jfif', 1),
(16, 'Chuột', '8aa87e253b3da4a6c7c19e1bcf60ad6b.jpeg', 1),
(17, 'Ốp lưng điện thoại', 'eaa7ab5ce89f958228f0746b01e0a720.jpeg', 1),
(18, 'Dây sạc', '774368656002084d8bbe560a893427aa.jpg', 1);

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
(1, 'Apple', '0c39c2e759f10398165598d50536f357.png', 1),
(2, 'Samsung', 'f3d6fc77836e02d74ae64b607bf7994a.png', 1),
(4, 'Xiaomi', '56a7909b7acb20f48443b6e9a37f9982.png', 1),
(5, 'Oppo', '89ba36805453b14e3c88a78c8ac63192.jpg', 1),
(8, 'Realme', 'e7c47f57cb6f535509ff640d8bee6a7b.png', 1),
(9, 'Vivo', 'd2699b7c44c746feec52e40ddf143464.png', 1),
(10, 'Logitech', '6d8e273afeb13b1ee677be1744271898.png', 1),
(11, 'UMETRAVEL', '1d6b5026c215e9088d0a32b96213e100.png', 1);

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
(1, 'Iphone 14 Pro', 'db4cfeea29d4c26e105448ebd5da9bed.jpg', 20000000, 18000000, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé.\r\nĐánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp\r\nNhững chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\\\r\nThiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục\r\nSau nhiều thế hệ liên tiếp giữ thiết kế tai t', 131, 1, 9, 1, 'admin'),
(3, 'Samsung S22 ', '2a40b2e663364d11bdf3e03320d45410.jpg', 20000000, 18000000, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé. Đánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp Những chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\\ Thiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục Sau nhiều thế hệ liên tiếp giữ thiết kế tai t', 103, 1, 9, 2, 'admin'),
(4, 'Xiaomi 11 Lite 5G ', 'b7ba9b7df06a87987b544267f0361248.jpg', 20000000, 18000000, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé. Đánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp Những chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\\ Thiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục Sau nhiều thế hệ liên tiếp giữ thiết kế tai t', 100, 1, 9, 4, 'admin'),
(5, 'Ipad Air', 'efd8601e6dbe198d804f62a8314bc3e8.jfif', 20000000, 18000000, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé. Đánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp Những chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\\ Thiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục Sau nhiều thế hệ liên tiếp giữ thiết kế tai t', 100, 1, 11, 1, 'admin'),
(6, 'Tai nghe Logitech G435', '8b728a00e179442274981d5ff2916f69.jpg', 2000000, 1800000, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé. Đánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp Những chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\\ Thiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục Sau nhiều thế hệ liên tiếp giữ thiết kế tai t', 101, 1, 14, 10, 'admin'),
(7, 'Macbook Pro 2021', '6aba371177ccdf4add79190be1bf490e.jpg', 20000000, 18000000, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé. Đánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp Những chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\\ Thiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục Sau nhiều thế hệ liên tiếp giữ thiết kế tai t', 100, 1, 10, 1, 'admin'),
(8, 'Bàn phím Logitech K120', 'baf229c27e0534c343e8e384575a2c3d.jpg', 200000, 180000, 'Rất tốt', 100, 1, 15, 10, 'admin'),
(9, 'Dây Cáp Sạc Type C ', 'd9868bd8698ff4287c5f2af00f566672.jpg', 100000, 0, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé. Đánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp Những chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\\ Thiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục Sau nhiều thế hệ liên tiếp giữ thiết kế tai t', 100, 1, 18, 11, 'admin'),
(10, 'Iphone 8 Plus', '60003d849863eda0a5ae346d76d52e75.jpg', 10000000, 0, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé.\r\n\r\nĐánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp\r\nNhững chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\r\n\r\nThiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục\r\nSau nhiều thế hệ liên tiếp giữ thiết kế tai t', 100, 1, 9, 1, 'admin'),
(11, 'Logitech G102', '4b23cac9026b7d4e61c14c640664022e.jpg', 300000, 0, 'iPhone 13 Pro Max: Smartphone sở hữu màn 120Hz đầu tiên của Apple.\r\nSự kiện của Apple – California Streaming đã ra mắt thế hệ iPhone 13 Series với rất nhiều sự mong chờ của người dùng. iPhone 13 Pro Max đã được ra mắt với sự nâng cấp về hiệu năng, camera và đặc biệt là về màn hình. iPhone 13 Pro và 13 Pro Max sẽ là những chiếc iPhone đầu tiên sở hữu màn hình 120Hz đầu tiên của Apple.\r\n1. Thiết kế của iPhone 13 Pro Max.\r\nVề màu sắc, phiên bản này gồm 4 màu là bạc, đen, vàng và màu xanh mới nhất ( Sierra Blue). Đặc biệt hơn nữa, bao da, ốp lưng phù hợp với màu sắc, tính năng của thế hệ điện thoại iPhone 13 được nhà Táo cho ra mắt và nhận được vô số lời nhận xét có cánh.\r\nNgoại hình đẹp mắt, nổi bật, độ bền cũng được Apple nâng cấp trên thiết bị này. Công nghệ mặt kính mới nhất Ceramic Shield được tích hợp đem lại độ bền đáng nể cho iPhone 13 Pro Max. Người dùng hoàn toàn yên tâm khi sử dụng smartphone mới đến từ nhà Táo.', 100, 1, 16, 10, 'admin'),
(12, 'Samsung Galaxy Book Flex', '4f60ad510bbbc96c7a465a141339e47e.jpg', 15000000, 0, 'iPhone 14 Pro Max là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé. Đánh giá iPhone 14 Pro Max – Siêu phẩm khẳng định đẳng cấp Những chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.\\ Thiết kế iPhone 14 Pro Max đột phá đầy ngoạn mục Sau nhiều thế hệ liên tiếp giữ thiết kế tai t', 100, 1, 10, 2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `ma_tin_tuc` int(11) NOT NULL,
  `tieu_de` varchar(100) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `tom_tat` mediumtext NOT NULL,
  `noi_dung` mediumtext NOT NULL,
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
(8, 'Google đang thiết kế tính năng giúp các thiết bị Android liên kết mạnh mẽ như Apple', 'a4336df3c6dd73a3ffac7d0b9d545715.jpg', 'Google đang thiết kế một tính năng mới cho phép người dùng liên kết các thiết bị Android của họ với nhau, tương tự như như Continuity trên hệ sinh thái Apple. Chuyên gia Android Mishaal Rahman là người phát hiện ra tính năng này, cho biết các thiết bị Android có thể liên kết với nhau chỉ bằng đăng nhập cùng một tài khoản Google.\r\nKhi liên kết, có thể kích hoạt các tính năng như \"Call Switching\", cho phép người dùng chuyển đổi giữa các thiết bị đã kết nối trong quá trình gọi, và \"Internet Sharing\", có thể là tính năng tương tự như phát Wi-Fi, nhưng dễ dàng và nhanh hơn.', 'Apple có một tính năng chuyển cuộc gọi tương tự có tên \"iPhone Mobile Calls\" cho phép người dùng chuyển cuộc gọi với các thiết bị Apple như Mac và iPad đã đăng nhập vào cùng một Apple ID và cùng một mạng Wi-Fi. Tuy nhiên, tính năng \"iPhone Mobile Calls\" của Apple không cho phép người dùng nhận cuộc gọi từ một iPhone khác.\r\nCòn \"Call Switching\" của Google có khả năng được sử dụng để chuyển đổi giữa các thiết bị Android khác nhau, bao gồm cả điện thoại. Vì vậy, bạn có thể nhận cuộc gọi trên một điện thoại và chuyển sang một điện thoại khác đã liên kết hoặc máy tính bảng.\r\nRahman cho rằng \"Link Your Devices\" sẽ xuất hiện trong Settings > Google > Devices & Sharing khi tính năng này được phát hành chính thức. Google vẫn chưa nói gì về \"Link Your Devices\" nên chúng ta vẫn cần công ty giới thiệu chi tiết.\r\nCũng được phát hiện bởi Mishaal Rahman, Android 14 sẽ cho phép bạn quản lý các thông báo toàn màn hình từ các ứng dụng. \r\nCụ thể, Google sẽ triển khai mã cấp phép USE_FULL_SCREEN_INTENT mới, chủ yếu được sử dụng bởi các ứng dụng quay số và đồng hồ để hiển thị các cuộc gọi và báo thức. \r\nBằng tính năng này, người dùng sẽ có thể bật và tắt thủ công các cửa sổ bật lên trên màn hình điện thoại của họ.', '2023-08-14', 14, 1, 27, 'admin'),
(9, 'Ai cũng phải \'ngả mũ\' trước độ mỏng ấn tượng của mẫu laptop này', '74ffcd249295b4aafa751b28068e43b4.webp', 'Ai cũng biết rằng LG gram là dòng laptop nhẹ nhất thị trường, luôn chỉ ‘đứng cân’ với con số khoảng 1kg. Thế nhưng có vẻ LG vẫn chưa hài lòng với danh hiệu này, và muốn gram phải trở thành laptop có độ mỏng ấn tượng nhất với phiên bản gram SuperSlim mới được công bố vào đầu năm nay.', 'Mỏng và nhẹ luôn là xu hướng chung trong thiết kế sản phẩm của các thương hiệu công nghệ cầm tay, và chỉ cần đạt được 1 trong 2 điều này thôi cũng đủ để làm người dùng ấn tượng ngay từ lần đầu cầm sản phẩm lên rồi.\r\nThế nhưng để đạt được cả 2 điều này trên cùng một sản phẩm thì sự ấn tượng còn được tăng lên gấp nhiều lần. Gram SuperSlim chính là sản phẩm làm được điều này, với cân nặng 0.99kg (lại một lần đạt chuẩn ‘tính cân nặng bằng gram’ của LG) và độ dày 0.43 inch (1.09cm) ở điểm mỏng nhất, và 0.49 inch (1.24cm) ở điểm dày nhất.', '2023-08-14', 0, 1, 32, 'admin'),
(10, 'Phụ kiện máy tính tăng giá, ‘cháy hàng’ vì dịch', 'dc4c0bf279c573e5993fefe38fb915b1.jpg', 'Những thiết bị như webcam, máy in, RAM tăng từ vài trăm đến cả triệu đồng, nhưng nhiều nơi không có hàng để bán.', 'Tìm mua máy tính mới cho con học bài từ xa, anh Huy Quân (Hà Nội) lưỡng lự trước bộ máy tính để bàn có giá hơn 9 triệu đồng trên một website của cửa hàng tại Hà Nội. Vài ngày sau, anh quyết định \"xuống tiền\" thì giá bán của bộ máy tính này đã tăng thêm gần 1 triệu đồng. Theo lý giải của cửa hàng, \"do giá của mỗi linh kiện đã tăng lên vài chục đến vài trăm nghìn đồng, cửa hàng cũng phải tăng giá theo\". Nếu anh không mua sớm, rất có thể sẽ không còn hàng hoặc giá còn tăng thêm nữa.\r\nTừ giữa tháng 3, nhiều mặt hàng thiết bị văn phòng, linh kiện, phụ kiện máy tính đã tăng nhẹ, đặc biệt là các sản phẩm phục vụ việc học tập hoặc làm việc từ xa.\r\nMột số mẫu webcam của Logitech, Genius tăng từ 200 đến 300 nghìn đồng. Chẳng hạn, Logitech HD C270 - sản phẩm tích hợp cả camera độ phân giải HD và micro, vốn có giá khoảng 500 nghìn đồng, đã đồng loạt tăng lên 700 - 800 nghìn đồng; C525 tăng từ 1 triệu lên 1,2 triệu đồng.\r\nMột phụ huynh khác phản ánh, mặt hàng máy in cũng tăng vài trăm nghìn đồng những ngày vừa qua, nhưng vẫn \"buộc phải mua để in bài tập cho con\".\r\nỞ mảng sản phẩm cao cấp vốn dành cho \"dân chơi\" PC hoặc game thủ, một số mẫu RAM cũng tăng từ 300 tới 500 nghìn đồng. Chẳng hạn bộ 2 RAM 16GB với thiết kế đèn RGB của một thương hiệu đến từ Mỹ đã tăng từ 4 triệu, lên 4,5 triệu đồng trong tháng 3. Phiên bản hiệu năng cao hơn giá từ 4,5 triệu nay cũng thành 4,8 triệu đồng.\r\nTheo một nhà phân phối máy tính và thiết bị văn phòng tại Hà Nội, việc tăng giá này chỉ xảy ra ở một số mặt hàng vốn có nhu cầu cao bất thường, hoặc một số sản phẩm có nguồn hàng hạn chế. Chẳng hạn nhu cầu về thiết bị cao cấp cho game thủ vốn ở mức trung bình, nhưng nay do Covid-19, nguồn hàng bị gián đoạn, dẫn đến thiếu hụt nguồn cung và giá bị đẩy lên.\r\nMột cửa hàng trên phố Thái Hà (Hà Nội) cho biết đã bán hết sạch số webcam tồn kho. Theo chủ cửa hàng, với nhu cầu học và họp từ xa tăng vọt, những mẫu webcam có giá dưới 1 triệu đồng được tìm mua nhiều nhất. Cửa hàng thậm chí không còn hàng để bán, bởi việc nhập thêm hàng trong giai đoạn này gặp nhiều khó khăn.\r\nTheo thống kê của một số đơn vị bán lẻ laptop và thiết bị vi tính lớn tại Việt Nam, thị trường trong nước đã có nhiều thay đổi trong tháng 2 và 3 vì Covid-19. Nhiều người tìm mua các sản phẩm phục vụ cho việc học tập, làm việc từ xa, dẫn đến tăng trưởng của ngành hàng này tại một số đơn vị bán lẻ lên mức 150%  điều hiếm khi xảy ra với thị trường máy tính vào dịp đầu năm.', '2023-08-14', 0, 1, 29, 'admin'),
(11, 'HP trở lại ngôi đầu thị trường máy tính', 'b5de84589822f361b2d2791e569b0509.jpg', 'Bị mất ngôi đầu quý IV năm ngoái do iPad của Apple có doanh số tăng cao nhưng HP nhanh chóng lấy lại vị thế dẫn đầu bằng laptop và PC truyền thống.', 'Theo số liệu thống kê mới nhất của hãng Canalys, HP đã chiếm lại vị trí dẫn đầu trong thị trường máy tính trên toàn thế giới trong quý I/2012. Apple từng có được vị trí này trong quý IV năm ngoái, chủ yếu là nhờ iPad (bán được hơn 15 triệu chiếc) cũng được tính là một mặt hàng máy tính. Trong khi đó, nếu không tính iPad vào các mặt hàng máy tính thì HP vẫn bỏ xa các đối thủ còn lại trong bảng xếp hạng, theo Canalys.\r\nTrong quý I này, Apple đã bán được 11,8 triệu chiếc iPad, nâng tổng số máy tính đã bán ra là 15,8 triệu chiếc. Doanh số máy tính của HP không cao hơn nhiều, chỉ khoảng 40.000 chiếc nhưng đó là đủ để \"gã khổng lồ\" này quay lại vị thế dẫn đầu. Lenovo cũng khá ấn tượng với vị trí thứ 3 bằng việc tăng trưởng ấn tượng, 50% so cùng kỳ với năm ngoái. Acer và Dell giữ các vị trí còn lại trong top 5 nhưng doanh số lại giảm so với năm ngoái.\r\nThị trường máy tính nói chung ghi nhận mức tăng 21%, lên 107 triệu chiếc. Trong khi đó, tính riêng máy tính xách tay là có mức tăng trưởng cao nhất, lên tới hơn 200% mỗi năm. Máy tính xách tay và máy tính để bàn có mức tăng 11% và 8% tương ứng. Trong khi đó, netbook tiếp tục chứng kiến thời kỳ suy thái nặng của mình với mức giảm 34% so với cùng kỳ năm ngoái.\r\nXu hướng của hầu hết các nhà sản xuất là chuyển dần việc sản xuất netbook sang các mẫu máy tính bảng. Samsung, Lenovo và Asus là đại diện tiêu biểu cho phương thức sản xuất kiểu này. Tuy nhiên, để đối phó với hai \"ông trùm\" máy tính bảng hiện nay là Apple và Amazon, chỉ có Samsung là đạt được mức doanh số trên một triệu chiếc trong một quý.', '2023-08-14', 0, 1, 29, 'admin'),
(12, 'Google ra mắt Pixel Tablet giá 499 USD: Liệu có cạnh tranh được với iPad Gen 10?', 'e3d70305afd088b9807b5324f234c3f9.webp', 'Pixel Tablet là mẫu máy tính bảng thương hiệu Pixel đầu tiên mà Google giới thiệu ra thị trường.', 'Bên cạnh chiếc Pixel Fold vừa được giới thiệu tại sự kiện Google I/O đêm ngày 10/5 vừa qua, tại sự kiện này, Google còn giới thiệu thêm một sản phẩm mới có tên Pixel Tablet. Đây là một chiếc máy tính bảng thuộc phân khúc tầm trung nhưng vẫn được trang bị chip Tensor G2 mạnh mẽ của Google, có thiết kế độc đáo lấy cảm hứng từ điện thoại Pixel.\r\nPixel Tablet trang bị màn hình 10,95 inch, sử dụng tấm nền LCD IPS với độ phân giải 2560 x 1600, không có tần số quét cao, viền màn hình không quá mỏng nhưng thiết kế đều ở các cạnh. Google cho biết màn hình này được phủ một lớp phủ chống dấu vân tay và có hỗ trợ bút cảm ứng USI 2.0.\r\nVề hiệu năng, Pixel Tablet dù có giá tầm trung nhưng vẫn được Google ưu ái trang bị con chip Tensor G2, bộ vi xử lý được Google tích hợp trên Pixel Fold có giá hơn 40 triệu. Máy có RAM 8GB LPDDR5 và bộ nhớ 128GB/256GB UFS 3.1.\r\nPixel Tablet được trang bị 2 camera 8MP ở cả mặt trước và sau, không có đèn flash. Cảm biến vân tay được đặt ở nút nguồn cũng như có hệ thống 4 loa ở xung quanh. Google tích hợp sẵn Android 13 cho chiếc máy này và cam kết cập nhật 5 năm.\r\nVới viên pin 27Wh, Google cho biết Pixel Tablet có thể xem video liên tục trong 12 giờ. Nhà sản xuất còn giới thiệu thêm một dock sạc kiêm loa cho Pixel Tablet, hoạt động như là một chân đế sạc không dây qua cổng sạc tiếp xúc (công suất 15W) cũng như là một chiếc loa công suất lớn.\r\nPixel Tablet lên kệ tại với 3 tuỳ chọn màu sắc là xám, be và hồng, giá niêm yết khởi điểm từ 499 USD, tương đương 11,7 triệu đồng. Mức giá này sẽ cạnh tranh trực tiếp với chiếc iPad Gen 10 tới từ Apple, vốn có giá khoảng 449 USD.', '2023-08-14', 0, 1, 35, 'admin'),
(13, 'Android 14 thêm cảnh báo về thiết bị định vị xung quanh', '567715660d157bc55c873f7d255b5e4a.png', 'Unknown Tracker Alerts (UTA), tính năng vừa được Google bổ sung trên Android 14, sẽ thông báo cho người dùng có thiết bị theo dõi ở gần đó hay không.', 'Theo Google, UTA xác định hai kịch bản có thể xảy ra với smartphone Android. Đầu tiên, tính năng này cảnh báo khi một người bị đặt thiết bị định vị lên người và thông báo họ đang bị theo dõi. Thứ hai, tính năng có thể phát hiện các thiết bị theo dõi đang ở xung quanh và khuyến cáo người dùng thực hiện các bước cần thiết tiếp theo.\r\nHiện UTA mới có thể phát hiện AirTags của Apple. Tuy nhiên, Google cho biết sẽ mở rộng phát hiện nhiều thiết bị định vị hơn trong tương lai.\r\nTính năng mới sẽ được bật mặc định trên smartphone chạy Android 14. Để kiểm tra, người dùng có thể vào Cài đặt > An toàn và Khẩn cấp (hoặc An toàn và Cá nhân tùy loại máy) > Cảnh báo trình theo dõi không xác định.\r\nNếu tắt tính năng, smartphone chạy Android 14 sẽ không tự động quét các thiết bị theo dõi xung quanh. Người dùng có thể thực hiện thao tác quét thủ công để tìm xem có thiết bị theo dõi nào ở cạnh không. Quá trình này kéo dài khoảng 10 giây.\r\nUTA hiện có mặt trên Google Pixel chạy Android 14 Beta. Bộ ba Galaxy S23 cũng sẽ sử dụng được tính năng mới do Samsung vừa cập nhật bản thử nghiệm One UI 6 cho dòng điện thoại này.\r\nAndroid 14 hiện bước vào giai đoạn thử nghiệm cuối và sẽ cho người dùng tải về trong tháng 9. Phiên bản Android mới chủ yếu tăng khả năng bảo mật ứng dụng, kéo dài thời lượng pin và tùy chỉnh tính năng chia sẻ. Hệ điều hành cung cấp một số tính năng thú vị như cấp quyền vào thư viện ảnh, video, đăng nhập không cần mật khẩu, nhận thông báo qua đèn flash và màn hình cũng như tối ưu hiệu suất.', '2023-08-14', 0, 1, 27, 'admin'),
(14, 'iPhone 14 bị than phiền nhanh \'chai\' pin', '8ff89bed67bb0d53e6621b5f98705953.jpg', 'Một số người dùng phản ánh các mẫu iPhone 14 có tốc độ \"chai\" pin nhanh gấp đôi thế hệ trước trong cùng khoảng thời gian.', 'Ngọc Trung, 29 tuổi ở quận 2, TP HCM cho biết anh mua iPhone 14 Pro Max vào ngày mở bán tháng 10 năm ngoái nhưng dung lượng pin tối đa hiện chỉ còn 92%. \"Tôi dùng iPhone 13 Pro Max một năm trước khi lên đời máy này. Pin khi bán vẫn còn 98%. Thói quen sử dụng và sạc của tôi nhiều năm nay không đổi\", anh nói và cho biết điều này có thể khiến máy dễ mất giá hơn khi anh bán để đổi lên iPhone 15 Pro Max.\r\nTình trạng pin là tính năng được Apple đưa lên iPhone kể từ iOS 11.3. Khác với phần trăm dung lượng pin hiển thị trên màn hình chính, tình trạng pin là chỉ số thể hiện \"sức khỏe\" của viên pin và sẽ giảm dần trong quá trình sử dụng. Trong trường hợp của Ngọc Trung, ngay cả khi iPhone 14 Pro Max đã sạc đầy 100%, dung lượng pin sử dụng chỉ còn 92% so với khi mới mua.\r\nTheo Forbes, người dùng trên thế giới cũng phàn nàn pin của iPhone 14 nhanh \"chai\". YouTuber chuyên về công nghệ Andrew Clare cho biết chiếc 14 Pro của anh mất 10% dung lượng pin sau một năm, trong khi iPhone 13 Pro Max hai năm tuổi chỉ giảm 15%.\r\nDưới bài đăng của Clare, nhiều người bình luận các mẫu iPhone cũ có tình trạng pin tốt hơn nhiều. Ví dụ, iPhone 12 sử dụng ba năm vẫn còn 85%, hay sử dụng hai năm còn 90%. Ngược lại, một số iPhone 14 chỉ còn 80-90% sau chưa đầy một năm ra mắt.\r\nSam Kolh, người sáng lập trang iUpdate, cũng báo cáo tình trạng pin iPhone 14 Pro đang sử dụng còn 90% và gọi đây là điều \"khó có thể chấp nhận\".\r\nApple chưa đưa ra phản hồi về sự việc.\r\nTrên trang hỗ trợ Hiệu suất pin và iPhone, công ty khuyến cáo một viên pin bình thường được thiết kế để giữ lại tới 80% dung lượng ban đầu sau 500 chu kỳ sạc đầy khi hoạt động trong điều kiện bình thường. Một chu kỳ sạc là khi dùng 100% dung lượng pin của máy nhưng không nhất thiết trong một lần sạc.\r\nCách mỗi người sử dụng iPhone sẽ khác nhau, nhưng nếu trung bình 1,5 ngày hết 100% dung lượng pin, một mẫu iPhone 14 sẽ có tối đa khoảng 250 chu kỳ sạc sau khoảng 11 tháng sau khi ra mắt.\r\nĐầu năm nay, Apple bắt đầu tăng 29-40% giá thay pin cho iPhone. Theo mức áp dụng từ 1/3, phí đổi pin iPhone sử dụng thiết kế cũ (có nút Home) là 69 USD, trong khi iPhone mới (sử dụng Face ID) là 89 USD. Riêng với iPhone 14, giá thay pin là 99 USD.', '2023-08-14', 0, 1, 27, 'admin'),
(15, 'OnePlus Ace 2 Pro sẽ hỗ trợ Wi-Fi 7, ra mắt ngày 16/8', '54e176c5862b367ff47c5edba9695fc8.jpg', 'Theo dự kiến, OnePlus sẽ chính thức trình làng OnePlus Ace 2 Pro vào ngày 16/8 tại Trung Quốc. Đây được cho là một sản phẩm cận cao cấp thuộc dòng OnePlus 11. Quan trọng hơn, chiếc điện thoại này cũng sẽ hỗ trợ kết nối WiFi 7 mới nhất hiện nay.', 'Theo dự kiến, OnePlus sẽ chính thức trình làng OnePlus Ace 2 Pro vào ngày 16/8 tại Trung Quốc. Đây được cho là một sản phẩm cận cao cấp thuộc dòng OnePlus 11. Quan trọng hơn, chiếc điện thoại này cũng sẽ hỗ trợ kết nối WiFi 7 mới nhất hiện nay.\r\nNếu như bạn chưa biết, WiFi 7 là chuẩn kết nối WiFi thế hệ thứ 7, được cho là nhanh hơn gấp 4 lần so với WiFi 6, độ trễ ít hơn và có đường truyền ổn định. Nhờ đó mà các tác vụ như VR/AR, game online, làm việc tại nhà và lưu trữ đám mây sẽ hoạt động nhanh, ít độ trễ. Dự kiến WiFi 7 sẽ chính thức được đưa vào hoạt động từ năm 2024.\r\n', '2023-08-14', 0, 1, 27, 'admin'),
(16, 'Chúng ta đã biết gì về Xiaomi Pad 6 Max: Màn hình khủng 14 inch, chip SD8+ Gen 1, pin 10000 mAh', '5f4ab6aadf7dc4bea4330225bddea925.jpeg', 'Xiaomi đang chuẩn bị ra mắt mẫu smartphone màn hình gập MIX Fold 3 và Redmi K60 Ultra vào ngày 14 tháng 8. Cùng với những điện thoại thông minh này, thương hiệu cũng sẽ ra mắt Xiaomi Pad 6 Max, một chiếc máy tính bảng có màn hình khủng 14 inch.', 'Thiết kế và màn hình\r\nBắt đầu với thiết kế, Redmi Pad 6 Max sẽ có mặt sau bằng kim loại phẳng với các cạnh phẳng. Nó sẽ có một mô-đun máy ảnh hình vuông ở mặt sau, trông khá giống với hệ thống camera trên Xiaomi 13 và Xiaomi 13 Pro. Nó có 3 lỗ đục chứa cụm camera kép và đèn flahs LED.\r\nXiaomi Pad 6 Max sẽ có màn hình siêu lớn\r\nXiaomi Pad 6 Max sẽ có màn hình siêu lớn\r\nĐiểm thu hút chính của chiếc máy tính bảng này là màn hình lớn 14 inch, chỉ đứng sau dòng Galaxy Tab S Ultra của Samsung. Tablet này có thể là một sự thay thế tốt cho những ai đang tìm kiếm một chiếc máy tính bảng màn hình lớn nhưng không đủ tiền để “tậu” các sản phẩm của Samsung. Mặc dù thông số màn hình của Pad 6 Max chưa được tiết lộ, nhưng nó dự kiến sẽ có độ phân giải 2K sắc nét.\r\nXiaomi cũng đã tuyên bố rằng biến thể Max của dòng Xiaomi Pad 6 sẽ lớn hơn 62% so với Pad 6 Pro. Nó dự kiến ​​sẽ sử dụng tấm nền LCD với tốc độ làm mới 144Hz.\r\nHiệu suất\r\nXiaomi đã xác nhận rằng, bộ vi xử lý Qualcomm Snapdragon 8+ Gen 1 sẽ cung cấp sức mạnh cho Xiaomi Pad 6 Max. Mặc dù đây không phải là SoC mới và cao cấp nhất của Qualcomm ở thời điểm hiện tại nhưng hiệu suất của nó vẫn rất mạnh mẽ, dư sức xử lý tốt mọi tác vụ sử dụng hàng ngày của người dùng, kể cả khi chơi những tựa game đồ họa nặng nhất hiện nay.\r\nXiaomi Pad 6 Max được xác nhận dùng chip Snapdragon 8+ Gen 1\r\nXiaomi Pad 6 Max được xác nhận dùng chip Snapdragon 8+ Gen 1\r\nHệ thống loa của Xiaomi Pad 6 Max\r\nXiaomi không cắt giảm bất kỳ khía cạnh nào để biến chiếc Pad 6 Max sắp ra mắt trở thành cỗ máy giải trí đỉnh cao vì hãng đã xác nhận rằng có hệ thống 8 loa trên máy. Các loa được cho là tạo ra âm thanh trong trẻo và người dùng sẽ dễ dàng phân biệt được âm cao, âm trung và âm trầm.\r\nThời lượng pin\r\nXiaomi Pad 6 Max có màn hình siêu lớn nên sẽ tiêu tốn rất nhiều năng lượng. Chính vì vậy mà Xiaomi đã tích hợp cho nó thỏi pin có dung lượng lên tới 10,000 mAh, hứa hẹn đáp ứng tốt nhu cầu làm việc cũng như giải trí của người dùng trong cả ngày.\r\nXiaomi Pad 6 Max có pin 10000 mAh\r\nXiaomi Pad 6 Max có pin 10000 mAh\r\nCó tin đồn cho rằng, chiếc máy tính bảng sắp tới của Xiaomi sẽ hỗ trợ công nghệ sạc nhanh 67W ấn tượng và sạc ngược 33W. Nó cũng sẽ có chip quản lý pin Surge G1 được thiết kế để cải thiện thời lượng pin, tuổi thọ pin và độ an toàn của pin.\r\nTính năng khác\r\nĐể kiểm soát nhiệt độ, Xiaomi Pad 6 Max cũng sẽ có hệ thống tản nhiệt lớn với diện tích 15839mm². Điều này sẽ cho phép người dùng thực hiện các tác vụ nặng và chơi game trong thời gian dài mà không gặp bất kỳ hiện tượng giảm hiệu năng nào.\r\nChiếc máy tính bảng sắp tới của Xiaomi còn đi kèm với một bàn phím có thể tháo rời, về cơ bản sẽ biến nó thành một chiếc máy tính xách tay. Ngoài việc có tất cả các phím bạn tìm thấy trên máy tính xách tay, bàn phím cũng sẽ có một trackpad hoạt động như một con chuột. Xiaomi cũng sẽ cung cấp bút stylus đi cùng với máy tính bảng. Nó có một “Nút lấy nét” thú vị giúp biến bút stylus thành một con trỏ laser ảo.\r\nXiaomi Pad 6 Max có hệ thống 8 loa\r\nXiaomi Pad 6 Max có hệ thống 8 loa\r\nThông tin chi tiết về camera của Xiaomi Pad 6 Max chưa được tiết lộ, nhưng có tin đồn cho rằng cả mặt trước và mặt sau của thiết bị sẽ có hai cảm biến. Ở mặt sau, tablet này sẽ có một camera chính 50MP đi kèm cảm biến độ sâu 2MP để cải thiện ảnh chụp chân dung. Ở mặt trước, thiết bị được đồn đoán sẽ đi kèm với camera chính 30MP kết hợp với cảm biến 3D ToF, hỗ trợ mở khóa bằng khuôn mặt.\r\nXiaomi cũng cho biết chiếc máy tính bảng này sẽ có chế độ chia đôi màn hình để sử dụng 4 ứng dụng cùng lúc và sẽ đi kèm với WPS Office PC for Pad để nó hoạt động như một chiếc máy tính cho các tác vụ văn phòng. Cuối cùng, thiết bị dự kiến ​​sẽ có RAM lên tới 12GB và dung lượng lưu trữ 512GB.', '2023-08-14', 0, 1, 35, 'admin'),
(17, 'iPhone SE 4 được đồn đại có nút Action, Face ID và cổng sạc USB-C', 'f0009d16914920ef7086530e5493f52f.jpeg', 'iPhone SE thế hệ thứ tư sẽ có nút Action giống như dòng iPhone 15 Pro cùng một số tính năng mới quan trọng khác, theo leaker có tên \"Unknownz21”.', 'Cách đây không lâu, Unknownz21 đã mô tả ‌iPhone SE‌ thế hệ thứ tư là phiên bản “giá rẻ” của iPhone 14, lặp lại các báo cáo trước đây từ những nguồn uy tín như nhà phân tích Ming-Chi Kuo.\r\niPhone SE 4 được đồn đại có nút Action, Face ID và cổng sạc USB-C\r\niPhone SE 4 được đồn đại có nút Action, Face ID và cổng sạc USB-C\r\nTrong tweet mới nhất, Unknownz21 cung cấp một số chi tiết mới về chiếc iPhone giá rẻ tiếp theo của Apple và tiếp tục cho biết thiết kế của nó sẽ dựa trên ‌iPhone 14‌. Điện thoại sẽ có cổng USB-C, sử dụng Face ID, xua tan những tin đồn trước đó cho rằng ‌iPhone SE‌ mới có thể giữ lại nút Touch ID.\r\nChưa hết, nguồn tin này còn cho biết iPhone SE 4 sẽ có nút Action mới giống như dòng iPhone 15 Pro dự kiến ra mắt vào tháng 9 tới. Đây sẽ là điểm khác biệt rõ ràng giữa ‌iPhone SE‌ mới với ‌iPhone 15‌ và ‌iPhone 15‌ Plus, những thiết bị dự kiến ​​sẽ không cung cấp tính năng này. ‌iPhone SE‌ 4 được đồn sẽ có hệ thống camera sau tương tự như model hiện tại.\r\nĐầu tuần này, có thông tin cho rằng các nhà sản xuất hiện đang đấu thầu để nhận đơn đặt hàng tấm nền OLED dành cho iPhone SE thế hệ tiếp theo. Điện thoại này cũng được kỳ vọng sử dụng modem 5G tùy chỉnh do chính Apple phát triển.', '2023-08-14', 0, 1, 27, 'admin'),
(18, 'Đây là laptop đầu tiên từ Tecno: Thiết kế giống MacBook, CPU Intel thế hệ 11, pin 17 tiếng', '1bd4b0e1a6375c3126630336307825cd.jpg', 'Tecno vừa cho ra mắt laptop Tecno Megabook T1 tại Ấn Độ, sở hữu cấu hình mạnh mẽ, bộ nhớ 1TB và thời lượng pin lên đến 17 tiếng.', 'Megabook T1 được trang bị màn hình 15.6 inch, độ phân giải Full HD và độ sáng 300 nits. Màn hình có chứng nhận bảo vệ mắt khỏi ánh sáng xanh theo chuẩn TÜV Rheinland, độ bao phủ màu 100% sRGB và hỗ trợ DC Dimming.\r\n\r\nTecno Megabook T1 sở hữu cấu hình ấn tượng\r\nTecno Megabook T1 sở hữu cấu hình ấn tượng\r\nThiết bị sở hữu sức mạnh đến từ CPU Intel thế hệ thứ 11. Phiên bản tiêu chuẩn đi kèm với 8GB RAM + 512GB bộ nhớ, sử dụng chip Intel Core i3. Ngoài ra, máy cũng có model dùng chip Core i5, có 16GB RAM và 512GB bộ nhớ. Model cao cấp nhất đi kèm với CPU Core i7, kết hợp cùng 16GB RAM và 1TB bộ nhớ.\r\nLaptop đầu tiên từ thương hiệu Tecno sở hữu nhiều đường nét thiết kế giống MacBook\r\nLaptop đầu tiên từ thương hiệu Tecno sở hữu nhiều đường nét thiết kế giống MacBook\r\nVề khả năng kết nối, Megabook T1 được trang bị đa dạng các cổng như USB-A, USB-C, HDMI, giắc tai nghe 3.5mm và đầu đọc thẻ TF. Máy hỗ trợ kết nối WiFi 6, webcam 2MP và cảm biến vân tay. Thiết bị đi kèm viên pin 70Wh và sạc 65W. Độ dày máy khoảng 14.8mm và nặng 1.48kg. Theo Tecno, sản phẩm có thể sử dụng suốt 17.5 tiếng chỉ với một lần sạc. Sản phẩm được cài sẵn hệ điều hành Windows 11, tích hợp công nghệ âm thanh DTS và micro kép khử tiếng ồn bằng AI.', '2023-08-14', 0, 1, 32, 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_san_pham`
-- (See below for the actual view)
--
CREATE TABLE `v_san_pham` (
`ma_san_pham` int(11)
,`ten_san_pham` varchar(30)
,`hinh_anh` varchar(68)
,`gia` int(11)
,`gia_khuyen_mai` int(11)
,`mo_ta` varchar(1000)
,`luot_xem` int(11)
,`trang_thai` int(11)
,`ma_loai_san_pham` int(11)
,`ma_nha_san_xuat` int(11)
,`tai_khoan` varchar(30)
,`ten_loai_san_pham` varchar(30)
,`ten_nha_san_xuat` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_tin_tuc`
-- (See below for the actual view)
--
CREATE TABLE `v_tin_tuc` (
`ma_tin_tuc` int(11)
,`tieu_de` varchar(100)
,`hinh_anh` varchar(68)
,`tom_tat` mediumtext
,`noi_dung` mediumtext
,`ngay_dang` date
,`luot_xem` int(11)
,`trang_thai` int(11)
,`ma_loai_tin_tuc` int(11)
,`tai_khoan` varchar(30)
,`ten_loai_tin_tuc` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `v_san_pham`
--
DROP TABLE IF EXISTS `v_san_pham`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_san_pham`  AS SELECT `san_pham`.`ma_san_pham` AS `ma_san_pham`, `san_pham`.`ten_san_pham` AS `ten_san_pham`, `san_pham`.`hinh_anh` AS `hinh_anh`, `san_pham`.`gia` AS `gia`, `san_pham`.`gia_khuyen_mai` AS `gia_khuyen_mai`, `san_pham`.`mo_ta` AS `mo_ta`, `san_pham`.`luot_xem` AS `luot_xem`, `san_pham`.`trang_thai` AS `trang_thai`, `san_pham`.`ma_loai_san_pham` AS `ma_loai_san_pham`, `san_pham`.`ma_nha_san_xuat` AS `ma_nha_san_xuat`, `san_pham`.`tai_khoan` AS `tai_khoan`, `loai_san_pham`.`ten_loai_san_pham` AS `ten_loai_san_pham`, `nha_san_xuat`.`ten_nha_san_xuat` AS `ten_nha_san_xuat` FROM ((`san_pham` join `loai_san_pham` on(`loai_san_pham`.`ma_loai_san_pham` = `san_pham`.`ma_loai_san_pham`)) join `nha_san_xuat` on(`nha_san_xuat`.`ma_nha_san_xuat` = `san_pham`.`ma_nha_san_xuat`))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_tin_tuc`
--
DROP TABLE IF EXISTS `v_tin_tuc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_tin_tuc`  AS SELECT `tin_tuc`.`ma_tin_tuc` AS `ma_tin_tuc`, `tin_tuc`.`tieu_de` AS `tieu_de`, `tin_tuc`.`hinh_anh` AS `hinh_anh`, `tin_tuc`.`tom_tat` AS `tom_tat`, `tin_tuc`.`noi_dung` AS `noi_dung`, `tin_tuc`.`ngay_dang` AS `ngay_dang`, `tin_tuc`.`luot_xem` AS `luot_xem`, `tin_tuc`.`trang_thai` AS `trang_thai`, `tin_tuc`.`ma_loai_tin_tuc` AS `ma_loai_tin_tuc`, `tin_tuc`.`tai_khoan` AS `tai_khoan`, `loai_tin_tuc`.`ten_loai_tin_tuc` AS `ten_loai_tin_tuc` FROM (`tin_tuc` join `loai_tin_tuc` on(`loai_tin_tuc`.`ma_loai_tin_tuc` = `tin_tuc`.`ma_loai_tin_tuc`))  ;

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
  MODIFY `ma_nha_san_xuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ma_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
