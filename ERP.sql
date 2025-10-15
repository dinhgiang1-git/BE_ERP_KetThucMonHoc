-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 15, 2025 lúc 10:23 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ERP`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `KhachHang`
--

CREATE TABLE `KhachHang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `KhachHang`
--

INSERT INTO `KhachHang` (`MaKH`, `TenKH`, `GioiTinh`, `NgaySinh`, `SDT`, `DiaChi`) VALUES
(1, 'Toi Thu Test', 'Nam', '1995-02-12', '0905123456', 'Hà Nội'),
(2, 'Trần Thị Bình', 'Nữ', '1998-07-25', '0906234567', 'Hồ Chí Minh'),
(3, 'Lê Hoàng Cường', 'Nam', '1990-11-05', '0911222333', 'Đà Nẵng'),
(4, 'Phạm Thị Dung', 'Nữ', '1997-09-17', '0923344556', 'Cần Thơ'),
(5, 'Vũ Minh Đức', 'Nam', '1989-03-20', '0934455667', 'Hải Phòng'),
(6, 'Nguyễn Văn A', 'Nam', '1995-04-15', '0905123456', '25 Trần Hưng Đạo, Q.1, TP.HCM'),
(7, 'Trần Thị Bích Ngọc', 'Nữ', '1998-09-20', '0912345678', '12 Nguyễn Thị Minh Khai, Q.3, TP.HCM'),
(8, 'Lê Hoàng Nam', 'Nam', '2000-02-10', '0938123988', '45 Lê Duẩn, TP. Đà Nẵng'),
(9, 'Phạm Minh Anh', 'Nữ', '1997-12-05', '0977556677', '78 Nguyễn Huệ, TP. Huế'),
(10, 'Vũ Đức Huy', 'Nam', '1996-08-21', '0988111222', '33 Hai Bà Trưng, Q.1, TP.HCM'),
(11, 'Ngô Thị Mai', 'Nữ', '1999-03-28', '0909334455', '10 Lý Thường Kiệt, TP. Hà Nội'),
(12, 'Đặng Quang Khải', 'Nam', '1994-06-18', '0936778899', '58 Phan Chu Trinh, TP. Hải Phòng'),
(13, 'Hoàng Thị Lan', 'Nữ', '2001-01-11', '0945887766', '17 Lê Lợi, TP. Vinh'),
(14, 'Phan Minh Tuấn', 'Nam', '1995-10-09', '0967998877', '23 Võ Văn Kiệt, TP. Cần Thơ'),
(15, 'Lưu Thị Hương', 'Nữ', '1998-07-14', '0977554433', '40 Nguyễn Văn Cừ, TP. Bắc Ninh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `NhaCungCap`
--

CREATE TABLE `NhaCungCap` (
  `MaNhaCungCap` int(11) NOT NULL,
  `TenNCC` varchar(100) NOT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `NhaCungCap`
--

INSERT INTO `NhaCungCap` (`MaNhaCungCap`, `TenNCC`, `DiaChi`, `Email`, `SDT`) VALUES
(2, 'Công ty Cổ phần Tin Học Việt', '45 Lê Lợi, Q.Hoàn Kiếm, Hà Nội', 'info@tinhocviet.vn', '0912345678'),
(3, 'Công ty TNHH Linh Kiện Sài Gòn', '89 Cách Mạng Tháng 8, Q.10, TP.HCM', 'sales@linhkiensaigon.vn', '0933222111'),
(4, 'Công ty TNHH Phát Triển Công Nghệ Bắc Ninh', '22 Nguyễn Gia Thiều, TP. Bắc Ninh', 'support@congnghebacninh.vn', '0978456321'),
(5, 'Công ty Cổ phần Phụ Kiện Việt', '77 Lý Thường Kiệt, TP. Đà Nẵng', 'contact@phukienviet.vn', '0909876543'),
(6, 'Công ty TNHH Hoàng Gia Computer', '15 Trần Phú, TP. Hải Phòng', 'info@hoanggiacomputer.vn', '0964332211'),
(7, 'Công ty TNHH Minh Phát', '102 Pasteur, Q.3, TP.HCM', 'minhphat@gmail.com', '0903456677'),
(8, 'Công ty TNHH TechStore', '36 Nguyễn Huệ, TP. Huế', 'hello@techstore.vn', '0934556677'),
(9, 'Công ty TNHH An Phát', '25A Lê Duẩn, Q.1, TP.HCM', 'anphat@supplies.vn', '0988997766'),
(10, 'Công ty Cổ phần Thiết Bị Việt', '58 Nguyễn Trãi, Q. Thanh Xuân, Hà Nội', 'sales@thietbiviet.vn', '0977665544'),
(11, 'Công ty TNHH Thế Giới Máy Tính', '12 Nguyễn Văn Cừ, Q.1, TP.HCM', 'contact@thegioimaytinh.vn', '0909123456'),
(12, 'Công ty TNHH Thế Giới Máy Tính', '12 Nguyễn Văn Cừ, Q.1, TP.HCM', 'contact@thegioimaytinh.vn', '0909123456'),
(13, 'Công ty TNHH Thế Giới Máy Tính', '12 Nguyễn Văn Cừ, Q.1, TP.HCM', 'contact@thegioimaytinh.vn', '0909123456'),
(14, 'Công ty TNHH Thế Giới Máy Tính', '12 Nguyễn Văn Cừ, Q.1, TP.HCM', 'contact@thegioimaytinh.vn', '0909123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `KhachHang`
--
ALTER TABLE `KhachHang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `NhaCungCap`
--
ALTER TABLE `NhaCungCap`
  ADD PRIMARY KEY (`MaNhaCungCap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `KhachHang`
--
ALTER TABLE `KhachHang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `NhaCungCap`
--
ALTER TABLE `NhaCungCap`
  MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
