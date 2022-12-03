-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 06:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` varchar(20) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `tensp`, `soluong`, `gia`, `phuongthucthanhtoan`, `id_hdct`) VALUES
('21', 'Galaxy Core GT-I8262', 1, 3000000, 1, 7),
('22', 'sạc acer', 1, 300000, 0, 8),
('', 'Galaxy Core GT-I8262', 1, 3000000, 0, 9),
('', 'Galaxy Ace Duos S6802', 1, 5000000, 0, 10),
('', 'Sony Xperia C', 1, 6000000, 0, 11),
('', 'Galaxy Ace Duos S6802', 1, 5000000, 0, 12),
('25', 'Galaxy Grand Duos i9082', 1, 6000000, 0, 13),
('26', 'Galaxy Ace Duos S6802', 1, 5000000, 0, 14),
('26', 'Galaxy Grand Duos i9082', 1, 6000000, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(1, 'Điện thoại', 0),
(2, 'Phụ kiện', 0),
(3, 'Máy tính', 0),
(4, 'HTC', 1),
(5, 'Sony', 1),
(6, 'LG', 1),
(7, 'Pin', 2),
(8, 'Bao da - Ốp lưng', 2),
(9, 'Tai nghe', 2),
(10, 'Thẻ nhớ', 2),
(11, 'Nokia', 1),
(12, 'Sky', 1),
(13, 'Black Berry', 1),
(14, 'Sạc', 2),
(15, 'Sam sung', 1),
(16, 'Asus', 3),
(17, 'Dell', 3),
(18, 'Lenovo', 3),
(32, 'Acer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`, `trangthai`) VALUES
(21, 5, 'quang1811', 'bruh', 904982431, 'quanghongnguyen115@gmail.com', '2022-12-01', 1),
(22, 5, 'quang1811', 'bruh', 904982431, 'quanghongnguyen115@gmail.com', '2022-12-01', 1),
(23, 0, '223423', 'asdasd', 324234, '2342', '2022-12-01', 1),
(24, 6, 'aaafsdfsfv vdgdg', 'huuuh', 972341193, 'r@gmail.com', '2022-12-01', 1),
(25, 6, 'aaafsdfsfv vdgdg', 'q', 972341193, 'r@gmail.com', '2022-12-01', 1),
(26, 0, 'wdqw', 'qwdqw', 235235, '2352', '2022-12-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotro`
--

CREATE TABLE `hotro` (
  `idht` int(11) NOT NULL,
  `chude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaygui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` varchar(10) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(3, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2014-05-02', 'nam', 'thanhdat21293@gmail.com', '978164307', 'an thuong', '2014-05-26', 0),
(4, 'Thành Đạt', 'thanhdat21293', '96e79218965eb72c92a549dd5a330112', '1993-12-02', 'nam', 'thanhdat21293@gmail.com', '978164307', 'an thượng', '2014-06-01', 1),
(5, 'quang1811', 'quang1811', '21e04072a37d8f29f992b14233a4b26c', '2001-11-18', 'nam', 'quanghongnguyen115@gmail.com', '904982431', 'bruh', '2022-12-01', 1),
(6, 'aaafsdfsfv vdgdg', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00', '', 'r@gmail.com', '972341193', '', '2022-12-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhasx`
--

CREATE TABLE `nhasx` (
  `idnsx` int(11) NOT NULL,
  `tennsx` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `mau` varchar(20) NOT NULL,
  `chitiet` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `madm` int(11) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `chitiet`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(4, 'Galaxy Ace Duos S6802', 'Galaxy Ace Duos S6802.jpg', '', 'Công nghệ màn hình\r\n\r\nĐang cập nhật\r\nĐộ phân giải\r\n\r\nHVGA (320 x 480 Pixels)\r\nMàn hình rộng\r\n\r\n3.5\"\r\nĐộ phân giải\r\n\r\n5 MP\r\nRAM\r\n\r\n512 MB\r\nThẻ nhớ\r\n\r\nMicroSD\r\nDanh bạ\r\n\r\nKhông giới hạn\r\nSIM\r\n\r\nĐang cập nhật\r\nCổng kết nối/sạc\r\n\r\nMicro USB\r\nJack tai nghe\r\n\r\n3.5 mm\r\nLoại pin\r\n\r\nLi-Ion\r\nDung lượng pin\r\n\r\n1300 mAh\r\nRadio\r\n\r\nFM radio với RDS\r\nXem phim\r\n\r\nMP4\r\n\r\nH.263\r\n\r\nH.264(MPEG4-AVC)\r\n\r\nNghe nhạc\r\n\r\neAAC+\r\n\r\nWAV\r\n\r\nMP3\r\n\r\nThiết kế\r\n\r\nPin rời\r\nKích thước, khối lượng\r\n\r\nNặng 122 g', 20, 11, 5000000, 0, 'Tai nghe', 15, '2014-05-20', 0),
(9, 'Galaxy Core GT-I8262', 'Galaxy Core GT-I8262.jpg', '', 'Màn hình:\r\n\r\nTFT LCD4.3\"FWVGA+\r\nCamera sau:\r\n\r\n5 MP\r\nCamera trước:\r\n\r\nVGA (0.3 MP)\r\nRAM:\r\n\r\n1 GB\r\nDung lượng lưu trữ:\r\n\r\n8 GB\r\nSIM:\r\n\r\n1 Micro SIM\r\nPin, Sạc:\r\n\r\n1800 mAh', 20, 16, 3000000, 0, '', 15, '2014-05-20', 0),
(10, 'Galaxy Grand Duos i9082', 'Galaxy Grand Duos i9082.jpg', '', 'Màn hình:\r\n\r\n5\"FWVGA+\r\nCamera sau:\r\n\r\n8 MP\r\nCamera trước:\r\n\r\n2 MP\r\nRAM:\r\n\r\n1 GB\r\nDung lượng lưu trữ:\r\n\r\n8 GB\r\nPin, Sạc:\r\n\r\n2100 mAh', 20, 4, 6000000, 0, '', 15, '2014-05-20', 0),
(11, 'Galaxy Mega 6.3', 'Galaxy Mega 6.3.jpg', '', 'Màn hình:\n\n6.3\"HD\nCamera sau:\n\n8 MP\nCamera trước:\n\n1.9 MP\nChip:\n\nSnapdragon 400\nRAM:\n\n1.5 GB\nDung lượng lưu trữ:\n\n8 GB\nSIM:\n\n1 Micro SIM\nPin, Sạc:\n\n3200 mAh', 20, 2, 7000000, 0, '', 15, '2022-10-12', 0),
(12, 'Galaxy Note III SM N9000', 'Galaxy Note III SM N9000.jpg', '', 'Màn hình:	Super AMOLED capacitive touchscreen, 16M colors; 1080 x 1920 pixels, 5.7 inches\r\nCPU:	8 nhân(2 lõi 4 nhân: Quad-core 1.9 GHz Cortex-A15 Quad-core 1.3 GHz Cortex-A7)\r\nRAM:	3 GB\r\nCamera sau:	13 MP, 4128 x 3096 pixels, autofocus, LED flash,Dual Shot\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	microSD, up to 64 GB\r\nHệ điều hành:	Android OS, V4.3 (Jelly Bean)\r\nDanh bạ:	Không giới hạn\r\nPin:	Li-Ion 3200 mAh battery\r\n', 20, 1, 10000000, 0, '', 15, '2022-10-12', 0),
(13, 'Galaxy S III I9300', 'Samsung Galaxy S III I9300.jpg', '', 'Màn hình:\r\n\r\nSuper AMOLED4.8\"HD\r\nCamera sau:\r\n\r\n8 MP\r\nCamera trước:\r\n\r\n2 MP\r\nRAM:\r\n\r\n1 GB\r\nDung lượng lưu trữ:\r\n\r\n16 GB\r\nSIM:\r\n\r\n1 Micro SIM\r\nPin, Sạc:\r\n\r\n2100 mAh', 20, 0, 15000000, 0, '', 15, '2022-10-12', 0),
(14, 'Samsung Galaxy S4', 'Samsung Galaxy S4.jpg', '', 'Màn hình:\r\n\r\nSuper AMOLED5\"Full HD\r\nCamera sau:\r\n\r\n13 MP\r\nCamera trước:\r\n\r\n2.1 MP\r\nChip:\r\n\r\nExynos 5410\r\nRAM:\r\n\r\n2 GB\r\nDung lượng lưu trữ:\r\n\r\n16 GB\r\nSIM:\r\n\r\n1 Micro SIM\r\nPin, Sạc:\r\n\r\n2600 mAh', 20, 0, 13000000, 0, '', 15, '2014-05-20', 0),
(15, 'Samsung Galaxy S5', 'Samsung Galaxy S5.jpg', '', 'Màn hình:\r\n\r\nSuper AMOLED5.1\"Full HD\r\nCamera sau:\r\n\r\n16 MP\r\nCamera trước:\r\n\r\n2 MP\r\nChip:\r\n\r\nExynos 5422\r\nRAM:\r\n\r\n2 GB\r\nDung lượng lưu trữ:\r\n\r\n16 GB\r\nSIM:\r\n\r\n1 Micro SIM\r\nPin, Sạc:\r\n\r\n2800 mAh\r\n', 20, 0, 20000000, 0, '', 15, '2014-05-20', 0),
(16, 'Samsung Galaxy Star GT-S5282', 'Samsung Galaxy Star GT-S5282.jpg', '', 'Màn hình:\r\n\r\nSuper AMOLED5.1\"Full HD\r\nCamera sau:\r\n\r\n16 MP\r\nCamera trước:\r\n\r\n2 MP\r\nChip:\r\n\r\nExynos 5422\r\nRAM:\r\n\r\n2 GB\r\nDung lượng lưu trữ:\r\n\r\n16 GB\r\nSIM:\r\n\r\n1 Micro SIM\r\nPin, Sạc:\r\n\r\n2800 mAh', 20, 1, 6500000, 0, '', 15, '2022-10-12', 0),
(17, 'Samsung Galaxy Trend GT-S7560', 'Samsung Galaxy Trend GT-S7560.jpg', '', 'Màn hình:\r\n\r\nTFT LCD4\"FWVGA+\r\nCamera sau:\r\n\r\n5 MP\r\nCamera trước:\r\n\r\nVGA (0.3 MP)\r\nDung lượng lưu trữ:\r\n\r\n4 GB\r\nSIM:\r\n\r\n1 SIM thường\r\nPin, Sạc:\r\n\r\n1500 mAh', 20, 0, 8000000, 0, '', 15, '0000-00-00', 0),
(18, 'Samsung Galaxy Trend Lite S7392', 'Samsung Galaxy Trend Lite S7392.jpg', '', 'Màn hình:\r\n\r\nTFT LCD4\"FWVGA+\r\nCamera sau:\r\n\r\n5 MP\r\nCamera trước:\r\n\r\nVGA (0.3 MP)\r\nDung lượng lưu trữ:\r\n\r\n4 GB\r\nSIM:\r\n\r\n1 SIM thường\r\nPin, Sạc:\r\n\r\n1500 mAh\r\n', 20, 0, 1000000, 0, '', 15, '2022-10-12', 0),
(19, 'Samsung Galaxy Win i8552', 'Samsung Galaxy Win i8552.jpg', '', 'Màn hình:\r\n\r\nTFT LCD4.7\"FWVGA+\r\nCamera sau:\r\n\r\n5 MP\r\nCamera trước:\r\n\r\nVGA (0.3 MP)\r\nRAM:\r\n\r\n512 MB\r\nDung lượng lưu trữ:\r\n\r\n8 GB\r\nSIM:\r\n\r\n2 Micro SIMHỗ trợ 2G\r\nPin, Sạc:\r\n\r\n2000 mAh', 20, 0, 800000, 0, '', 15, '2022-10-12', 0),
(20, 'Samsung Galaxy Y S5360', 'Samsung Galaxy Y S5360.jpg', '', 'Công nghệ màn hình\r\n\r\nTFT LCD\r\nĐộ phân giải\r\n\r\nQVGA (240 x 320 Pixels)\r\nMàn hình rộng\r\n\r\n3\"\r\nĐộ phân giải\r\n\r\n2 MP\r\nThẻ nhớ\r\n\r\nMicroSD\r\nDanh bạ\r\n\r\nKhông giới hạn\r\nSIM\r\n\r\n1 SIM thường\r\nCổng kết nối/sạc\r\n\r\nMicro USB\r\nJack tai nghe\r\n\r\n3.5 mm\r\nLoại pin\r\n\r\nLi-Ion\r\nDung lượng pin\r\n\r\n1200 mAh\r\nRadio\r\n\r\nFM radio với RDS\r\nXem phim\r\n\r\nWMV\r\n\r\nMP4\r\n\r\nH.264(MPEG4-AVC)\r\n\r\nNghe nhạc\r\n\r\neAAC+\r\n\r\nWAV\r\n\r\nMP3\r\n\r\nThiết kế\r\n\r\nPin rời\r\nKích thước, khối lượng\r\n\r\nNặng 97.5 g', 20, 0, 2000000, 0, '', 15, '2022-10-12', 0),
(21, 'Samsung Rex 60 (C3312R)', 'Samsung Rex 60.jpg', '', 'Màn hình:\r\n\r\nTFT LCD2.8\"256.000 màu\r\nSIM:\r\n\r\n1 SIM thường\r\nDanh bạ:\r\n\r\n1000 số\r\nThẻ nhớ:\r\n\r\nMicroSD\r\nCamera sau:\r\n\r\n1.3 MP\r\nRadio FM:\r\n\r\nCó\r\nJack cắm tai nghe:\r\n\r\n3.5 mm\r\nPin:\r\n\r\n1000 mAh', 20, 0, 4500000, 0, '', 15, '2022-10-12', 0),
(22, 'samsung 5529', 'samsung-5529.jpg', '', 'Màn hình:\r\n\r\nTFT LCD2.8\"256.000 màu\r\nSIM:\r\n\r\n1 SIM thường\r\nDanh bạ:\r\n\r\n1000 số\r\nThẻ nhớ:\r\n\r\nMicroSD\r\nCamera sau:\r\n\r\n1.3 MP\r\nRadio FM:\r\n\r\nCó\r\nJack cắm tai nghe:\r\n\r\n3.5 mm\r\nPin:\r\n\r\n1000 mAh', 20, 0, 1500000, 0, '', 15, '2022-10-12', 0),
(23, 'Samsung Galaxy A23 4GB', 'SamsungGalaxyA234GB.jpg', '', 'Màn hình:\r\n\r\nTFT LCD2.8\"256.000 màu\r\nSIM:\r\n\r\n1 SIM thường\r\nDanh bạ:\r\n\r\n1000 số\r\nThẻ nhớ:\r\n\r\nMicroSD\r\nCamera sau:\r\n\r\n1.3 MP\r\nRadio FM:\r\n\r\nCó\r\nJack cắm tai nghe:\r\n\r\n3.5 mm\r\nPin:\r\n\r\n1000 mAh', 20, 0, 5400000, 0, '', 15, '2022-10-12', 0),
(24, 'Samsung Galaxy S22 Ultra 5G 128GB', 'Samsung Galaxy S22 Ultra 5G 128GB.jpg', '', 'Màn hình:\r\n\r\nTFT LCD2.8\"256.000 màu\r\nSIM:\r\n\r\n1 SIM thường\r\nDanh bạ:\r\n\r\n1000 số\r\nThẻ nhớ:\r\n\r\nMicroSD\r\nCamera sau:\r\n\r\n1.3 MP\r\nRadio FM:\r\n\r\nCó\r\nJack cắm tai nghe:\r\n\r\n3.5 mm\r\nPin:\r\n\r\n1000 mAh', 20, 0, 30000000, 0, '', 15, '2022-10-15', 0),
(25, 'Sony Xperia M C1905', 'Sony Xperia M C1905.jpg', '', 'Màn hình: TFT LCD4\"FWVGA\r\nCamera sau: 5 MP\r\nCamera trước: VGA (0.3 MP)\r\nRAM: 1 GB\r\nDung lượng lưu trữ: 4 GB\r\nSIM: 1 Micro SIM\r\nPin, Sạc: 1700 mAh', 20, 0, 4000000, 0, '', 5, '2022-10-12', 0),
(26, 'HTC 8S', '8s.jpg', '', 'Màn hình:\r\n4\"FWVGA+\r\nCamera sau:\r\n5 MP\r\nRAM:\r\n512 MB\r\nDung lượng lưu trữ:\r\n4 GB\r\nSIM:\r\n1 Micro SIM\r\nPin, Sạc:\r\n1700 mAh', 20, 0, 8000000, 0, '', 4, '2014-05-20', 0),
(27, 'HTC 8X', 'HTC 8X.jpg', '', 'Màn hình:\r\n4.3\"HD\r\nCamera sau:\r\n8 MP\r\nCamera trước:\r\n2.1 MP\r\nRAM:\r\n1 GB\r\nDung lượng lưu trữ:\r\n16 GB\r\nSIM:\r\n1 Micro SIM\r\nPin, Sạc:\r\n1800 mAh', 20, 1, 9000000, 0, '', 4, '2014-05-20', 0),
(28, 'HTC Amaze 4G', 'Amaze 4G.jpg', '', 'Độ phân giải\r\nqHD (540 x 960 Pixels)\r\nMàn hình rộng\r\n4.3\"\r\nĐộ phân giải\r\n8 MP\r\nQuay phim\r\nFullHD 1080p@30fps\r\nĐèn Flash\r\nCó\r\nĐộ phân giải\r\n2 MP\r\nTốc độ CPU\r\n1.5 GHz\r\nChip đồ họa (GPU)\r\nAdreno 220\r\nRAM\r\n1 GB\r\nDung lượng lưu trữ\r\n16 GB\r\nThẻ nhớ\r\nMicroSD\r\nDanh bạ\r\nKhông giới hạn\r\nJack tai nghe\r\n3.5 mm\r\nLoại pin\r\nLi-Ion\r\nDung lượng pin\r\n1730 mAh\r\nRadio\r\nFM radio với RDS', 20, 0, 3000000, 0, '', 4, '2014-05-20', 0),
(29, 'HTC Desire 200', 'Desire 200.jpg', '', 'Công nghệ màn hình\r\nTFT LCD\r\nĐộ phân giải\r\nHVGA (320 x 480 Pixels)\r\nMàn hình rộng\r\n3.5\"\r\nĐộ phân giải\r\n5 MP\r\nQuay phim\r\nVGA\r\nChip đồ họa (GPU)\r\nAdreno 200\r\nRAM\r\n512 MB\r\nDung lượng lưu trữ\r\n4 GB\r\nThẻ nhớ\r\nMicroSD\r\nDanh bạ\r\nKhông giới hạn\r\nSIM\r\n1 SIM thường\r\nCổng kết nối/sạc\r\nMicro USB\r\nJack tai nghe\r\n3.5 mm\r\nLoại pin\r\nLi-Ion\r\nDung lượng pin\r\n1230 mAh', 20, 0, 900000, 0, '', 4, '2014-05-20', 0),
(30, 'HTC desire 300', 'desire 300.jpg', '', 'Công nghệ màn hình\r\nTFT LCD\r\nĐộ phân giải\r\nWVGA (480 x 800 Pixels)\r\nMàn hình rộng\r\n4.3\"\r\nĐộ phân giải\r\n5 MP\r\nQuay phim\r\nVGA\r\nĐộ phân giải\r\nVGA (0.3 MP)\r\nChip đồ họa (GPU)\r\nAdreno 203\r\nRAM\r\n512 MB\r\nDung lượng lưu trữ\r\n4 GB\r\nThẻ nhớ\r\nMicroSD\r\nDanh bạ\r\nKhông giới hạn\r\nSIM\r\n1 Micro SIM\r\nCổng kết nối/sạc\r\nMicro USB\r\nJack tai nghe\r\n3.5 mm\r\nLoại pin\r\nLi-Ion\r\nDung lượng pin\r\n1650 mAh\r\nRadio\r\nCó', 20, 0, 6000000, 0, '', 4, '2014-05-20', 0),
(31, 'HTC Desire 302', 'Desire 302.jpg', '', 'Độ phân giải\r\nQVGA (240 x 320 Pixels)\r\nMàn hình rộng\r\n2.4\"\r\nĐộ phân giải\r\n3.2 MP\r\nQuay phim\r\nVGA\r\nChip đồ họa (GPU)\r\nĐang cập nhật\r\nThẻ nhớ\r\nMicroSD\r\nDanh bạ\r\n1000 số\r\nCổng kết nối/sạc\r\nMicro USB\r\nJack tai nghe\r\n3.5 mm\r\nDung lượng pin\r\n1430 mAh\r\nRadio\r\nFM radio với RDS', 20, 0, 4000000, 0, '', 4, '2014-05-20', 0),
(32, 'HTC Desire 310', 'Desire 310.jpg', '', 'Màn hình:\r\nTFT LCD4.5\"FWVGA\r\nCamera sau:\r\n5 MP\r\nCamera trước:\r\nVGA (0.3 MP)\r\nChip:\r\nMediaTek MTK 6582M\r\nRAM:\r\n512 MB\r\nDung lượng lưu trữ:\r\n4 GB\r\nSIM:\r\n1 SIM thường\r\nPin, Sạc:\r\n2000 mAh', 20, 0, 7000000, 0, '', 4, '2014-05-20', 0),
(33, 'HTC One M8', 'HTC One M8.jpg', '', 'Ra mắt vào 2014, cấu hình HTC One M8 gồm dung lượng pin 2600mAh, màn hình 5\", độ phân giải 1080 x 1920pixels, mật độ điểm ảnh lên đến 441ppi, camera selfie 5MP + 4 + 4MP camera chính.', 20, 0, 3812882, 0, '', 4, '2022-10-12', 0),
(34, 'HTC U12 Plus ', 'HTC U12 Plus.jpg', '', 'Màn hình:\r\nQuad HD+ (2K+)\r\nHệ điều hành:\r\nAndroid 8 (Oreo)\r\nCamera sau:\r\nChính 16 MP & Phụ 12 MP\r\nCamera trước:\r\nChính 8 MP & Phụ 8 MP\r\nChip:\r\nSnapdragon 845\r\nRAM:\r\n6 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nSIM:\r\n2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 4G\r\nPin, Sạc:\r\n3500 mAh', 20, 0, 4749000, 0, '', 4, '2022-10-12', 0),
(35, 'HTC U11', 'HTC U11.jpg', '', 'Ra mắt vào 2017, cấu hình HTC U11 gồm dung lượng pin 3000mAh, màn hình 5.5\", độ phân giải 1440 x 2560pixels, mật độ điểm ảnh lên đến 534ppi, camera selfie 16MP + 12MP camera chính.', 20, 0, 1700000, 10, '', 4, '2022-10-12', 0),
(36, 'HTC U20 5G', 'HTC U20 5G.jpg', '', 'Ra mắt vào 2020, cấu hình HTC U20 5G gồm dung lượng pin 5000mAh, màn hình 6.8\", độ phân giải 1080 x 2400pixels, mật độ điểm ảnh lên đến 387ppi, camera selfie 32MP + 48 + 8 + 2 + 2MP camera chính.', 20, 0, 2888510, 0, '', 4, '2022-10-12', 0),
(37, 'HTC Desire 820', 'HTC Desire 820.jpg', '', 'Màn hình:\r\n\r\nLCD5.5\"\r\nCamera sau:\r\n\r\n13 MP\r\nCamera trước:\r\n\r\n8 MP\r\nRAM:\r\n\r\n2 GB\r\nDung lượng lưu trữ:\r\n\r\n16 GB\r\nSIM:\r\n\r\n1 Micro SIM\r\nPin, Sạc:\r\n\r\n2600 mAh', 20, 0, 1787500, 0, '', 4, '2022-10-12', 0),
(38, 'HTC U Ultra', 'HTC U Ultra.jpg', '', 'Ra mắt vào 2017, cấu hình HTC U Ultra gồm dung lượng pin 3000mAh, màn hình 5.7\", độ phân giải 1440 x 2560pixels, mật độ điểm ảnh lên đến 513ppi, camera selfie 16MP + 12MP camera chính.', 20, 0, 3000000, 0, '', 4, '2022-10-12', 0),
(39, 'HTC One E8', 'HTC One E8.jpg', '', 'Độ phân giải\r\n\r\nFull HD (1080 x 1920 Pixels)\r\nMàn hình rộng\r\n\r\n5\"\r\nMặt kính cảm ứng\r\n\r\nKính cường lực Corning Gorilla Glass 3\r\nĐộ phân giải\r\n\r\n13 MP\r\nQuay phim\r\n\r\nFullHD 1080p@30fps\r\nĐèn Flash\r\n\r\nCó\r\nĐộ phân giải\r\n\r\n5 MP\r\nChip xử lý (CPU)\r\n\r\nSnapdragon 801\r\nTốc độ CPU\r\n\r\n2.5 GHz\r\nChip đồ họa (GPU)\r\n\r\nAdreno 330\r\nRAM\r\n\r\n2 GB\r\nDung lượng lưu trữ\r\n\r\n16 GB', 20, 0, 1750000, 0, '', 4, '2022-10-12', 0),
(40, 'HTC Desire 10 Pro', 'HTC Desire 10 Pro.jpg', '', 'Màn hình:\r\n\r\nIPS LCD5.5\"Full HD\r\nCamera sau:\r\n\r\n20 MP\r\nCamera trước:\r\n\r\n13 MP\r\nChip:\r\n\r\nMediaTek Helio P10\r\nRAM:\r\n\r\n4 GB\r\nDung lượng lưu trữ:\r\n\r\n64 GB\r\nSIM:\r\n\r\n2 Nano SIM\r\nPin, Sạc:\r\n\r\n3000 mAh', 20, 0, 3000000, 0, '', 4, '2022-10-12', 0),
(41, 'HTC One E9', 'HTC One E9.jpg', '', 'Màn hình:\r\n\r\n5.5\"Full HD\r\nCamera sau:\r\n\r\n13 MP\r\nCamera trước:\r\n\r\n4 Ultra Pixel\r\nChip:\r\n\r\nMediaTek MT6795 (Helio X10)\r\nRAM:\r\n\r\n2 GB\r\nDung lượng lưu trữ:\r\n\r\n16 GB\r\nSIM:\r\n\r\n2 Nano SIM\r\nPin, Sạc:\r\n\r\n2800 mAh', 20, 0, 2000000, 0, '', 4, '2014-10-12', 0),
(42, 'HTC one', 'HTC one.jpg', '', 'Màn hình:\r\n\r\n4.7\"Full HD\r\nCamera trước:\r\n\r\n2.1 MP\r\nRAM:\r\n\r\n2 GB\r\nDung lượng lưu trữ:\r\n\r\n16 GB\r\nSIM:\r\n\r\n1 Micro SIM\r\nPin, Sạc:\r\n\r\n2300 mAh', 20, 0, 1500000, 0, '', 4, '2022-10-12', 0),
(43, 'SONY Xperia 1 Mark 3', 'SONY Xperia 1 Mark 3.jpg', '', 'Kích Thước	165 x 71 x 8.2 mm (6.50 x 2.80 x 0.32 in)\r\nKhối Lượng	186 g / 187.1 g (mmWave) (6.56 oz)\r\nSIM	Dual SIM (Nano-SIM, dual stand-by)\r\nMàn hình\r\nCông nghệ	AMOLED capacitive touchscreen, 16M colors\r\nĐộ phân giải	1644 x 3840 pixels, 21:9 ratio (~643 ppi density)\r\nKích thước	6.5 inches, 98.6 cm2 (~84.2% screen-to-body ratio)\r\nBảo vệ	Corning Gorilla Glass Victus\r\n4K@60Hz / FHD@120Hz\r\nHệ điều hành - CPU\r\nHệ điều hành	Android 11', 20, 0, 25000000, 0, '', 5, '2022-10-12', 0),
(44, 'Sony Xperia 5 III', 'Sony Xperia 5 III.jpg', '', 'Thân Máy\r\nKích Thước	157 x 68 x 8.2 mm (6.18 x 2.68 x 0.32 in)\r\nKhối Lượng	168 g (5.93 oz)\r\nSIM	Dual SIM (Nano-SIM, dual stand-by)\r\nMàn hình\r\nCông nghệ	OLED, 1B colors, 120Hz, HDR BT.2020\r\nĐộ phân giải	1080 x 2520 pixels, 21:9 ratio (~449 ppi density)\r\nKích thước	6.1 inches, 86.9 cm2 (~81.4% screen-to-body ratio)\r\nBảo vệ	Corning Gorilla Glass 6\r\nHệ điều hành - CPU\r\nHệ điều hành	Android 11', 20, 1, 17000000, 0, '', 5, '2022-10-12', 0),
(45, 'SONY XPERIA 10 Mark 4', 'SONY XPERIA 10 Mark 4.jpg', '', 'Thân Máy\r\nKích Thước	153 x 67 x 8.3 mm\r\nKhối Lượng	161 g (5.68 oz)\r\nSIM	Hybrid Dual. Nano-SIM\r\nMàn hình\r\nCông nghệ	OLED, 1B colors, HDR\r\nĐộ phân giải	1080 x 2520 pixels, 21:9 ratio\r\nKích thước	6.0 inches, 84.1 cm2\r\nHệ điều hành - CPU\r\nHệ điều hành	Android 12\r\nChipset	Qualcomm SM6375 Snapdragon 695 5G (6 nm)\r\nHiệu suất CPU	Octa-core (2x2.2 GHz Kryo 660 Gold & 6x1.7 GHz Kryo 660 Silver)\r\nĐồ họa (GPU)	Adreno 619\r\nBộ nhớ máy\r\nRam	6GB\r\nBộ nhớ trong	128GB\r\nThẻ nhớ ngoài	microSDXC hỗ trợ lên đến 1TB', 20, 0, 9000000, 0, '', 5, '2022-10-12', 0),
(46, 'SONY XPERIA 10 Mark 3', 'SONY XPERIA 10 Mark 3.jpg', '', 'Thân Máy\r\nKích Thước	154 x 68 x 8.3 mm (6.06 x 2.68 x 0.33 in)\r\nKhối Lượng	169 g (5.96 oz)\r\nSIM	Dual SIM (Nano-SIM, dual stand-by)\r\nMàn hình\r\nCông nghệ	AMOLED capacitive touchscreen, 16M colors\r\nĐộ phân giải	1080 x 2340 pixels, 19.5:9 ratio (~403 ppi density)\r\nKích thước	6.39 inches, 100.2 cm2 (~81.7% screen-to-body ratio)\r\nBảo vệ	DCI-P3 100%\r\nAlways-on display\r\n240 Hz touch-sensing\r\nHệ điều hành - CPU\r\nHệ điều hành	Android 11\r\nChipset	Qualcomm SM6350 Snapdragon 690 5G (8 nm)\r\nHiệu suất CPU	Octa-core (2x2.0 GHz Kryo 560 Gold & 6x1.7 GHz Kryo 560 Silver)\r\nĐồ họa (GPU)	Adreno 619', 20, 0, 9000000, 0, '', 5, '2022-10-12', 0),
(47, 'LG Velvet 5G', 'LG Velvet 5G.jpg', '', 'Hệ điều hành: Android 10\r\nChipset: Snapdragon 765G\r\nĐộ phân giải: 1080 x 2460 pixels\r\nMàn hình rộng: 6.8 inches\r\nCamera sau: 48 + 8 +5 MP\r\nRAM: 8GB\r\nBộ nhớ trong ( Rom): 128 GB\r\nCamera trước: 16 MP, f/2.0\r\nDung lượng pin: 4300 mAh', 20, 0, 3400000, 0, '', 6, '2022-10-12', 0),
(48, 'LG V50S ThinQ 5G', 'LG V50S ThinQ 5G.jpg', '', 'Hệ điều hành: Android 9.0 (Pie)\r\nChipset: Qualcomm SM8150 Snapdragon 855\r\nĐộ phân giải: 1080 x 2340 pixels\r\nMàn hình rộng: 6.4 inch\r\nCamera sau: 12 MP, f/1.8 và 13 MP, f/2.4\r\nRAM: 8 GB\r\nBộ nhớ trong ( Rom): 256GB\r\nCamera trước: 32 MP, f/1.9, 26mm (wide), 1/2.8\", 0.8µm\r\nDung lượng pin: 4000 mAh', 20, 1, 3800000, 0, '', 6, '2022-10-12', 0),
(50, 'Connspeed CP3 – Pin sạc dự phòng', 'Connspeed CP3.jpg', '', 'Model:	YSD- PW 037\r\nKích thước sản phẩm (D x R x C cm):	10.8x1.5x6.2\r\nMàu:	Nâu\r\nLoại:	Pin sạc dự phòng\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 439000, 0, '', 7, '2022-10-12', 0),
(51, 'Genius ECO-u500 - Pin sạc dự phòng', 'Genius ECO-u500.jpg', '', 'Model:	YSD- PW 037\r\nKích thước sản phẩm (D x R x C cm):	10.8x1.5x6.2\r\nMàu:	Nâu\r\nLoại:	Pin sạc dự phòng\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 1, 500000, 0, '', 7, '2022-10-12', 0),
(52, 'Nokia BL-4D – Pin điện thoại', 'Nokia BL-4D.jpg', '', 'Model:	YSD- PW 037\r\nKích thước sản phẩm (D x R x C cm): 10.8x1.5x6.2\r\nMàu:	Nâu\r\nLoại: Pin sạc dự phòng\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 800000, 0, '', 7, '2022-10-12', 0),
(53, 'Nokia BL-4J – Pin điện thoại', 'Nokia BL-4J.jpg', '', 'Model:	YSD- PW 037\r\nKích thước sản phẩm (D x R x C cm):	10.8x1.5x6.2\r\nMàu:	Nâu\r\nLoại:	Pin sạc dự phòng\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 400000, 0, '', 7, '2022-10-12', 0),
(54, 'Reloader 10000 - Pin dự phòng  10000mAh', 'Reloader 10000.jpg', '', 'Model: YSD- PW 037 Kích thước sản phẩm (D x R x C cm): 10.8x1.5x6.2 Màu: Nâu Loại: Pin sạc dự phòng Bảo hành: 12 tháng Product warranty in english: 12 tháng', 20, 0, 600000, 0, '', 7, '2022-10-12', 0),
(55, 'Samsung EB-L1G6LLUCSTD', 'EB-L1G6LLUCSTD.jpg', '', 'Model:	YSD- PW 037\r\nKích thước sản phẩm (D x R x C cm):	10.8x1.5x6.2\r\nMàu:	Nâu\r\nLoại:	Pin sạc dự phòng\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 300000, 0, '', 7, '2022-10-12', 0),
(56, 'Samsung Pouch (EFC-1J9LCEGSTD)', 'Samsung Pouch.jpg', '', 'Model: YSD- PW 037 Kích thước sản phẩm (D x R x C cm): 10.8x1.5x6.2 Màu: Nâu Loại: Pin sạc dự phòng Bảo hành: 12 tháng Product warranty in english: 12 tháng', 20, 0, 636000, 0, '', 7, '2022-10-12', 0),
(57, 'YSD- PW 037 - Pin sạc dự phòng ', 'YSD- PW 037.jpg', '', 'Model: YSD- PW 037 Kích thước sản phẩm (D x R x C cm): 10.8x1.5x6.2 Màu: Nâu Loại: Pin sạc dự phòng Bảo hành: 12 tháng Product warranty in english: 12 tháng', 20, 0, 1000000, 0, '', 7, '2022-10-12', 0),
(58, 'YSD- PW 006 - Pin sạc dự phòng', 'YSD- PW 006.jpg', '', 'Model:	YSD- PW 037\r\nKích thước sản phẩm (D x R x C cm):	10.8x1.5x6.2\r\nMàu:	Nâu\r\nLoại:	Pin sạc dự phòng\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 300000, 0, '', 7, '2022-10-12', 0),
(59, 'iLuv Overlay - iPhone 5', 'iLuv Overlay.jpg', '', 'Model:	iPhone 4 IP07\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	1 x 11.6 x 6 cm\r\nMàu:	Đen\r\nChất liệu:	Nhựa PC\r\nLoại:	Ốp lưng\r\nTương thích:	iPhone 4/4S\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 200000, 0, '', 8, '2022-10-12', 0),
(60, 'Pisen iPhone 4 IP05 – iPhone 44S', 'Pisen iPhone 4 IP05.jpg', '', 'Model: iPhone 4 IP07 Sản xuất tại: Trung Quốc Kích thước sản phẩm (D x R x C cm): 1 x 11.6 x 6 cm Màu: Đen Chất liệu: Nhựa PC Loại: Ốp lưng Tương thích: iPhone 4/4S Bảo hành: 12 tháng Product warranty in english: 12 tháng', 20, 1, 300000, 0, '', 8, '2022-10-12', 0),
(61, 'Pisen iPhone 4 IP07 – iPhone 4 4S', 'PISEN IPHONE 4 IP07.jpg', '', 'Model: iPhone 4 IP07 Sản xuất tại: Trung Quốc Kích thước sản phẩm (D x R x C cm): 1 x 11.6 x 6 cm Màu: Đen Chất liệu: Nhựa PC Loại: Ốp lưng Tương thích: iPhone 4/4S Bảo hành: 12 tháng Product warranty in english: 12 tháng', 20, 1, 159000, 0, '', 8, '2022-10-12', 0),
(62, 'Pisen iPhone 4 IP09 – iPhone 4 / 4S', 'Pisen iPhone 4 IP09.jpg', '', 'Model:	iPhone 4 IP07\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	1 x 11.6 x 6 cm\r\nMàu:	Đen\r\nChất liệu:	Nhựa PC\r\nLoại:	Ốp lưng\r\nTương thích:	iPhone 4/4S\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 500000, 0, '', 8, '2022-10-12', 0),
(63, 'Pisen Samsung Galaxy Note I9220', 'Pisen Note I9220.jpg', '', 'Model:	iPhone 4 IP07\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	1 x 11.6 x 6 cm\r\nMàu:	Đen\r\nChất liệu:	Nhựa PC\r\nLoại:	Ốp lưng\r\nTương thích:	iPhone 4/4S\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 236000, 0, '', 8, '2022-10-12', 0),
(64, 'Samsung EF – Galaxy S4 Vàng', 'Samsung EF.jpg', '', 'Model:	iPhone 4 IP07\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	1 x 11.6 x 6 cm\r\nMàu:	Đen\r\nChất liệu:	Nhựa PC\r\nLoại:	Ốp lưng\r\nTương thích:	iPhone 4/4S\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 650000, 0, '', 8, '2022-10-12', 0),
(65, 'Samsung Pouch - Samsung Galaxy Note II', 'Samsung Pouch II.jpg', '', 'Model:	iPhone 4 IP07\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	1 x 11.6 x 6 cm\r\nMàu:	Đen\r\nChất liệu:	Nhựa PC\r\nLoại:	Ốp lưng\r\nTương thích:	iPhone 4/4S\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 363000, 0, '', 8, '2022-10-12', 0),
(66, 'Zenus Galaxy Note 3 G-Note Diary', 'G-Note Diary.jpg', '', 'Model:	iPhone 4 IP07\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	1 x 11.6 x 6 cm\r\nMàu:	Đen\r\nChất liệu:	Nhựa PC\r\nLoại:	Ốp lưng\r\nTương thích:	iPhone 4/4S\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 160000, 0, '', 8, '2022-10-12', 0),
(67, 'Zenus Sony Xperia Z1 Minimal Diary', 'Minimal Diary.jpg', '', 'Model:	iPhone 4 IP07\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	1 x 11.6 x 6 cm\r\nMàu:	Đen\r\nChất liệu:	Nhựa PC\r\nLoại:	Ốp lưng\r\nTương thích:	iPhone 4/4S\r\nBảo hành:	12 tháng\r\nProduct warranty in english:	12 tháng', 20, 0, 265000, 0, '', 8, '2022-10-12', 0),
(68, 'Bose SIE2i - Tai nghe (Cam)', 'Bose SIE2i.jpg', '', 'Model:	S2DUDZ-012\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	13x5x2 cm\r\nMàu:	cam', 20, 0, 230000, 0, '', 9, '2022-10-12', 0),
(69, 'Jabra Easygo - Tai nghe bluetooth (Trắng)', 'Jabra Easygo.jpg', '', 'Model:	S2DUDZ-012\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	13x5x2 cm\r\nMàu:	đen', 20, 0, 500000, 0, '', 9, '2022-10-12', 0),
(70, 'Skullcandy S2DUDZ-012 - (Xanh dương)', 'Skullcandy S2DUDZ.jpg', '', 'Model:	S2DUDZ-012\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	13x5x2 cm\r\nMàu:	xanh dương', 20, 0, 360000, 0, '', 9, '2022-10-12', 0),
(71, 'Skullcandy S2IKDZ-003 - Đen', 'Skullcandy S2IKDZ-003.jpg', '', 'Model:	S2DUDZ-012\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	13x5x2 cm\r\nMàu:	đen', 20, 0, 180000, 0, '', 9, '2022-10-12', 0),
(72, 'Sony MDR EX450 - Trắng', 'Sony MDR EX450.jpg', '', 'Model:	S2DUDZ-012\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	13x5x2 cm\r\nMàu:	xanh dương', 20, 0, 436000, 0, '', 9, '2022-10-12', 0),
(73, 'Sony MH-EX300AP – kèm mic (Đen)', 'Sony MH-EX300AP.jpg', '', 'Model:	S2DUDZ-012\r\nSản xuất tại:	Trung Quốc\r\nKích thước sản phẩm (D x R x C cm):	13x5x2 cm\r\nMàu: đen', 20, 0, 560000, 0, '', 9, '2022-10-12', 0),
(74, 'Kingston MicroSDHC Class4', 'Kingston MicroSDHC.jpg', '', 'Model:	Class 4\r\nSản xuất tại:	Chính hãng\r\nKích thước sản phẩm (D x R x C cm):	0.01 x 0.3 x 0.2 cm\r\nMàu:	Đen\r\nLoại:	MicroSDHC\r\nDung lượng ổ cứng (GB):	4\r\nBảo hành:	24 tháng\r\nProduct warranty in english:	24 tháng', 20, 0, 100000, 0, '', 10, '2022-10-12', 0),
(75, 'Sandisk MicroSD Card', 'Sandisk MicroSD Card.jpg', '', 'Model:	Class 4\r\nSản xuất tại:	Chính hãng\r\nKích thước sản phẩm (D x R x C cm):	0.01 x 0.3 x 0.2 cm\r\nMàu:	Đen\r\nLoại:	MicroSDHC\r\nDung lượng ổ cứng (GB):	4\r\nBảo hành:	24 tháng\r\nProduct warranty in english:	24 tháng', 20, 0, 230000, 0, '', 10, '2022-10-12', 0),
(76, 'silicon-power 4G', 'silicon-power 4G.jpg', '', 'Model:	Class 4\r\nSản xuất tại:	Chính hãng\r\nKích thước sản phẩm (D x R x C cm):	0.01 x 0.3 x 0.2 cm\r\nMàu:	Đen\r\nLoại:	MicroSDHC\r\nDung lượng ổ cứng (GB):	4\r\nBảo hành:	24 tháng\r\nProduct warranty in english:	24 tháng', 20, 0, 620000, 0, '', 10, '2022-10-12', 0),
(77, 'Thẻ nhớ Transcend Micro SDHC4 - 4GB', 'Transcend Micro SDHC4.jpg', '', 'Model:	Class 4\r\nSản xuất tại:	Chính hãng\r\nKích thước sản phẩm (D x R x C cm):	0.01 x 0.3 x 0.2 cm\r\nMàu:	Đen\r\nLoại:	MicroSDHC\r\nDung lượng ổ cứng (GB):	4\r\nBảo hành:	24 tháng\r\nProduct warranty in english:	24 tháng', 20, 0, 280000, 30, '2 Pin chất lượng cao', 10, '2022-10-12', 0),
(78, 'Toshiba Micro SDHC Class 10', '20140520164437Toshiba Micro SDHC Class 10.jpg', '', '<table style=\"width:570px\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Model</th>\r\n			<td style=\"vertical-align:top\">Class 4</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"background-color:rgb(250, 250, 250)\">Sản xuất tại</th>\r\n			<td style=\"background-color:rgb(250, 250, 250); vertical-align:top\">Ch&iacute;nh h&atilde;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước sản phẩm (D x R x C cm)</th>\r\n			<td style=\"vertical-align:top\">0.01 x 0.3 x 0.2 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"background-color:rgb(250, 250, 250)\">M&agrave;u</th>\r\n			<td style=\"background-color:rgb(250, 250, 250); vertical-align:top\">Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Loại</th>\r\n			<td style=\"vertical-align:top\">MicroSDHC</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"background-color:rgb(250, 250, 250)\">Dung lượng ổ cứng (GB)</th>\r\n			<td style=\"background-color:rgb(250, 250, 250); vertical-align:top\">4</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bảo h&agrave;nh</th>\r\n			<td style=\"vertical-align:top\">24 th&aacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"background-color:rgb(250, 250, 250)\">Product warranty in english</th>\r\n			<td style=\"background-color:rgb(250, 250, 250); vertical-align:top\">24 th&aacute;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 20, 0, 400000, 0, 'Ốp lưng', 10, '2014-05-20', 0),
(82, 'Sony Xperia C', 'Sony Xperia C.jpg', '', 'Màn hình:\r\n\r\nTFT LCD5\"qHD\r\nCamera sau:\r\n\r\n8 MP\r\nCamera trước:\r\n\r\nVGA (0.3 MP)\r\nRAM:\r\n\r\n1 GB\r\nDung lượng lưu trữ:\r\n\r\n4 GB\r\nSIM:\r\n\r\n1 Micro SIM\r\nPin, Sạc:\r\n\r\n2390 mAh', 20, 1, 6000000, 0, 'Tai nghe chinh hang', 5, '2022-10-12', 0),
(84, 'Tai nghe chụp tai Sony MDR - ZX110AP', 'MDR - ZX110AP.jpg', '', 'Jack cắm:\r\n\r\n3.5 mm\r\nTương thích:\r\n\r\niOS (iPhone)Windows PhoneAndroidWindows\r\nTiện ích:\r\n\r\nCó mic thoại\r\nĐiều khiển bằng:\r\n\r\nPhím nhấn\r\nPhím điều khiển:\r\n\r\nMic thoạiNghe/nhận cuộc gọiPhát/dừng chơi nhạcChuyển bài hát\r\nHãng\r\n\r\nSony. Xem thông tin hãng', 20, 0, 540000, 0, '', 9, '2022-10-12', 0),
(85, 'Tai nghe Bluetooth TWS Sony WF-1000XM3SME', 'WF-1000XM3SME.jpg', '', 'Thời gian tai nghe:\r\n\r\nDùng 8 giờ - Sạc 1.5 giờ\r\nThời gian hộp sạc:\r\n\r\nDùng 24 giờ - Sạc 3.5 giờ\r\nCổng sạc:\r\n\r\nType-C\r\nCông nghệ âm thanh:\r\n\r\nChống ồn HD QN1eHX (DSEE HX™) (Cơ chế tăng cường âm thanh kỹ thuật số)\r\nTương thích:\r\n\r\niOS (iPhone)AndroidWindows\r\nỨng dụng kết nối:\r\n\r\nSony Headphones Connect\r\nTiện ích:\r\n\r\nCó mic thoạiĐệm tai đi kèmTai nghe nhét taiChống ồnTrợ lý ảo google\r\nHỗ trợ kết nối:\r\n\r\nNFCBluetooth 5.0\r\nĐiều khiển bằng:\r\n\r\nCảm ứng chạm', 12, 0, 4300000, 0, '', 9, '2022-10-12', 0),
(86, 'Tai nghe nhét tai Sony MDR-E9LP', 'MDR-E9LP.jpg', '', 'Jack cắm:\r\n\r\n3.5 mm\r\nTương thích:\r\n\r\nAndroidWindows PhoneiOS (iPhone)Windows\r\nTiện ích:\r\n\r\nMút đệm tai đi kèm\r\nHãng\r\n\r\nSony.', 40, 0, 160000, 0, '', 9, '2022-10-12', 0),
(87, 'Tai nghe Bluetooth Sony WI-C200', 'WI-C200.jpg', '', 'Pin:\r\n\r\nDùng 15 giờ - Sạc 3 giờ\r\nCổng sạc:\r\n\r\nType-C\r\nTương thích:\r\n\r\niOS (iPhone)Windows PhoneAndroidWindows\r\nTiện ích:\r\n\r\nCó mic thoạiĐệm tai đi kèmTai nghe nhét taiTrợ lý ảo google\r\nHỗ trợ kết nối:\r\n\r\nBluetooth 5.0\r\nĐiều khiển bằng:\r\n\r\nPhím nhấn\r\nHãng\r\n\r\nSony.', 50, 0, 785000, 0, '', 9, '2022-10-12', 0),
(88, 'Tai nghe EP Bluetooth Sony WI-C600N', 'WI-C600N.jpg', '', 'Pin:\r\n\r\nDùng 6.5 giờ - Sạc 2.5 giờ\r\nCổng sạc:\r\n\r\nType-C\r\nCông nghệ âm thanh:\r\n\r\nChống ồn trí tuệ nhân tạo (AINC)\r\nTương thích:\r\n\r\niOS (iPhone)AndroidWindows\r\nTiện ích:\r\n\r\nĐệm tai đi kèmChống ồn\r\nHỗ trợ kết nối:\r\n\r\nBluetooth 4.2NFC\r\nĐiều khiển bằng:\r\n\r\nPhím nhấn\r\nHãng\r\n\r\nSony.', 20, 0, 3300000, 0, '', 9, '2022-10-12', 0),
(89, 'LG G6', 'LG G6.jpg', '', 'Hệ điều hành: Android 7.0 (Nougat)\r\nChipset: Qualcomm Snapdragon 821 4 nhân 64-bit\r\nĐộ phân giải: 2K+ (1440 x 2960 Pixels)\r\nMàn hình rộng: 5.7\"\r\nCamera sau: Chính 13 MP & Phụ 13 MP\r\nRAM: 4 GB\r\nBộ nhớ trong ( Rom): 32 GB, 64 GB\r\nCamera trước: 5 MP\r\nDung lượng pin: 3300 mAh', 10, 0, 1500000, 0, '', 6, '2022-10-12', 0),
(90, 'LG Wing 5G', 'LG Wing 5G.jpg', '', 'Hệ điều hành: Android 10\r\nChipset: Qualcomm SDM765 Snapdragon 765G (7 nm)\r\nĐộ phân giải: Full HD+ (1080 x 2460 Pixels)\r\nMàn hình rộng: 6.8 inches\r\nCamera sau: 3 camera: 64MP + 13MP +12MP\r\nRAM: 8GB\r\nBộ nhớ trong ( Rom): 128 GB\r\nCamera trước: Motorized pop-up 32 MP, f/1.9\r\nDung lượng pin: 4000 mAh', 15, 0, 6000000, 0, '', 6, '2022-10-12', 0),
(91, 'LG V30', 'LG V30.jpg', '', 'Hệ điều hành: Android 7.1 (Nougat)\r\nChipset: Qualcomm Snapdragon 835 8 nhân 64-bit\r\nĐộ phân giải: 2K+ (1440 x 2960 Pixels)\r\nMàn hình rộng: 6 inch\r\nCamera sau: 16 MP và 13 MP (2 camera)\r\nRAM: 4GB\r\nBộ nhớ trong ( Rom): 64GB\r\nCamera trước: 5MP\r\nDung lượng pin: 3300 mAh', 20, 0, 2500000, 0, '', 6, '2022-10-12', 0),
(92, 'LG V40 ThinQ', 'LG V40 ThinQ.jpg', '', 'Hệ điều hành: Android 8.1 (Oreo)\r\nChipset: Qualcomm SDM845 Snapdragon 845 (10 nm)\r\nĐộ phân giải: 2K+ (1440 x 2960 Pixels)\r\nMàn hình rộng: 6.4 inch\r\nCamera sau: 12 MP, 12 MP và 16 MP (3 camera)\r\nRAM: 6GB\r\nBộ nhớ trong ( Rom): 128GB\r\nCamera trước: 8 MP và 5 MP\r\nDung lượng pin: 3300 mAh', 10, 0, 5000000, 0, '', 6, '2022-10-12', 0),
(93, 'Điện thoại Nokia G21', 'G21.jpg', '', 'Màn hình:\r\n\r\nTFT LCD6.5\"HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 50 MP & Phụ 2 MP, 2 MP\r\nCamera trước:\r\n\r\n8 MP\r\nChip:\r\n\r\nUnisoc T606\r\nRAM:\r\n\r\n4 GB\r\nDung lượng lưu trữ:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5050 mAh18 W', 20, 0, 4000000, 0, '', 11, '2022-10-12', 0),
(94, 'Điện thoại Nokia G11 Plus 32GB', 'G11 Plus.jpg', '', 'Màn hình:\r\n\r\nTFT LCD6.51\"HD+\r\nHệ điều hành:\r\n\r\nAndroid 12\r\nCamera sau:\r\n\r\nChính 50 MP & Phụ 2 MP\r\nCamera trước:\r\n\r\n8 MP\r\nChip:\r\n\r\nUnisoc T606\r\nRAM:\r\n\r\n3 GB\r\nDung lượng lưu trữ:\r\n\r\n32 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5000 mAh10 W', 20, 0, 3000000, 0, '', 11, '2022-10-12', 0),
(95, 'Điện thoại Nokia C21 Plus', 'C21 Plus.jpg', '', 'Màn hình:\r\n\r\nTFT LCD6.5\"HD+\r\nHệ điều hành:\r\n\r\nAndroid 11 (Go Edition)\r\nCamera sau:\r\n\r\nChính 13 MP & Phụ 2 MP\r\nCamera trước:\r\n\r\n5 MP\r\nChip:\r\n\r\nSpreadtrum SC9863A\r\nRAM:\r\n\r\n3 GB\r\nDung lượng lưu trữ:\r\n\r\n64 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5050 mAh10 W', 10, 0, 2700000, 0, '', 11, '2022-10-12', 0),
(96, 'Điện thoại Nokia G10 ', 'Nokia G10.jpg', '', 'Màn hình:\r\n\r\nTFT LCD6.5\"HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 13 MP & Phụ 2 MP, 2 MP\r\nCamera trước:\r\n\r\n8 MP\r\nChip:\r\n\r\nMediaTek Helio G25\r\nRAM:\r\n\r\n4 GB\r\nDung lượng lưu trữ:\r\n\r\n64 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5050 mAh10 W', 15, 0, 3000000, 0, '', 11, '2022-10-12', 0),
(97, 'Điện thoại Nokia 5710', 'Nokia 5710.jpg', '', 'Màn hình:\r\n\r\nTFT LCD2.4\"\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nDanh bạ:\r\n\r\n2000 số\r\nThẻ nhớ:\r\n\r\nMicroSD, hỗ trợ tối đa 32 GB\r\nCamera sau:\r\n\r\n0.3 MP\r\nRadio FM:\r\n\r\nFM không cần tai nghe\r\nPin:\r\n\r\n1450 mAh', 20, 0, 1200000, 0, '', 11, '2022-10-12', 0),
(98, 'Điện thoại Sky A870', 'Sky A870.jpg', '', 'Màn hình:\r\n					HD\r\n				\r\n				\r\n					Hệ điều hành:\r\n					Android 4.1\r\n				\r\n				\r\n					Camera sau:\r\n					13 MP\r\n				\r\n				\r\n					Camera trước:\r\n					2.1 MP\r\n				\r\n				\r\n					CPU:\r\n					Qualcomm S 600\r\n				\r\n				\r\n					RAM:\r\n					2 GB\r\n				\r\n				\r\n					Bộ nhớ trong:\r\n					32 GB\r\n				\r\n				\r\n					Thẻ SIM:\r\n					2 sim\r\n				\r\n				\r\n					Dung lượng pin:\r\n					2150 mAh\r\n				\r\n				\r\n					Thiết kế:\r\n					Cảm ứng', 5, 0, 2000000, 0, '', 12, '2022-10-12', 0),
(99, 'SKY A850', 'SKY A850.jpg', '', 'Model	Sky A850K/ A850L/ A850S (Vega R3)\r\nKiểu	Smartphone Android\r\nBăng tầng	GSM/ HDSPA / HDSPA+/ LTE\r\nSim card	01 sim\r\nMạng hỗ trợ	2G: GSM 850/ 900/ 1800/19003\r\nLTE 4G 800\r\n\r\nTin nhắn	SMS/ MMS/ Email….\r\nNgôn ngữ hỗ trợ	Đa ngôn ngữ: English, Tiếng Việt….', 3, 0, 1850000, 0, '', 12, '2022-10-12', 0),
(100, 'SKY A860 (VEGA NO 6)', 'SKY A860.jpg', '', 'Thông số kỹ thuật điện thoại Sky A860K/ A860L/ A860S (Vega No 6) giá rẻ\r\nModel	Sky A860K/ A860L/ A860S (Vega No 6)\r\nKiểu	Smartphone Android\r\nBăng tầng	GSM/ HDSPA / HDSPA+/ LTE\r\nSim card	01 sim\r\nMạng hỗ trợ	\r\n3G HSDPA+\r\n\r\nLTE 4G 800\r\n\r\nTin nhắn	SMS/ MMS/ Email….\r\nNgôn ngữ hỗ trợ	Đa ngôn ngữ: English, Tiếng Việt…', 8, 0, 1500000, 0, '', 12, '2022-10-12', 0),
(101, 'SKY A880 – VEGA LTE-A', 'SKY A880.jpg', '', 'Màn hình Natural IPS 5.6 inch (1920 x 1080) FullHD\r\nChip Snapdragon 800 mới nhất từ Qualcomm\r\n\r\nCPU: Quad-core 2.3Ghz\r\n\r\nRAM: 2 Gb/ Internal Storage: 16 Gb\r\n\r\nCamera chính: 13 MPquay phim HD 1080@30fps / Phụ: 2.1 MP', 3, 0, 1500000, 0, '', 12, '2022-10-12', 0),
(102, 'BlackBerry Q10', 'BlackBerry Q10.jpg', '', 'Hệ điều hành:BlackBerry 10 Os\r\nNgôn ngữ:Tiếng Việt\r\nLoại màn hình:Super AMOLED\r\nMàu màn hình:16M colors\r\nĐộ phân giải:720 x 720 pixels\r\nMàn hình rộng(\"):3.1 inches\r\nCông nghệ cảm ứng:Cảm ứng điện dung\r\nCamera sau:8 MP (f/2.2, 31mm), autofocus, LED flash\r\nCamera trước:2 MP, 720p\r\nTính năng camera:Geo-tagging, touch focus, face detection, HDR, panorama', 7, 0, 1700000, 0, '', 13, '2022-10-12', 0),
(103, 'BlackBerry 9900', 'BlackBerry 9900.jpg', '', 'Hệ điều hành:BlackBerry OS 7.0\r\nNgôn ngữ:Tiếng Việt\r\nLoại màn hình:TFT \r\nMàu màn hình:16M colors\r\nĐộ phân giải:640 x 480 pixels\r\nMàn hình rộng(\"):2.8 inches\r\nCông nghệ cảm ứng:Capacitive touchscreen\r\nCamera sau:5 MP, LED flash\r\nTính năng camera:Geo-tagging, face detection\r\nQuay phim:720p', 9, 0, 1000000, 0, '', 13, '2022-10-12', 0),
(104, 'BlackBerry 7130G/ V', 'BlackBerry 7130G.jpg', '', 'Hệ điều hành:BlackBerry OS\r\nNgôn ngữ:Tiếng Việt\r\nMàu màn hình:65K colors\r\nĐộ phân giải:240 x 260 pixels\r\nMàn hình rộng(\"):2.4 inches\r\nTốc độ CPU:Intel XScale 312 MHz\r\nRAM:16 MB RAM\r\nBộ nhớ trong(ROM):64 MB\r\nMàu sắc:Đen\r\nKích thước:115 x 56 x 18 mm', 3, 0, 600000, 0, '', 13, '2022-10-12', 0),
(105, 'BlackBerry DTEK60', 'BlackBerry DTEK60.jpg', '', 'Hệ điều hành:BlackBerry Android Os\r\nNgôn ngữ:Tiếng Việt\r\nLoại màn hình:AMOLED\r\nMàu màn hình:16M colors\r\nĐộ phân giải:1440 x 2560 pixels\r\nMàn hình rộng(\"):5.5 inches\r\nCông nghệ cảm ứng:Cảm ứng điện dung\r\nCamera sau:21 MP, f/2.0, phase detection autofocus, dual-LED dual-tone flash\r\nCamera trước:8 MP, f/2.2, 1080p\r\nTính năng camera:Geo-tagging, touch focus, face detection, HDR, panorama', 12, 0, 1600000, 0, '', 13, '2022-10-12', 0),
(106, 'Laptop Asus ROG Strix Gaming G513IE-HN246W R7', '20221201064913rog strix gaming.jpg', '', '<table style=\"width:calc(100% - 60px)\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">K&iacute;ch thước</td>\r\n			<td style=\"vertical-align:baseline\">354 x 259 x 20.6 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Trọng lượng sản phẩm</td>\r\n			<td style=\"vertical-align:baseline\">2.1 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Bản lề (Hinge / Kickstand)</td>\r\n			<td style=\"vertical-align:baseline\">Ergolift</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Tản nhiệt</td>\r\n			<td style=\"vertical-align:baseline\">C&oacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table style=\"width:calc(100% - 60px)\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Chất liệu</td>\r\n			<td style=\"vertical-align:baseline\">\r\n			<ul>\r\n				<li>Kim loại</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style=\"background:rgb(248, 249, 250); border:0px; padding:4px 30px\">Bộ xử l&yacute;</div>\r\n\r\n<table style=\"width:calc(100% - 60px)\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">H&atilde;ng CPU</td>\r\n			<td style=\"vertical-align:baseline\">AMD</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">C&ocirc;ng nghệ CPU</td>\r\n			<td style=\"vertical-align:baseline\">Ryzen 7</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Loại CPU</td>\r\n			<td style=\"vertical-align:baseline\">4800H</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Tốc độ CPU</td>\r\n			<td style=\"vertical-align:baseline\">2.90 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Tốc độ tối đa</td>\r\n			<td style=\"vertical-align:baseline\">4.20 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Số nh&acirc;n</td>\r\n			<td style=\"vertical-align:baseline\">8</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Số luồng</td>\r\n			<td style=\"vertical-align:baseline\">16</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Bộ nhớ đệm</td>\r\n			<td style=\"vertical-align:baseline\">12 MB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style=\"background:rgb(248, 249, 250); border:0px; padding:4px 30px\">RAM</div>\r\n\r\n<table style=\"width:calc(100% - 60px)\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Dung lượng RAM</td>\r\n			<td style=\"vertical-align:baseline\">8 GB (1 thanh 8 GB)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Loại RAM</td>\r\n			<td style=\"vertical-align:baseline\">DDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Tốc độ RAM</td>\r\n			<td style=\"vertical-align:baseline\">3200 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Số khe cắm rời</td>\r\n			<td style=\"vertical-align:baseline\">2</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Số khe RAM c&ograve;n lại</td>\r\n			<td style=\"vertical-align:baseline\">1</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Số RAM onboard</td>\r\n			<td style=\"vertical-align:baseline\">0</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Hỗ trợ RAM tối đa</td>\r\n			<td style=\"vertical-align:baseline\">32 GB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style=\"background:rgb(248, 249, 250); border:0px; padding:4px 30px\">M&agrave;n h&igrave;nh</div>\r\n\r\n<table style=\"width:calc(100% - 60px)\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td style=\"vertical-align:baseline\">15.6 inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</td>\r\n			<td style=\"vertical-align:baseline\">FHD</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Độ ph&acirc;n giải</td>\r\n			<td style=\"vertical-align:baseline\">1920 x 1080 Pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Loại m&agrave;n h&igrave;nh</td>\r\n			<td style=\"vertical-align:baseline\">LED</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Tần số qu&eacute;t</td>\r\n			<td style=\"vertical-align:baseline\">144 Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Tấm nền</td>\r\n			<td style=\"vertical-align:baseline\">IPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Độ s&aacute;ng</td>\r\n			<td style=\"vertical-align:baseline\">250 nits</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Độ phủ m&agrave;u</td>\r\n			<td style=\"vertical-align:baseline\">45% NTSC</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Tỷ lệ m&agrave;n h&igrave;nh</td>\r\n			<td style=\"vertical-align:baseline\">16:09</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">Độ tương phản</td>\r\n			<td style=\"vertical-align:baseline\">1000:1</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline; width:200px\">M&agrave;n h&igrave;nh cảm ứng</td>\r\n			<td style=\"vertical-align:baseline\">Kh&ocirc;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 15, 0, 23000000, 0, '', 16, '2022-12-01', 0),
(107, 'Laptop Asus TUF Gaming', '20221201065209Laptop Asus TUF Gaming.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i510300H2.5GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)2933 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6&quot;Full HD (1920 x 1080)&nbsp;144Hz</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card rờiGTX 1650 4GB</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>HDMILAN (RJ45)USB 2.0Jack tai nghe 3.5 mm2 x USB 3.21x USB 3.2 Gen 2 Type-C support DisplayPort / power delivery / G-SYNC</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 359 mm - Rộng 256 mm - D&agrave;y 24.9 mm - Nặng 2.3 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 20, 0, 19990000, 0, '', 16, '2022-12-01', 0),
(108, 'Laptop Asus VivoBook 15X OLED', '20221201065437Laptop Asus VivoBook 15X.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i512500H2.5GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>8 GBDDR4 2 khe (1 khe 8 GB onboard + 1 khe trống)3200 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c kh&ocirc;ng giới hạn dung lượng)</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6&quot;Full HD (1920 x 1080) OLED</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợpIntel UHD</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>USB Type-CHDMIJack tai nghe 3.5 mm1 x USB 2.02 x USB 3.2</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 356.8 mm - Rộng 227.6 mm - D&agrave;y 19.9 mm - Nặng 1.7 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2022</p>\r\n', 20, 0, 21000000, 0, '', 16, '2022-12-01', 0),
(109, 'Laptop Asus Zenbook 17 Fold OLED', '20221201065653Laptop Asus Zenbook 17 Fold OLED.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i71250U1.1GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>16 GBLPDDR5 (Onboard)5200 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>1 TB SSD M.2 PCIe</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>17.3 inch (Chế độ Desktop) - 12.5 inch (Chế độ Laptop)2560 x 1920 FOLED</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợpIntel Iris Xe</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>2 x Thunderbolt 4 hỗ trợ display / power deliveryJack tai nghe 3.5 mm</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; m&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Nh&ocirc;m - Magie</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 378.5 mm - Rộng 287.6 mm - D&agrave;y 12.9 mm - Nặng 1.5 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2022</p>\r\n', 20, 0, 89000000, 0, '', 16, '2022-12-01', 0),
(110, 'Laptop Dell Gaming G15', '20221201065859Laptop Dell Gaming G15.jpg', '', '<p>CPU:</p>\r\n\r\n<p>Ryzen 55600H3.3GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>16 GBDDR4 2 khe (1 khe 8 GB + 1 khe 8 GB)3200 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 2 TB (2280) / 1 TB (2230))Hỗ trợ th&ecirc;m 1 khe cắm SSD M.2 PCIe mở rộngKh&ocirc;ng hỗ trợ khe cắm HDD</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6&quot;Full HD (1920 x 1080)&nbsp;120Hz</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card rờiRTX 3050 4GB</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>2 x USB 2.0HDMILAN (RJ45)USB Type-CJack tai nghe 3.5 mm1 x USB 3.2</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL + Office Home &amp; Student vĩnh viễn</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 357.26 mm - Rộng 272.11 mm - D&agrave;y 26.9 mm - Nặng 2.8 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 20, 0, 25000000, 0, '', 17, '2022-12-01', 0),
(111, 'Laptop Dell Inspiron 15 ', '20221201070145Dell Inspiron 15.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i31115G43GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>4 GBDDR4 2 khe (1 khe 4 GB + 1 khe rời)2666 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>Hỗ trợ khe cắm HDD SATA (n&acirc;ng cấp tối đa 2 TB)256 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 2 TB (2280) / 1 TB (2230))</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6&quot;Full HD (1920 x 1080)</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợpIntel UHD</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>HDMIUSB 2.0Jack tai nghe 3.5 mm2 x USB 3.2</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL + Office Home &amp; Student vĩnh viễn</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 358.5 mm - Rộng 235.5 mm - D&agrave;y 18.9 mm - Nặng 1.7 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 20, 0, 12690000, 0, '', 17, '2022-12-01', 0),
(112, 'Laptop Dell Vostro 5410', '20221201070259Laptop Dell Vostro 5410.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i511320H3.2GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)3200 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>14&quot;Full HD (1920 x 1080)</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợpIntel Iris Xe</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>USB Type-CHDMILAN (RJ45)Jack tai nghe 3.5 mm2 x USB 3.2</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL + Office Home &amp; Student vĩnh viễnThiết kế:</p>\r\n\r\n<p>Vỏ nhựa - nắp lưng bằng kim loại</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 321.2 mm - Rộng 212.8 mm - D&agrave;y 17.9 mm - Nặng 1.44 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 20, 0, 23000000, 0, '', 17, '2022-12-01', 0),
(113, 'Laptop Lenovo Ideapad 1', '20221201070452Laptop Lenovo Ideapad 1.jpg', '', '<p>CPU:</p>\r\n\r\n<p>PentiumN50301.1GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>4 GBDDR4 (1 khe)2400 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>256 GB SSD NVMe PCIeKh&ocirc;ng hỗ trợ n&acirc;ng cấp, kh&ocirc;ng hỗ trợ th&ecirc;m khe cắm mở rộng n&agrave;o kh&aacute;c</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>11.6&quot;HD (1366 x 768)</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợpIntel UHD 605</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>HDMIJack tai nghe 3.5 mm2 x USB 3.2</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 288 mm - Rộng 200 mm - D&agrave;y 17.9 mm - Nặng 1.2 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 20, 0, 12000000, 0, '', 18, '2022-12-01', 0),
(114, 'Laptop Lenovo Yoga Duet 7', '20221201070616Laptop Lenovo Yoga Duet 7.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i71165G72.8GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>16 GBDDR4 2 khe (8 GB onboard + 8 GB onboard)3200 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>1 TB SSD</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>13&quot;WQHD (2160x1350)</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợpIntel Iris Xe</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>Thunderbolt 42 x USB Type-CJack tai nghe 3.5 mm</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; m&agrave;n h&igrave;nh cảm ứngC&oacute; đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 10 Home SLThiết kế:</p>\r\n\r\n<p>Vỏ kim loại</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 297.4 mm - Rộng 207.4 mm - D&agrave;y 9.19 mm - Nặng 1.168 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2022</p>\r\n', 15, 0, 35000000, 0, '', 18, '2022-12-01', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `chitiet`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(115, 'Laptop Lenovo IdeaPad 5 Pro', '20221201070954Laptop Lenovo IdeaPad 5 Pro.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i511300H3.1GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>16 GBDDR4 (Onboard)3200 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB (2280) / 512 GB (2242))</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>16&quot;WQXGA (2560 x 1600)120Hz</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card rờiMX450 2GB</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>USB Type-CHDMIJack tai nghe 3.5 mm1 x USB 3.2 (Always on)Thunderbolt 4 USB-C1 x USB 3.2</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ kim loại</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 356 mm - Rộng 251 mm - D&agrave;y 18.4 mm - Nặng 1.9 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 25, 0, 27500000, 0, '', 18, '2022-12-01', 0),
(116, 'Laptop Lenovo V15 G2', '20221201071114Laptop Lenovo V15 G2.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i51135G72.4GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>8 GBDDR4 2 khe (1 khe 8 GB onboard + 1 khe trống)3200 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>512 GB SSD NVMe PCIeHỗ trợ th&ecirc;m 1 khe cắm HDD SATA (n&acirc;ng cấp tối đa 1 TB)</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6&quot;Full HD (1920 x 1080)</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợp Intel Iris Xe</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>USB Type-CHDMILAN (RJ45)Jack tai nghe 3.5 mm1 x USB 2.01 x USB 3.2</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 359.2 mm - Rộng 235.8 mm - D&agrave;y 19.9 mm - Nặng 1.7 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 12, 0, 14300000, 0, '', 18, '2022-12-01', 0),
(117, 'Laptop Lenovo Legion 5', '20221201071302Laptop Lenovo Legion 5.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i512500H2.5GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>8 GBDDR5 2 khe (1 khe 8 GB + 1 khe trống)4800 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB (2280) / 512 GB (2242))</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6&quot;Full HD (1920 x 1080)&nbsp;165Hz</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card rờiRTX 3050Ti 4GB</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>1 x Thunderbolt 4 (hỗ trợ DisplayPort)HDMILAN (RJ45)Jack tai nghe 3.5 mm1 x USB 3.2 (Always on)2 x USB 3.21 x USB-C 3.2 Gen 2 (hỗ trợ truyền dữ liệu and DisplayPort 1.4)1 x USB-C 3.2 Gen 2 (hỗ trợ truyền dữ liệu, Power Delivery 135W and DisplayPort 1.4)</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa - nắp lưng bằng kim loại</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 358.8 mm - Rộng 262.35 mm - D&agrave;y 19.99 mm - Nặng 2.35 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2022</p>\r\n', 16, 0, 32000000, 20, 'tai nghe, cặp laptop cùng hãng', 18, '2022-12-01', 0),
(118, 'Laptop Acer TravelMate', '20221201071610Laptop Acer TravelMate.jpg', '', '<p>CPU:</p>\r\n\r\n<p>CeleronN40201.1GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>4 GBDDR4 (1 khe)Từ 2400 MHz (H&atilde;ng c&ocirc;ng bố)</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>128 GB SSD M2 PCIe</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>11.6&quot;HD (1366 x 768)</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợpIntel UHD 600</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>USB Type-CHDMILAN (RJ45)Jack tai nghe 3.5 mm2 x USB 3.2</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 295 mm - Rộng 215 mm - D&agrave;y 20.99 mm - Nặng 1.4 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 20, 0, 5400000, 0, '', 32, '2022-12-01', 0),
(119, 'Laptop Acer Aspire 3', '20221201071800Laptop Acer Aspire 3.jpg', '', '<p>CPU:</p>\r\n\r\n<p>i31215U1.2GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>8 GBDDR4 2 khe (1 khe 4 GB + 1 khe 4 GB)Từ 2400 MHz (H&atilde;ng c&ocirc;ng bố)</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>256 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)Hỗ trợ khe cắm HDD SATA 2.5 inch mở rộng (n&acirc;ng cấp tối đa 1 TB)</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6&quot;Full HD (1920 x 1080)</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card t&iacute;ch hợpIntel UHD</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>HDMILAN (RJ45)Jack tai nghe 3.5 mm3 x USB 3.2</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 362.9 mm - Rộng 241.26 mm - D&agrave;y 19.9 mm - Nặng 1.7 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2022</p>\r\n', 5, 0, 13000000, 0, '', 32, '2022-12-01', 0),
(120, 'Laptop Acer Nitro 5 Gaming', '20221201071959Laptop Acer Nitro 5 Gaming.jpg', '', '<p>CPU:</p>\r\n\r\n<p>Ryzen 55600H3.3GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)3200 MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)Hỗ trợ th&ecirc;m 1 khe cắm SSD M.2 PCIe mở rộng (n&acirc;ng cấp tối đa 1 TB)Hỗ trợ khe cắm HDD SATA (n&acirc;ng cấp tối đa 2 TB)</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6&quot;Full HD (1920 x 1080)&nbsp;144Hz</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n<p>Card rờiGTX 1650 4GB</p>\r\n\r\n<p>Cổng kết nối:</p>\r\n\r\n<p>USB Type-CHDMILAN (RJ45)3 x USB 3.2Jack tai nghe 3.5 mm</p>\r\n\r\n<p>Đặc biệt:</p>\r\n\r\n<p>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>Hệ điều h&agrave;nh:</p>\r\n\r\n<p>Windows 11 Home SL</p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>Vỏ nhựa</p>\r\n\r\n<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n<p>D&agrave;i 363.4 mm - Rộng 255 mm - D&agrave;y 23.9 mm - Nặng 2.2 kg</p>\r\n\r\n<p>Thời điểm ra mắt:</p>\r\n\r\n<p>2021</p>\r\n', 6, 0, 20000000, 0, '', 32, '2022-12-01', 0),
(121, 'sạc nokia chân dẹt', '20221201072916sạc nokia.jpg', '', '', 150, 0, 50000, 0, '', 14, '2022-12-01', 0),
(122, 'sạc samsung', '20221201073004sạc samsung.jpg', '', '', 75, 0, 80000, 0, '', 14, '2022-12-01', 0),
(123, 'sạc asus', '20221201073124sạc asus.jpg', '', '', 35, 0, 200000, 0, '', 14, '2022-12-01', 0),
(124, 'sạc dell', '20221201073212sạc dell.jpg', '', '', 25, 0, 200000, 0, '', 14, '2022-12-01', 0),
(125, 'sạc acer', '20221201073255sạc acer.jpg', '', '', 1, 1, 300000, 0, '', 14, '2022-12-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `matt` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `ndngan` text NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydangtin` date NOT NULL,
  `tacgia` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hdct`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`);

--
-- Indexes for table `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`idht`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnd`);

--
-- Indexes for table `nhasx`
--
ALTER TABLE `nhasx`
  ADD PRIMARY KEY (`idnsx`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `hotro`
--
ALTER TABLE `hotro`
  MODIFY `idht` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhasx`
--
ALTER TABLE `nhasx`
  MODIFY `idnsx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
