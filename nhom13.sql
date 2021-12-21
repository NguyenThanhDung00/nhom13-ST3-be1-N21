-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 21, 2021 lúc 12:21 AM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom13`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'SamSung'),
(3, 'Xiaomi'),
(4, 'Huawei'),
(5, 'Asus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manu_id` int(20) DEFAULT NULL,
  `type_id` int(20) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2033 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1001, 'iPhone 13 Pro Max 128GB', 1, 101, 33990000, 'DienThoaiApple', 'Thông số kỹ thuật:\r\nMàn hình 6.7\", Super Retina XDR, OLED, 2778 x 1284 Pixel Camera sau 12.0 MP + 12.0 MP + 12.0 MP Camera Selfie 12.0 MP RAM 6 GB Bộ nhớ trong 128 GB CPU A15 Bionic GPU Apple GPU 5 nhân Dung lượng pin 4352 mAh Thẻ sim 2, 1 eSIM, 1 Nano SIM Hệ điều hành iOS 15 Xuất xứ Trung Quốc Thời gian ra mắt 09/2021.', 1, '2021-11-01 08:38:14'),
(1002, 'MacBook Air 13\" 2020 M1 256GB', 1, 102, 28999000, 'LapTopApple', 'Thông số kỹ thuật:\r\nCPU Apple M1 RAM 8 GB, LPDDR4 Màn hình 13.3\", 2560 x 1600 Pixel, IPS, IPS LCD LED Backlit, True Tone Đồ họa Apple M1 GPU 7 nhân Ổ cứng SSD 256 GB Hệ điều hành Mac OS Trọng lượng (kg) 1.29 Kích thước (mm) 304.1 x 212.4 x 4.1 ~ 16.1 Xuất xứ Trung Quốc Năm ra mắt 2020.', 0, '2021-11-02 08:38:14'),
(1003, 'Apple TV 2021 4K 64GB', 1, 103, 5999000, 'TiViApple', 'Giao tiếp & kết nối: Cổng giao tiếp HDMI 2.1 Gigabit Ethernet Cổng sạc Bluetooth 5.0.\r\nVi xử lý & đồ họa: Chipset Apple A12 Bionic.\r\nTiện ích:  Tính năng khác Hỗ trợ độ phân giải 4K HDR (UltraHD) Tốc độ khung hình 60FPS Bộ giải mã âm thanh Dolby Atmos Điều khiển TV với Siri Remote.\r\nThông số khác: Hãng sản xuất Apple Chính hãng.', 0, '2021-11-03 08:38:14'),
(1004, 'Tai nghe AirPods Pro', 1, 104, 5499000, 'TaiNgheApple', 'Chi tiết thông số kỹ thuật: \r\nChất liệu Nhựa cao cấp Dây dài Cáp sạc USB-C to Lightning dài 1m Dòng hàng Airpods Pro Dòng máy tương thích 1 iPhone, iPad, Apple Watch, Mac, Apple TV, iPod Dòng máy tương thích 2 Điện thoại, MTB Dung lượng pin - Thời gian nghe lên tới 4,5 giờ- Thời gian đàm thoại lên tới 3,5 giờ- 5 phút sạc cho 1 giờ nghe nhạc hoặc đàm thoại Hệ điều hành tương thích iOS, iPadOS, watchOS, macOS, tvOS, Android, Windows Khoảng cách kết nối 10m Loại kết nối Bluetooth Loại tai nghe Không dây Màu sắc White phụ kiện đi kèm Hộp sạc không dây, Nút đệm cao su (3 kích cỡ), Cáp USB-C to Lightning, Sách HDSD Thời gian bảo hành 12 Tháng Thời gian sạc 5 phút sạc cho 1 giờ sử dụng Thương hiệu Apple Tính năng Chống ồn chủ động. Chế độ Transparency nghe âm thanh bên ngoài, chuyển qua lại 2 chế độ bằng cảm biến lực trên tai nghe, - Thời gian nghe lên tới 4,5 giờ- Thời gian đàm thoại lên tới 3,5 giờ- 5 phút sạc cho 1 giờ nghe nhạc hoặc đàm thoại, Có khả năng kháng nước, chống mồ hôi theo tiêu chuẩn IPX4 Trọng lượng - Tai nghe: 5.4 grams- Hộp sạc: 45.6 grams Xuất xứ Trung Quốc.', 0, '2021-11-04 08:38:14'),
(1005, 'Apple Watch Series 3 GPS 38mm viền nhôm dây cao su', 1, 105, 4999000, 'DongHoApple', 'Thông số kỹ thuật:\r\nCông nghệ màn hình OLED Retina display with Force Touch Kích thước màn hình 38mm CPU Apple S3 Bộ nhớ trong 8GB Hệ điều hành watchOS Kết nối được với hệ điều hành iOS Chất liệu mặt Ion-X strengthened glass Chất liệu dây Cao su Chống nước Có, độ sâu dưới 50m Thời gian sử dụng pin Sử dụng đến 18h Kết nối Wifi, Bluetooth Xuất xứ Trung Quốc Năm sản xuất 2019.', 0, '2021-11-05 08:38:14'),
(1006, 'Điện thoại Samsung Galaxy A52s 5G 256GB', 2, 101, 11790000, 'DienThoaiSamSung', 'Cấu hình Điện thoại Samsung Galaxy A52s 5G 256GB: \r\nMàn hình: Super AMOLED6.5\"Full HD+ • Hệ điều hành: Android 11, Camera sau: Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP, Camera trước: 32 MP, Chip: Snapdragon 778G 5G 8 nhân, RAM: 8 GB, Bộ nhớ trong: 256 GB, SIM: 2 Nano SIMHỗ trợ 5G, Pin, Sạc: 4500 mAh25 W.', 0, '2021-11-06 08:38:14'),
(1007, 'Samsung Galaxy Book Flex', 2, 102, 18500000, 'LapTopSamSung', 'Thông số kỹ thuật Samsung Galaxy Book Flex: \r\nMÀN HÌNH Màn hình 13.3\" Độ phân giải màn hình 1920 x 1080pixels Công nghệ màn hình IPS NỀN TẢNG Hệ điều hành Windows 10 Home Tốc độ bộ xử lý 3.7GHz CPU Intel Core i5 PIN Thời lượng sử dụng pin 20h TÍNH NĂNG Bàn phím phát sáng Có Màn hình cảm ứng Có Đọc dấu vân tay Có THIẾT KẾ Trọng lượng 1.2kg Chất liệu vỏ máy Nhôm Ổ CỨNG Loại ổ cứng SSD ĐỒ HỌA Card đồ họa NVIDIA GeForce MX250 CỔNG KẾT NỐI HDMI Có USB 3.0 Có USB Type-C Có Cổng tai nghe Có Cổng DisplayPort Không Cổng DVI Không Khe đọc thẻ Có USB Có Thunderbolt Có VGA Không CAMERA Độ phân giải webcam HD BẢO HÀNH Bảo hành 1 năm KẾT NỐI Tiêu chuẩn Wi-Fi 802.11 ax.\r\n', 0, '2021-11-07 08:38:14'),
(1008, 'Smart Tivi QLED 4K 50 inch Samsung QA50Q65A', 2, 103, 21900000, 'TiViSamSung', 'Thông số kỹ thuật Smart Tivi QLED 4K 50 inch Samsung QA50Q65A:\r\nLoại tivi: Smart Tivi QLED50 inch4K, Hệ điều hành TizenOS 6.0, Ứng dụng phổ biến Clip TVFPT PlayGalaxy Play (Fim+)MP3 ZingMyTVNetflixPops KidSpotifyTrình duyệt webVieONYouTube, Công nghệ hình ảnh: Ambient ModeBrightness/Color DetectionQuantum LiteChuyển động mượt Motion Xcelerator TurboGiảm độ trễ chơi game Auto Low Latency Mode (ALLM)HDR10+Quantum DotQuantum HDRSuper Ultra Wide Game View & Game BarSupreme UHD Dimming, Điều khiển bằng giọng nói Bixby (Chưa có tiếng Việt)Google Assistant có tiếng ViệtTìm kiếm giọng nói trên YouTube bằng tiếng Việt, Remote thông minh: One Remote sạc qua USB C & ánh sáng, Chiếu hình từ điện thoại lên TV AirPlay 2Tap View, Kích thước: Ngang 112 cm - Cao 70.9 cm - Dày 19.9 cm, Năm ra mắt: 2021, Hãng Samsung.', 0, '2021-11-08 08:38:14'),
(1009, 'Tai nghe Bluetooth 1 Bên Samsung MG900E', 2, 104, 850000, 'TaiNgheSamSung', 'Thông số kỹ thuật Tai nghe Bluetooth 1 Bên Samsung MG900E:\r\nPin: Dùng 9 giờ - Sạc 2 giờ, Cổng sạc: Micro USB, Tương thích: AndroidiOS (iPhone)WindowsWindows Phone, Tiện ích: Có mic thoạiTai nghe nhét tai, Hỗ trợ kết nối: Bluetooth 3.0, Điều khiển bằng: Phím nhấn, Hãng Samsung.', 0, '2021-11-09 08:38:14'),
(1010, 'Samsung Galaxy Watch 4 Classic 42mm', 2, 105, 8490000, 'DongHoSamSung', ' Cấu hình Samsung Galaxy Watch 4 Classic 42mm:\r\nMàn hình: SUPER AMOLED1.19 inch, Thời lượng pin: Khoảng 1.5 ngày, Kết nối với hệ điều hành: Android dùng Google Mobile Service, Mặt: Kính cường lực Gorrilla Glass Dx+42 mm, Tính năng cho sức khỏe: Chế độ luyện tậpTheo dõi giấc ngủĐo nhịp timĐo nồng độ oxy (SpO2)Đếm số bước chân, Hãng Samsung.', 0, '2021-11-10 08:38:14'),
(1011, 'Xiaomi Redmi Note 10S 8GB-128GB', 3, 101, 6490000, 'DienThoaiXiaomi', 'Thông số kỹ thuật: Màn hình 6.43\", FHD+, AMOLED, 1080 x 2400 Pixel Camera sau 64.0 MP + 8.0 MP + 2.0 MP + 2.0 MP Camera Selfie 13.0 MP RAM 8 GB Bộ nhớ trong 128 GB CPU MediaTek Helio G95 GPU Mali-G76 MC4 Dung lượng pin 5000 mAh Thẻ sim 2, Nano SIM Hệ điều hành Android 11 Xuất xứ Trung Quốc Thời gian ra mắt 05/2021.', 0, '2021-11-11 08:38:14'),
(1012, 'Laptop Xiaomi Mi Notebook Air 13.3 Core i7', 3, 102, 21950000, 'LapTopXiaomi', 'Thông Số Chi Tiết :\r\nThông Số Kỹ Thuật Xiaomi Notebook 13.3inch Kích thước 309.6mm x 210.9mm x 14.8mm Trọng lượng 1.28kg Màn hình 13.3″ (293.76mm x 165.24mm) Full HD 1920 x 1080 (166 ppi) 16:9 CPU Intel Core i7-8550u GPU NVIDIA GeForce MX150 2G GDDR5 Bộ nhớ SSD 256GB PCIe × 4 NVMe (có thể mở rộng thêm một thanh SSD) Ram 8GB DDR4 2133MHz Máy ảnh Camera 1.0MP 1280 x 720 Wifi Intel 2X2, 802.11 b/g/n/ac, 2.4GHz、5GHz Bluetooth Bluetooth 4.1 Âm thanh Chip âm thanh Realtek ALC255, Loa đôi AKG 2Wx2, Dolby Audio™ Premium Kết nối 2 cổng USB 3.0 (tốc độ 5 Gbps), HDMI 4K, Jack 3.5mm, Type-C Hệ điều hành Windows 10 Home Bản Quyền Tiếng Anh Pin Pin Li-Po 40w(typ), sạc nhanh 30 phút được 50%, thời gian sử dụng dài nhất 9.5 giờ.', 0, '2021-11-12 08:38:14'),
(1013, 'TIVI XIAOMI EA65 2022 Series', 3, 103, 14990000, 'TiviXiaomi', 'HÃNG Xiaomi Chất liệu Khung Kim loại Kích thước với đế (chiều rộng * chiều cao * độ dày) mm 1446,5 * 289,3 * 892,2mm Kích thước màn hình đơn (chiều rộng * chiều cao * độ dày) mm 1446,5 * 84,2 * 837,4mm Trọng lượng có đế (kg) 17.46 Kích thước đóng gói bên ngoài (chiều rộng * chiều cao * độ dày) mm 1606 * 176 * 951mm Trọng lượng màn hình đơn (kg) 22,7 Trọng lượng bao bì bên ngoài (kg) 17.3.', 0, '2021-11-13 08:38:14'),
(1014, 'Xiaomi Flipbuds Pro', 3, 104, 4719019, 'TaiNgheXiaomi', 'Đặt điểm kĩ thuật:\r\nKhông: XIAOMI, Bluetooth: Bluetooth5.0, Trọng lượng: Tổng hợp Bluetooth,Pin tích hợp,Nước 21,Cẩu,Chơi game,có vi,Trọng khi có,Không dây,Ghim,Độ phân giải cao (HD), Phương pháp: TWS.', 0, '2021-11-14 08:38:14'),
(1015, 'Đồng hồ thông minh Xiaomi Mi Watch Lite', 3, 105, 1590000, 'DongHoXiaomi', 'Thông số kỹ thuật\r\nCông nghệ màn hình TFT LCD Kích thước màn hình 1.4\" CPU Dialog 14695 Bộ nhớ trong 256 Mb Hệ điều hành RTOS Kết nối được với hệ điều hành Android 5.0 & iOS 10 trở lên Chất liệu mặt kính cường lực Chất liệu dây TPU Chống nước 5 ATM Thời gian sử dụng pin 9 ngày sử dụng Kết nối BT 5.1 BLE Xuất xứ Trung Quốc Năm sản xuất 2020.', 0, '2021-11-15 08:38:14'),
(1016, 'Huawei P40 8GB 128GB', 4, 101, 8990000, 'DienThoaiHuawai', 'Thông số kỹ thuật: \r\nBộ nhớ trong 128 GB Camera chính 50MP – 8MP – 16MP Camera phụ 32MP CPU Kirin 990 5G (7 nm+) Độ phân giải màn hình Full HD+ (1080 x 2340 pixel) Dung lượng pin 3800mAh Hệ điều hành Android 10, EMUI 10.1 Kích thước màn hình 6.1 inches Màu sắc Blue, Silver RAM 8 GB Sạc nhanh Sạc nhanh 22.5W Thẻ nhớ Hỗ trợ thẻ nhớ 256 GB Thẻ sim 2 nano SIM.', 0, '2021-11-16 08:38:14'),
(1017, 'HUAWEI MateBook X Pro 2020', 4, 102, 42473056, 'LapTopHuawai', 'Thông số kỹ thuật:\r\nCăn bản Thương hiệu HUAWEI Cách thức MateBook X Pro 2020 Màu sắc Bạc Vật chất Hợp kim nhôm, kỹ thuật CNC Hệ điều hành Windows 10 (Phiên bản Trung Quốc) CPU Intel Core i5-10210U Tần số CPU Quad-Core Eight Thread 1.6GHz-4.2GHz Bộ nhớ đệm 6MB Công nghệ xử ký 14nm Sự tiêu thụ năng lượng 15W GPU Intel UHD 620 Bộ nhớ cache RAM 16GB Loại RAM LPDDR3 Bộ nhớ đĩa cứng 512GB NVMe SSD PCIe3.0 * 4 Mạng WIFI Chuẩn IEEE WLAN: 802.11ax & 802.11ac / a / b / g / n / Băng tần: 2.4GHz / 5GHz WIFI kép bên trong Bluetooth 5.0 Chức năng Bluetooth Hỗ trợ chuột Bluetooth, bàn phím và các thiết bị Bluetooth khác và truyền tệp Trưng bày Kích thước màn hình 13.0 inch Tỷ lệ hiển thị 3: 2, 90% màn hình so với thân máy Độ phân giải màn hình 3000 * 2000 (FHD), 278PPI Loại màn hình LTPS (LCD), (Đa điểm 10 điểm) Gam màu 100% sRGB Video âm thanh Loại máy ảnh Camera đơn Camera phía trước 1.0MP Loa Được hỗ trợ MIC Được hỗ trợ Kết nối USB 3.0 đúng Loại-C Có, USB-C 2 * đầy đủ tính năng, truyền tối đa 3840 * 2160 pixel Jack cắm tai nghe 3,5 mm đúng Chung loại pin 42Wh, thời gian chơi> 9h, Pin Lithium-ion Polymer Cảm biến dấu vân tay Được hỗ trợ Bàn phím có đèn phía dưới Được hỗ trợ (F3) Loại bàn phím QWERTY ( Bàn phím chỉ US) Bộ sạc Hỗ trợ 65W, 5V / 2A, 9V / 2A, 12V / 2A, 15V / 3A, 20V / 3.25A, 10V / 3A Skype Được hỗ trợ Youtube Được hỗ trợ Loa Được hỗ trợ Định dạng phương tiện Định dạng hình ảnh JPEG, GIF, BMP, PNG, JPG Định dạng âm nhạc AAC, MP3, WAV Định dạng MS Office Từ, Excel, PPT Ngôn ngữ Trung Quốc.', 0, '2021-11-17 08:38:14'),
(1018, 'Tai nghe không dây Huawei Freebuds 4i', 4, 104, 1690000, 'TaiNgheHuawei', 'Thông số kỹ thuật: \r\nThơi lượng pin Bật ANC 7.5 giờ Tắt ANC 10 giờ Hộp sạc 21 giờ Công nghệ âm thanh Chống ồn chủ động (ANC) Xuyên âm Micro Micro đàm thoại giảm ồn Tương thích Android,iOS,Windows Tính năng khác Sử dụng độc lập 1 bên tai Tự động kết nối khi mở hộp Số thiết bị kết nối cùng lúc 1 thiết bị Ứng dụng kết nối Huawei AI Life Phương thức điều khiển Cảm ứng chạm Thao tác điều khiển Chuyển bài hát Nhận / từ chối cuộc gọi Kích hoạt trở lý ảo Bluetooth 5.0.', 0, '2021-11-18 08:38:14'),
(1019, 'HUAWEI WATCH 3 Pro', 4, 105, 10490000, 'DongHoHuawai', 'Kích Thước 48 mm x 49,6 mm x 14 mm *14 mm Kích thước vỏ 48 mm • Kích thước cổ tay 140-210 mm Màn hình Kích thước 1,43 inch Màn hình màu AMOLED Hỗ trợ các thao tác cảm ứng toàn màn hình, gồm vuốt, chạm, nhấn và giữ. Độ phân giải 466 x 466 pixel, PPI 326 • Vỏ đồng hồ Chất liệu Titan + gốm Trọng Lượng Khoảng 63 g (không dây đeo) Dây đồng hồ Dây đeo da • Bộ cảm biến Cảm biến gia tốc Cảm biến con quay hồi chuyển Cảm biến địa từ Cảm biến nhịp tim quang học Cảm biến ánh sáng xung quanh Cảm biến áp suất khí quyển Cảm biến nhiệt độ Bộ nhớ ROM trong 16 GB RAM trong 2 GB Nút Nút Home (xoay núm vặn) và Nút bên • Cổng sạc Sạc không dây • Yêu cầu đối với hệ điều hành Android 6.0 trở lên iOS 9.0 trở lên Mạng Quốc tế--UMTS : B1 / B3 / B5 / B6 / B8 / B19 LTE : B1 / B3 / B5 / B6 / B7 / B8 / B9 / B18 /B19 / B20 / B26 / B38 / B39 / B40 / B41 • Khả năng kết nối WLAN Có hỗ trợ (chỉ hỗ trợ 2,4 GHz) GPS GPS--L1 : GPS + GLONASS + Galileo + Beidou + QZSS GPS--L5 : GPS + GLONASS + Beidou NFC Có hỗ trợ Bluetooth 2,4 GHz, hỗ trợ BT5.2 và BR + BLE Loa Có hỗ trợ • Micro Có hỗ trợ • Môi trường Nhiệt độ : 0℃ ～ +35℃ Độ ẩm : 5% ～ 95%.', 0, '2021-11-19 08:38:14'),
(1020, 'Chuột Bluetooth Huawei AF30', 4, 106, 600, 'ChuotHuawai', 'Thông số kĩ thuật: \r\nTên sản phẩm Chuột Bluetooth Huawei AF30 chính hãng Các tính năng không dây bổ sung MPN 02452412 Phạm vi kết nối Từ 6 đến 10 mét Cảm biến độ phân giải 1600 Dpi.', 0, '2021-11-20 08:38:14'),
(1021, 'ASUS ROG Phone 5', 5, 101, 18990000, 'DienThoaiAsus', 'Thông số kỹ thuật: \r\nKích thước màn hình 6.78 inches Công nghệ màn hình AMOLED Camera sau Camera góc rộng: 64 MP, f/1.8, 26mm, 1/1.73\", 0.8µm, PDAF Camera góc siêu rộng: 13 MP, f/2.4, 11mm, 125˚ Camera macro\" 5 MP, f/2.0 Camera trước 24 MP, f/2.5, 27mm (wide), 0.9µm Chipset Snapdragon 888 (5 nm) Dung lượng RAM 16 GB Bộ nhớ trong 256 GB Pin 6000 mAh Thẻ SIM 2 SIM (Nano-SIM) Hệ điều hành Android 11, ROG UI Độ phân giải màn hình 1080 x 2448 pixels (FullHD+) Loại CPU 8 nhân ((1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680)).', 0, '2021-11-21 08:38:14'),
(1022, 'Laptop Asus TUF Gaming FX516PM i7', 5, 102, 32990000, 'LapTopAsus', 'Cấu hình Laptop Asus TUF Gaming FX516PM i7 11370H/8GB/512GB/6GB RTX3060/144Hz/Win10 (HN002T):\r\nCPU: i711370H3.3GHz • RAM: 8 GBDDR4 2 khe (1 khe 8GB onboard + 1 khe trống)3200 MHz • Ổ cứng: Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1TB)512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1TB) • Màn hình: 15.6\"Full HD (1920 x 1080)144Hz • Card màn hình: Card rờiRTX 3060 6GB • Cổng kết nối: 3 x USB 3.2HDMI 2.0Jack tai nghe 3.5 mmLAN (RJ45)Thunderbolt 4 USB-C • Đặc biệt: Có đèn bàn phím • Hệ điều hành: Windows 10 Home SL • Thiết kế: Vỏ nhựa - nắp lưng bằng kim loại Kích thước, trọng lượng: Dài 360 mm - Rộng 252 mm - Dày 19.9 mm - Nặng 2 kg • Thời điểm ra mắt: 2021.', 0, '2021-11-22 08:38:14'),
(2023, 'Chuột Asus ROG KERIS Wireless', 5, 106, 1900000, 'ChuotAsus', 'Thông số kỹ thuật: \r\nThương hiệu: ASUS, Tình trạng: Mới 100%, Bảo hành: 24 tháng, Model: ROG KERIS Wireless, Màu sắc: Đen, Mắt đọc: PMW3389, DPI: 400~ 16000, Tần số phản hồi: 1000Hz, Chất liệu: Nhựa ABS, Số lượng nút: 5, Switch: ROG 70M Micro Switch, Tuổi thọ: 70 triệu lần nhấn, Thời lượng pin: – 78 giờ không chiếu sáng – 52 giờ với ánh sáng mặc định (Thở), LED: RGB (AURA), Kết nối: Không dây, Kiểu kết nối: Wireless, Trọng lượng: 62g.', 0, '2021-11-23 08:38:14'),
(2024, 'Đồng hồ thông minh Asus Vivowatch SP', 5, 105, 5590000, 'DongHoAsus', 'Thông số kỹ thuật: \r\nKích thước màn hình 1.34 inches Công nghệ màn hình LCD Tính năng Chế độ luyện tập, Có định vị GPS, Đếm bước chân, Đo nhịp tim, Đo nồng độ oxy trong máu Pin 10 ngày sử dụng bình thường 14 ngày với chế độ tiết kiệm pin.', 0, '2021-11-24 08:38:14'),
(2025, 'Tai nghe Asus Rog Cetra 2', 5, 104, 2290000, 'TaiNgheAsus', 'Thông số kỹ thuật: \r\nJack cắm Type C Công nghệ âm thanh Chống ồn chủ động ANC Tính năng khác Đèn Led RGB 2 bên tai Chế độ môi trường xung quanh Thao tác điều khiển Điều khiển phím vật lý Cổng giao tiếp USB-C.', 0, '2021-11-25 08:38:14'),
(2029, 'Laptop Apple MacBook Air M1 2020 16GB', 1, 101, 33990000, 'apple-macbook-air-m1-2020-z12a00050-1-org.jpg', '1234', 0, '2021-12-20 15:22:23'),
(2032, 'Samsung Galaxy Z Fold3 5G 512GB ', 2, 101, 44990000, 'samsung-galaxy-z-fold-3-green-gc-org.jpg', 'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 1, '2021-12-20 19:09:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(101, 'Điện thoại'),
(102, 'Laptop'),
(103, 'Tivi'),
(104, 'Tai nghe'),
(105, 'Đồng hồ'),
(106, 'Chuột');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'dung', '01cfcd4f6b8770febfb40cb906715822', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
