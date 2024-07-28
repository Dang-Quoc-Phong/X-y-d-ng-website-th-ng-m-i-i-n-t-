-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 28, 2024 lúc 01:56 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php3_xuong4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_mucs`
--

CREATE TABLE `danh_mucs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_mucs`
--

INSERT INTO `danh_mucs` (`id`, `hinh_anh`, `ten_danh_muc`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 'uploads/danhmucs/6c24GEIBar2Go155XDd6W6WPwu6vMTS6qzKJuLex.webp', 'NHẪN CƯỚI', 1, '2024-07-20 20:02:36', '2024-07-20 20:02:36'),
(2, 'uploads/danhmucs/VHrQQqfh8UPVpU9QMXkgov6UZz0miFdSxQRkr1Ul.webp', 'NHẪN ĐÍNH HÔN', 1, '2024-07-22 02:29:17', '2024-07-22 02:29:17'),
(3, 'uploads/danhmucs/LYzSAbwFuntwONJTnIjQiGdgzqLwFmiALuoMjAtE.webp', 'TRANG SỨC CƯỚI', 1, '2024-07-24 06:33:09', '2024-07-24 06:35:42'),
(4, 'uploads/danhmucs/UbIl2NmeZaU5W3B6PyZof2qpHWbvlxrXJoGX4s6P.webp', 'NHẪN KIM CƯƠNG LAB-GROWN 1 CARAT', 1, '2024-07-24 06:34:40', '2024-07-24 06:34:40'),
(5, 'uploads/danhmucs/thKdP9yQe6P5LOecSO5jzs7ei73Ntiq3nduTuw0P.webp', 'NHẪN CẦU HÔN 2024', 1, '2024-07-24 06:37:11', '2024-07-24 06:37:11'),
(6, 'uploads/danhmucs/aVuA5WnKK1Pg9SKw8hwGdMjsRdjeI5Rg4rqsb9RW.webp', 'SUMMER COLLECTION', 1, '2024-07-24 07:04:12', '2024-07-24 07:04:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh_san_phams`
--

CREATE TABLE `hinh_anh_san_phams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `san_pham_id` bigint(20) UNSIGNED NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh_san_phams`
--

INSERT INTO `hinh_anh_san_phams` (`id`, `san_pham_id`, `hinh_anh`, `created_at`, `updated_at`) VALUES
(27, 4, 'uploads/hinhanhsanpham/id_4/X5iYnLYVI2fmfABraEDxzGmZAsG0g1hNF12GQF5e.webp', '2024-07-24 06:47:42', '2024-07-24 06:47:42'),
(28, 4, 'uploads/hinhanhsanpham/id_4/WDSnHFMFWjQyHSUugkPHxKKVVTiEkMbVmIZXoNo6.webp', '2024-07-24 06:47:42', '2024-07-24 06:47:42'),
(29, 4, 'uploads/hinhanhsanpham/id_4/K19hTKv0SYo70xt0o1rB44VUXo7g4gyefFTbLopv.webp', '2024-07-24 06:47:42', '2024-07-24 06:47:42'),
(30, 4, 'uploads/hinhanhsanpham/id_4/uFmClasSP8IEz2DFU8UcUAT48vB8besf62jRc2iB.webp', '2024-07-24 06:47:42', '2024-07-24 06:47:42'),
(31, 5, 'uploads/hinhanhsanpham/id_5/k1JiQaLqTT9k8B3obuFveP4EkfFCXWP3k06bsYsc.webp', '2024-07-24 06:52:03', '2024-07-24 06:52:03'),
(32, 5, 'uploads/hinhanhsanpham/id_5/OgAQ8DvifjHm2APwPJsA1DLYJC2emhr7LV7YlEfY.webp', '2024-07-24 06:52:03', '2024-07-24 06:52:03'),
(33, 5, 'uploads/hinhanhsanpham/id_5/cljjI6jelgqGzWlhqW5LXBpb34MLErvP4HHjhTsX.webp', '2024-07-24 06:52:03', '2024-07-24 06:52:03'),
(34, 6, 'uploads/hinhanhsanpham/id_6/1WiMCCv190yVHq26y56nVYP2NFXGlJ9BtAmuZxxJ.webp', '2024-07-24 06:56:10', '2024-07-24 06:56:10'),
(35, 6, 'uploads/hinhanhsanpham/id_6/V6mFeX33vxw5cgbt0IvtHSHIJekXPNdUrbISc8GI.webp', '2024-07-24 06:56:10', '2024-07-24 06:56:10'),
(36, 6, 'uploads/hinhanhsanpham/id_6/jtDwK99JHiz1ooRxcTFeROBjkTbU7OJv6rWSrqhy.webp', '2024-07-24 06:56:10', '2024-07-24 06:56:10'),
(37, 7, 'uploads/hinhanhsanpham/id_7/UDom9L16OqD89ehDgUO9XCCGBlJ2c8vfoTmD2Lqd.webp', '2024-07-24 07:00:53', '2024-07-24 07:00:53'),
(38, 7, 'uploads/hinhanhsanpham/id_7/ttpwKmgA2xTsq8JttMVyrE9PuxtjbMfOubZ3XowS.webp', '2024-07-24 07:00:53', '2024-07-24 07:00:53'),
(39, 7, 'uploads/hinhanhsanpham/id_7/V6P1KObZsG4qOB2RRF1ohMzGPIkLPP8il6Vp2ZVh.webp', '2024-07-24 07:00:53', '2024-07-24 07:00:53'),
(40, 7, 'uploads/hinhanhsanpham/id_7/Z66uSDCZcHrGdBHZKWjEQ7XEPKqeVaMJHIMRzxhq.webp', '2024-07-24 07:00:53', '2024-07-24 07:00:53'),
(41, 8, 'uploads/hinhanhsanpham/id_8/TN9NaTbvio0Yht4On2DZT1FAqbcVtwxVFT9RQgt2.webp', '2024-07-24 07:07:31', '2024-07-24 07:07:31'),
(42, 8, 'uploads/hinhanhsanpham/id_8/6e9SMk6Xkwt0Q6DnuxdyK9MQkPsLIsI2AMEj5Pl3.webp', '2024-07-24 07:07:31', '2024-07-24 07:07:31'),
(43, 8, 'uploads/hinhanhsanpham/id_8/avsuTytfz9cEmPb3tzPIgU9QZuL9TMEU8kaOYnaT.webp', '2024-07-24 07:07:31', '2024-07-24 07:07:31'),
(44, 8, 'uploads/hinhanhsanpham/id_8/kUE47OLXCTS9cTDFFHhh6Y38V4s0MDuMTrhJgfFt.webp', '2024-07-24 07:07:31', '2024-07-24 07:07:31'),
(45, 8, 'uploads/hinhanhsanpham/id_8/gdOuWhpBGyMs2VkDdsGvHAjl9BBsDa9hp6psTodo.webp', '2024-07-24 07:07:31', '2024-07-24 07:07:31'),
(46, 9, 'uploads/hinhanhsanpham/id_9/7kAir9GQ6SBgcMHlDRKwfyzHP38Boy0B8AozXeua.webp', '2024-07-24 07:23:16', '2024-07-24 07:23:16'),
(47, 9, 'uploads/hinhanhsanpham/id_9/ekJ7YjE2sUKCeL2u663bbHONrm9baisCh7oaaUKS.webp', '2024-07-24 07:23:16', '2024-07-24 07:23:16'),
(48, 9, 'uploads/hinhanhsanpham/id_9/MAmBrDzN0EZAYlQ2dIh2aKXW0Sl6JJCVwna7GgMI.webp', '2024-07-24 07:23:16', '2024-07-24 07:23:16'),
(49, 9, 'uploads/hinhanhsanpham/id_9/kJsXdgAAu9IildzVRdB9mM4Bj1qUT1kHkbOtF1Cf.webp', '2024-07-24 07:23:16', '2024-07-24 07:23:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_17_083942_update_users_table', 1),
(6, '2024_07_18_143501_create_danh_mucs_table', 1),
(7, '2024_07_18_143707_create_hinh_anh_san_phams_table', 1),
(8, '2024_07_18_144426_create_san_phams_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_phams`
--

CREATE TABLE `san_phams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_san_pham` varchar(255) NOT NULL,
  `ten_san_pham` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `gia_san_pham` double NOT NULL,
  `gia_khuyen_mai` double DEFAULT NULL,
  `mo_ta_ngan` varchar(255) DEFAULT NULL,
  `noi_dung` text DEFAULT NULL,
  `so_luong` int(10) UNSIGNED NOT NULL,
  `luot_xem` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ngay_nhap` date NOT NULL,
  `danh_muc_id` bigint(20) UNSIGNED NOT NULL,
  `is_type` tinyint(1) NOT NULL DEFAULT 1,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `is_hot` tinyint(1) NOT NULL DEFAULT 1,
  `is_hot_deal` tinyint(1) NOT NULL DEFAULT 1,
  `is_show_home` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_phams`
--

INSERT INTO `san_phams` (`id`, `ma_san_pham`, `ten_san_pham`, `hinh_anh`, `gia_san_pham`, `gia_khuyen_mai`, `mo_ta_ngan`, `noi_dung`, `so_luong`, `luot_xem`, `ngay_nhap`, `danh_muc_id`, `is_type`, `is_new`, `is_hot`, `is_hot_deal`, `is_show_home`, `created_at`, `updated_at`) VALUES
(4, 'NDINO312', 'Nhẫn NDINO 312LDIA', 'uploads/sanpham/etkPeCdHD3vvAWs2yjAkJtQfkolBq15rO7ddmxIz.webp', 43783000, 43683000, 'Mã sản phẩm: NDINO 312 LDIA - 18K - Kim Cương Lab Grown\r\n\r\nThiết kế độc quyền từ Hàn Quốc\r\n(Giá trên là giá tham khảo của sản phẩm đã bao gồm viên kim cương chủ, quý khách vui lòng liên hệ hotline để được tư vấn giá chính xác)', '<p><br></p><p><strong>Thông tin nhẫn</strong>Mã sản phẩm:</p><p>Chất liệu:</p><p>Trọng lượng vàng:</p><p>Loại đá:</p><p>Kích thước đá:</p><p>&nbsp;NDINO 312LDIA</p><p>AU750</p><p>≈&nbsp;4.14g</p><p>Kim Cương Lab Grown</p><p><br></p><p>&nbsp;&nbsp;</p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino312ldia_00003_copy_8f5646f1d52b47ac93d160d1b33e1070_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino312ldia_00005_copy_5f38cffeb683436ba3396b0a84799af8_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino312ldia_4_79142bedb3264f75be47ae2163ad6650_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino312ldia_5_b106850f2ee7479f82d6f43f764c8253_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino312ldia_6_65f24a8074c140689aec79c77be92094_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino312ldia_7_efa1db15ea904c4e9a12549225d9cfc9_master.png\"></span></p><p><br></p>', 10, 0, '2024-07-24', 5, 1, 1, 1, 1, 1, '2024-07-24 06:47:42', '2024-07-24 06:47:42'),
(5, 'NCZ042LDI', 'Nhẫn cưới NCZ 042LDIA', 'uploads/sanpham/FkXzPajrBBq1zqM73cxP2XbhinfoEeoKBSk0qiiI.webp', 26795000, 25455250, 'Mã sản phẩm: NCZ042LDIA - 14K - Kim cương Lab-Grown\r\n\r\nThiết kế độc quyền từ Huy Thanh\r\n\r\n(Giá tham khảo 1 đôi, liên hệ hotline để được báo giá chính xác nhất)', '<p class=\"ql-align-center\"><strong>Nhẫn Nữ</strong>&nbsp;&nbsp;&nbsp;<img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_6_c32fa5fb62d849939e00299409de0a66_compact.png\"></p><p><strong>Thông tin nhẫn</strong>Mã sản phẩm</p><p>Chất liệu:</p><p>Trọng lượng vàng:</p><p>Loại đá:</p><p>Kích thước đá:NCZ 042LDIAW</p><p>AU585</p><p>≈&nbsp;1.91g</p><p>Kim cương Lab-Grown</p><p class=\"ql-align-center\">&nbsp;<strong>Nhẫn Nam</strong>&nbsp;&nbsp;&nbsp;<img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_5_f7c7365e81be4e01ad148224dd680186_compact.png\"></p><p><strong>Thông tin nhẫn</strong>Mã sản phẩm</p><p>Chất liệu:</p><p>Trọng lượng vàng:</p><p>Loại đá:</p><p>Kích thước đá:NCZ042LDIAM</p><p>AU585</p><p>≈&nbsp;2.78g</p><p>Kim cương Lab-Grown</p><p>&nbsp;&nbsp;</p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_1_a832ee9d89214d0dacd992779e30fb36_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_3_1d9aed84ef4f4edea1b5060f0177e6b1_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_2_3e6eeb857139446e86fcacf763ce1cf9_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_4_1bfbaad5fa8f462ea48f4bbf51fd8721_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_5_f7c7365e81be4e01ad148224dd680186_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_6_c32fa5fb62d849939e00299409de0a66_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_7_d16b29369e594b258454710a3bc79630_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ncz042ldia_8_1828d852b3d64be09c9d5dbf7d82e68e_master.png\"></span></p><p><br></p>', 10, 0, '2024-07-24', 1, 1, 1, 0, 0, 1, '2024-07-24 06:52:03', '2024-07-24 06:52:03'),
(6, 'BTCC9914', 'Bộ Trang Sức BTCC 99', 'uploads/sanpham/72KdzeQXKqHcoDIMVYbPMy7NIZvVGuXEqSDAYD6I.webp', 8013000, 8003000, 'Bộ Trang Sức BTCC 99\r\nMã sản phẩm: BTCC 99 - 14K - Cubic Zirconia + Ngọc trai trắng\r\n\r\nThiết kế độc quyền từ Huy Thanh', '<p><br></p><p class=\"ql-align-center\"><strong>Dây chuyền</strong>&nbsp;&nbsp;&nbsp;<img src=\"https://file.hstatic.net/1000112469/file/dcbtcc99-4_dc2ce252d61f48ae9bdc86764dfbaefb_compact.png\"></p><p><strong>Thông tin dây chuyền</strong>Mã sản phẩm:</p><p>Chất liệu:</p><p>Trọng lượng vàng:</p><p>Loại đá:</p><p>Kích thước đá:DCBTCC 99</p><p>AU585</p><p>≈ 1,79g</p><p>Cubic zirconia +&nbsp;Ngọc trai trắng</p><p class=\"ql-align-center\">&nbsp;&nbsp;<strong>Bông Tai Nữ</strong>&nbsp;&nbsp;&nbsp;<img src=\"https://file.hstatic.net/1000112469/file/btbtcc99_d61e655da82d4417aa2ab7d860eb1432_compact.png\"></p><p><strong>Thông tin bông tai</strong>Mã sản phẩm:</p><p>Chất liệu:</p><p>Trọng lượng vàng:</p><p>Loại đá:</p><p>Kích thước đá:BTBTCC 99</p><p>AU585</p><p>≈ 0,99g</p><p>Cubic zirconia +&nbsp;Ngọc trai trắng&nbsp;</p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/btcc99_8a37de7d0c1d4155865dc839fb70be4e_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/dcbtcc99_2_2987f88a0e4e4f85b2300cad724f72dd_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/dcbtcc99_1_96e15c525b9b4c11b742cdcaa37e2770_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/dcbtcc99-4_dc2ce252d61f48ae9bdc86764dfbaefb_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/dcbtcc99-5_b561d137aac44c32b9251057e2950fe2_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/btbtcc99_00004_copy_91fbd1d2a71f4068be198681dc44dca8_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/btbtcc99_00002_copy_4d3c8953af714435a75bb73532a58dac_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/btbtcc99_d61e655da82d4417aa2ab7d860eb1432_master.png\"></span></p><p><br></p>', 15, 0, '2024-07-24', 3, 1, 1, 1, 1, 1, '2024-07-24 06:56:10', '2024-07-24 06:56:10'),
(7, 'NDINO315', 'Nhẫn NDINO 315LDIA', 'uploads/sanpham/461FfVGheeR59re5AZT62jwaOGTBuE6bPzZ10Xqj.webp', 44473000, 44472000, 'Nhẫn NDINO 315LDIA\r\nMã sản phẩm: NDINO 315 LDIA - 18K - Kim Cương Lab Grown\r\n\r\nThiết kế độc quyền từ Hàn Quốc\r\n(Giá trên là giá tham khảo của sản phẩm đã bao gồm viên kim cương chủ, quý khách vui lòng liên hệ hotline để được tư vấn giá chính xác)', '<p class=\"ql-align-center\"><strong>Nhẫn Nữ</strong>&nbsp;&nbsp;&nbsp;<img src=\"https://file.hstatic.net/1000112469/file/ndino315ldia-vt-4_7a43193cfff241639b9e58d0feb39ccd_compact.png\"></p><p><strong>Thông tin nhẫn</strong>Mã sản phẩm:</p><p>Chất liệu:</p><p>Trọng lượng vàng:</p><p>Loại đá:</p><p>Kích thước đá:</p><p>&nbsp;NDINO 315 LDIA</p><p>AU750</p><p>≈&nbsp;4.1g</p><p>Kim Cương Lab Grown</p><p><br></p><p>&nbsp;&nbsp;</p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino315ldia_00002_copy_02ef0cdfc9374026ac0b6382c25e6cde_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino315ldia_00005_copy_a5fbed2c236a45468e51d963e73be2a7_master.jpg\"></span></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino315ldia-vt-4_7a43193cfff241639b9e58d0feb39ccd_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino315ldia-vt-5_4cd8be47ba2540e4bea8936abdef1d19_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino315ldia-vt-6_da1a89b05ea34539bf8140cd201b4cd5_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino315ldia-vt-7_7e911bb0a67844a1ba601bc251fad046_master.png\"></span></p><p><br></p>', 20, 0, '2024-07-24', 4, 1, 1, 1, 1, 1, '2024-07-24 07:00:53', '2024-07-24 07:00:53'),
(8, 'DCMAMD77', 'Dây chuyền DCMAMD 754LDIA', 'uploads/sanpham/5cKwqdbmlMsiLQVQmbIo3HlTpPNGhQu75UUVyUmH.webp', 13759000, 13758000, 'Thiết kế độc quyền từ Huy Thanh\r\n\r\n(Giá trên là giá tham khảo của sản phẩm đã bao gồm viên kim cương chủ, quý khách vui lòng liên hệ hotline để được tư vấn giá chính xác)', '<p class=\"ql-align-center\"><strong>Dây chuyền nữ</strong>&nbsp;&nbsp;&nbsp;<img src=\"https://file.hstatic.net/1000112469/file/dcmamd754ldia-vt-1_1836f94dab2d445285145b92c9abdb34_compact.png\"></p><p><strong>Thông tin dây</strong>Mã sản phẩm:</p><p>Chất liệu:</p><p>Trọng lượng vàng:</p><p>Loại đá:</p><p>Kích thước đáDCMAMD 754LDIA</p><p>AU585</p><p>≈&nbsp;2,17g</p><p>Kim cương Lab-Grown</p><p>&nbsp;&nbsp;</p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/dcmamd754ldia-vt-1_1836f94dab2d445285145b92c9abdb34_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/dcmamd754ldia-vt-2_cd9d661e26b14965900311ad9cc31a10_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/dcmamd754ldia-vt-4_e502256094b74f58b179154c606b554f_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/dcmamd754ldia-vt-3_798d88029eee41088d39e40d4f49ac9c_master.png\"></span></p><p><br></p>', 16, 0, '2024-07-24', 6, 1, 1, 1, 1, 1, '2024-07-24 07:07:31', '2024-07-24 07:07:31'),
(9, 'NDINO309', 'Nhẫn NDINO 309LDIA', 'uploads/sanpham/xqx2QfkSLeuS9vpanOBbSaWpgNSzpG66Se3aJb9L.webp', 52527000, 52521000, 'Mã sản phẩm: NDINO 309 LDIA - 18K - Kim Cương Lab Grown\r\n\r\nThiết kế độc quyền từ Hàn Quốc\r\n(Giá trên là giá tham khảo của sản phẩm đã bao gồm viên kim cương chủ, quý khách vui lòng liên hệ hotline để được tư vấn giá chính xác)', '<p><br></p><p class=\"ql-align-center\"><strong>Nhẫn Nữ</strong>&nbsp;&nbsp;&nbsp;<img src=\"https://file.hstatic.net/1000112469/file/ndino309ldia_4_c384c8cf1acc48efa5ab6ef2263f12fa_compact.png\"></p><p><strong>Thông tin nhẫn</strong>Mã sản phẩm:</p><p>Chất liệu:</p><p>Trọng lượng vàng:</p><p>Loại đá:</p><p>Kích thước đá:</p><p>&nbsp;NDINO 309 LDIA</p><p>AU750</p><p>≈&nbsp;3.86g</p><p>Kim Cương Lab Grown</p><p><br></p><p>&nbsp;&nbsp;</p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino309ldia_00002_copy_d40f3fb1c99d4731bef1e78fe7344017_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino309ldia_00004_copy_83fbf291db234a00949323d3b0cee4ac_master.jpg\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino309ldia_4_c384c8cf1acc48efa5ab6ef2263f12fa_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino309ldia_5_3a8f6dc2a15b4f84a17344fe67868957_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino309ldia_6_68d9e9c8b919437481f18ea77a73eefe_master.png\"></span></p><p class=\"ql-align-center\"><span style=\"background-color: rgb(245, 245, 245);\"><img src=\"https://file.hstatic.net/1000112469/file/ndino309ldia_7_a39ce88c9bdf4ab1a1b41797d94f4a46_master.png\"></span></p><p>&nbsp;</p>', 5, 0, '2024-07-24', 4, 1, 1, 1, 1, 1, '2024-07-24 07:23:16', '2024-07-24 07:23:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','User') NOT NULL DEFAULT 'User',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đặng Quốc Phong', 'phongdqph39775@fpt.edu.vn', NULL, '$2y$10$rsm4lwOInfTo0F78na4Xvuf040AzX3Fe6teaU05JuOj6V/MshuHVi', 'Admin', NULL, '2024-07-20 20:01:08', '2024-07-20 20:01:08'),
(2, 'Nguyen van B', 'dangquocphong22222@gmail.com', NULL, '$2y$10$4t.8QzGnwZbzRO6C9jj.ke8YjvliID9J/Nm/wkn67HpM33PrRsKdy', 'User', NULL, '2024-07-23 07:19:50', '2024-07-23 07:19:50');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danh_mucs`
--
ALTER TABLE `danh_mucs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `san_phams_ma_san_pham_unique` (`ma_san_pham`),
  ADD KEY `san_phams_danh_muc_id_foreign` (`danh_muc_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danh_mucs`
--
ALTER TABLE `danh_mucs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  ADD CONSTRAINT `san_phams_danh_muc_id_foreign` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_mucs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
