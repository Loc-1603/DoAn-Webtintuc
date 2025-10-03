-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2025 lúc 12:50 PM
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
-- Cơ sở dữ liệu: `tintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `TieuDeKhongDau` varchar(255) NOT NULL,
  `TomTat` text NOT NULL,
  `NoiDung` longtext NOT NULL,
  `Hinh` varchar(255) NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT 0,
  `SoLuotXem` int(11) NOT NULL DEFAULT 0,
  `idLoaiTin` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idLoaiTin`, `created_at`, `updated_at`) VALUES
(1, 'Lần đầu ĐH FPT cấp học bổng tiến sĩ ', 'Lan-Dau-Dh-Fpt-Cap-Hoc-Bong-Tien-Si', 'Bên cạnh 400 suất học bổng Nguyễn Văn Đạo, ĐH FPT lần đầu tiên chọn ra 30 học sinh xuất sắc nhất để cấp học bổng toàn phần đào tạo từ cử nhân lên thẳng tiến sĩ, với tổng giá trị quỹ lên tới 5 triệu USD.', 'Chúng tôi sẽ cập nhật sau', 'FPT-2.jpg', 0, 0, 1, NULL, NULL),
(2, 'Nợ giáo viên tiền tỷ chi phí phổ cập giáo dục ', 'No-Giao-Vien-Tien-Ty-Chi-Phi-Pho-Cap-Giao-Duc', 'Ba năm qua, nhiều giáo viên ở Khánh Hòa bỏ công sức, kể cả tiền bạc để thực hiện phổ cập giáo dục cho học sinh trên địa bàn tỉnh, song đến nay vẫn chưa nhận được tiền chính quyền chi trả. ', 'Chúng tôi sẽ cập nhật sau', 'pho-cap-giao-duc-nho-2.jpg', 1, 0, 1, NULL, NULL),
(3, 'Những nụ hôn ngọt ngào trong đêm tình nhân ', 'nhung-nu-hon-ngot-ngao-trong-dem-tinh-nhan', '<p>Tối 13/2, hàng nghìn bạn trẻ có mặt tại cầu Ánh Sao (quận 7, TP HCM) chứng kiến những lời tỏ tình cùng những nụ hôn ngọt ngào của 100 cặp tình nhân trong \"Đêm Valentine thế kỷ\".</p>\r\n', 'Chúng tôi sẽ cập nhật sau', '250h_jpg_thumb210x0_ns.jpg', 1, 0, 2, NULL, NULL),
(4, 'Hot girl tâm sự về ngày Valentine ', 'Hot-Girl-Tam-Su-Ve-Ngay-Valentine', 'Một bông hồng trắng bằng khăn giấy, chiếc xe đạp gắn đầy hoa, hay bài thơ của chàng \"thi sĩ\" vô danh gửi tặng… là những món quà đầy ấn tượng mà hot girl Midu từng nhận được trong các mùa Valentine. ', 'Chúng tôi sẽ cập nhật sau', 'hot-girl-valentine-2.jpg', 1, 0, 2, NULL, NULL),
(5, 'Một mình ở Thái Lan ', 'Mot-Minh-O-Thai-Lan', 'Không quá ồn ã tấp nập như Hong Kong, hay quá yên bình như Hội An, Bangkok khiến cho tôi cảm thấy vô cùng phấn khích, tựa hồ như vừa thức giấc sau một cơn ngủ say. Bạn Nguyễn Anh Ngọc viết. ', 'Chúng tôi sẽ cập nhật sau', 'top1.jpg', 1, 0, 3, NULL, NULL),
(6, 'Trai Hà thành trổ tài vật cầu đầu xuân', 'Trai-Ha-Thanh-Tro-Tai-Vat-Cau-Dau-Xuan', 'Những pha tranh cướp quyết liệt cùng những tiếng cười vui là hình ảnh về lễ hội vật cầu đầu xuân của các thanh niên làng Thúy Lĩnh, quận Hoàng Mai (Hà Nội), diễn ra chiều 8/2 (6 Tết). ', 'Chúng tôi sẽ cập nhật sau', '130.jpg', 1, 0, 3, NULL, NULL),
(7, 'Du học hè Singapore 2011', 'Du-Hoc-He-Singapore-2011', 'Đăng ký trước ngày 29/1, học sinh sẽ được tặng 6 triệu đồng khi tham gia lịch trình 4 tuần ở tại resort và tặng 4 triệu đồng cho học sinh tham gia lịch trình 2 hoặc 3 tuần ở tại resort.', 'Chúng tôi sẽ cập nhật sau', '400.jpg', 1, 0, 4, NULL, NULL),
(8, 'Chương trình trung học tại Canada', 'Chuong-Trinh-Trung-Hoc-Tai-Canada', 'Bà Birgit Hartel, Giám đốc tuyển sinh nhóm các trường công lập River East Transcona, tỉnh Manitoba, Canada sẽ giới thiệu về môi trường sống và học tập từ 18h đến 20h ngày 21/1 tại số 22 phố Phạm Huy Thông, Ba Đình, Hà Nội.', 'Chúng tôi sẽ cập nhật sau', 'New-Image250.jpg', 1, 0, 4, NULL, NULL),
(9, 'Vợ đánh hổ cứu chồng', 'Vo-Danh-Ho-Cuu-Chong', 'Một phụ nữ ở phía bắc Malaysia đánh hổ bằng muỗng gỗ khi con thú tấn công chồng bà, nhờ đó người đàn ông thoát chết.', 'Chúng tôi sẽ cập nhật sau', 'tiger.jpg', 1, 0, 5, NULL, NULL),
(10, 'Nga đưa tên lửa tối tân lên đảo tranh chấp với Nhật', 'Nga-Dua-Ten-Lua-Toi-Tan-Len-Dao-Tranh-Chap-Voi-Nhat', 'Matxcơva sẽ triển khai hệ thống tên lửa phòng không hiện đại tầm ngắn và trung lên các đảo tranh chấp với Nhật Bản, quan chức cấp cao của Bộ Tổng tham mưu Nga cho biết hôm nay.', 'Chúng tôi sẽ cập nhật sau', 's400.jpg', 1, 0, 5, NULL, NULL),
(11, 'Làn sóng biểu tình khắp thế giới Ảrập', 'Lan-Song-Bieu-Tinh-Khap-The-Gioi-Arap', 'Cuộc lật đổ chế độ của người dân Ai Cập gây ra hiệu ứng domino trên toàn thế giới Ảrập, khi người dân các nước trong khu vực liên tiếp đổ ra đường đòi hạ bệ chính phủ.', 'Chúng tôi sẽ cập nhật sau', 'arap1.jpg', 1, 0, 6, NULL, NULL),
(12, 'Tập trận Hổ mang Vàng 2011', 'Tap-Tran-Ho-Mang-Vang-2011', 'Cuộc tập trận trên bộ lớn nhất thế giới năm nay nhằm đánh dấu 30 năm ra đời sự kiện, trong đó tập trung vào huấn luyện kỹ năng quân sự cơ bản, lên kế hoạch nhân sự và các dự án hỗ trợ nhân đạo.', 'Chúng tôi sẽ cập nhật sau', 'gold1.jpg', 1, 0, 6, NULL, NULL),
(13, 'Thưởng thơ xuân ở Berlin', 'Thuong-Tho-Xuan-O-Berlin', 'Lúc nhận được lời mời đi tham dự đêm Thơ Nguyên tiêu, do câu lạc bộ người yêu thơ Berlin tổ chức, tôi cứ mãi ngập ngừng. Thành thật mà nói, tình yêu thơ thì tôi có thật, nhưng hôm ấy lại là một đêm mùa đông khá lạnh.', 'Chúng tôi sẽ cập nhật sau', 'tho1.jpg', 1, 0, 7, NULL, NULL),
(14, 'Tôi đi đào vàng ở Australia', 'Toi-Di-Dao-Vang-O-Australia', 'Chúng tôi dựng lều ở khu cắm trại trong một công viên quốc gia cách nơi chúng tôi ở khoảng vài giờ lái xe. Hằng ngày hai đứa tôi mang máy dò vàng đi rà dọc theo những con suối cạn nước trong rừng.', 'Chúng tôi sẽ cập nhật sau', 'nn.jpg', 1, 0, 7, NULL, NULL),
(15, 'Internet châm ngòi lật đổ Mubarak như thế nào', 'Internet-Cham-Ngoi-Lat-Do-Mubarak-Nhu-The-Nao', 'Những người Ai Cập trẻ tuổi phát động cuộc biểu tình từ ngày 25/1 qua các trang mạng xã hội. Chính quyền lập tức ngăn chặn nhưng vô hiệu và sau 18 ngày người dân nổi dậy, Tổng thống Mubarak buộc phải \"nhổ neo\".', 'Chúng tôi sẽ cập nhật sau', 'Ghonim.jpg', 1, 0, 8, NULL, NULL),
(16, 'Tình hình Iran nguy cơ theo bước Ai Cập', 'Tinh-Hinh-Iran-Nguy-Co-Theo-Buoc-Ai-Cap', 'Sau Tunisia và Ai Cập, làn sóng biểu tình đang lan khắp Trung Đông, đặc biệt tại nước không thuộc thế giới Ảrập là Iran, vốn đang bị Mỹ can thiệp trực tiếp bằng cách công khai ủng hộ người biểu tình.', 'Chúng tôi sẽ cập nhật sau', 'Tehran.jpg', 1, 0, 8, NULL, NULL),
(17, 'Chung cư mini đầu tiên ở TP HCM rao bán', 'Chung-Cu-Mini-Dau-Tien-O-Tp-Hcm-Rao-Ban', 'Ngày 15/2, Công ty TNHH Tổ hợp Vina và Công ty Địa ốc Hoàng Anh Sài Gòn bắt đầu bán 19 căn hộ của tòa nhà Vinacomplex III gây xôn xao giới buôn địa ốc. Bởi lẽ, đây là loại hình chung cư mini đầu tiên tại TP HCM.', 'Chúng tôi sẽ cập nhật sau', 'a-tb-chung-cu-mini.jpg', 1, 0, 10, NULL, NULL),
(18, 'Đề xuất sở hữu chung cư có thời hạn gây nhiều tranh cãi', 'De-Xuat-So-Huu-Chung-Cu-Co-Thoi-Han-Gay-Nhieu-Tranh-Cai', 'Bộ Xây dựng cho rằng, sở hữu nhà chung cư có thời hạn sẽ thuận tiện cho việc nâng cấp, cải tạo đồng thời làm giảm giá chung cư. Tuy nhiên, nhiều ý kiến lo ngại, người dân có thể bị sốc và quay lưng lại với mô hình này.', 'Chúng tôi sẽ cập nhật sau', 'chung1.jpg', 1, 0, 10, NULL, NULL),
(19, 'Đảo chiều giữa phiên, Vn-Index giảm gần 5 điểm', 'Dao-Chieu-Giua-Phien,-Vn-Index-Giam-Gan-5-Diem', 'Giao dịch trên thị trường chứng khoán tiếp tục lình xình khi các cổ phiếu lớn không chứng tỏ vai trò dẫn dắt. Vn-Index và HNX-Index đồng loạt giảm khoảng 1%.', 'Chúng tôi sẽ cập nhật sau', 'chung-khoan-0.jpg', 1, 0, 9, NULL, NULL),
(20, 'Vn-Index mất điểm phiên thứ 3 liên tiếp', 'Vn-Index-Mat-Diem-Phien-Thu-3-Lien-Tiep', 'Xu hướng điều chỉnh của thị trường chứng khoán tiếp tục nối dài trong phiên giao dịch sáng nay khi các chỉ số đồng loạt giảm điểm. Tuy nhiên, lực cầu bắt đáy có dấu hiệu tăng cao, đặc biệt là trên sàn Hà Nội.', 'Chúng tôi sẽ cập nhật sau', 'chung-khoan-0 (1).jpg', 1, 0, 9, NULL, NULL),
(21, '835 giải thưởng hấp dẫn tại VietABank', '835-Giai-Thuong-Hap-Dan-Tai-Vietabank', 'Nhằm tri ân khách hàng nhân dịp xuân Tân Mão, VietABank đã triển khai “Lộc Xuân”. Chương trình huy động dự thưởng được thực hiện quay số mỗi ngày và cuối chương trình với 835 giải thưởng.', 'Chúng tôi sẽ cập nhật sau', 'New_Image5.JPG', 1, 0, 14, NULL, NULL),
(22, 'Ghế massage gập Inada Cube đến từ Nhật', 'Ghe-Massage-Gap-Inada-Cube-Den-Tu-Nhat', 'Được thiết kế chức năng kép vừa là chiếc ghế massage, vừa là đồ nội thất thông minh, Inada Cube với những động tác êm ái ngoài việc xua đau nhức còn có khả năng gập nhỏ khi không sử dụng, thuận tiện di chuyển.', 'Chúng tôi sẽ cập nhật sau', 'New_Image1_1.JPG', 1, 0, 14, NULL, NULL),
(23, 'Steve Jobs thời trẻ tái xuất', '', 'Một đoạn video về Steve Jobs thời 23 tuổi đang được cư dân mạng chuyền tay nhau, trong khi vị CEO trứ danh của hãng Apple vẫn đang nằm viện điều trị ung thư. ', 'Chúng tôi sẽ cập nhật sau', 'steve_jobs_23.jpg', 1, 0, 11, NULL, NULL),
(24, 'Tỷ phú Ấn mất 2,6 tỷ USD một ngày vì tin đồn', 'Ty-Phu-An-Mat-2,6-Ty-Usd-Mot-Ngay-Vi-Tin-Don', 'Hôm qua, chỉ trong một phiên giao dịch, tỷ phú Anil Ambani (Ấn Độ) mất 2,6 tỷ USD vì những tin đồn thất thiệt. ', 'Chúng tôi sẽ cập nhật sau', 'anil.jpg', 1, 0, 11, NULL, NULL),
(25, 'Giá USD tự do chạm 21.900 đồng, vàng vượt 36,5 triệu', 'Gia-Usd-Tu-Do-Cham-21.900-Dong,-Vang-Vuot-36,5-Trieu', 'Giá đôla Mỹ ngoài thị trường tự do sáng nay tăng phi mã lên 21.900 đồng. Trong khi vàng miếng cũng vọt tăng hơn 300.000 đồng lên mức cao nhất từ đầu năm đến nay.', 'Chúng tôi sẽ cập nhật sau', 'phieu_1.jpg', 1, 0, 13, NULL, NULL),
(26, 'Ưu đãi mừng năm mới với Smartphone Acer', 'Uu-Dai-Mung-Nam-Moi-Voi-Smartphone-Acer', 'Nhân dịp xuân Tân Mão, từ 17/1 đến 28/2, thương thiệu điện thoại thông minh Acer tổ chức chương trình khuyến mãi đặc biệt \"Acer đón chào năm mới, tặng quà tri ân\" với những món quà đặc biệt ý nghĩa.', 'Chúng tôi sẽ cập nhật sau', 'Acer1.jpg', 1, 0, 13, NULL, NULL),
(27, 'Mỹ thắt hầu bao nhưng vẫn mạnh tay xây đường sắt cao tốc', 'My-That-Hau-Bao-Nhung-Van-Manh-Tay-Xay-Duong-Sat-Cao-Toc', 'Kế hoạch ngân sách vừa được Tổng thống Barack Obama công bố cho thấy nước Mỹ sẽ giảm chi khoảng 2,4% cho năm 2011. Tuy nhiên, Chính phủ nước này vẫn dành một khoản tiền kếch xù để đầu tư cho giao thông.', 'Chúng tôi sẽ cập nhật sau', 'obama-0.jpg', 1, 0, 12, NULL, NULL),
(28, 'Lạm phát Trung Quốc tăng 4,9%', 'Lam-Phat-Trung-Quoc-Tang-4,9-', 'Số liệu của cơ quan thống kê Trung Quốc vừa đưa ra sáng nay cho thấy chỉ số giá tiêu dùng tháng 1 nước này tăng 4,9% so với cùng kỳ năm ngoái.', 'Chúng tôi sẽ cập nhật sau', 'China-inflatio.jpg', 1, 0, 12, NULL, NULL),
(29, 'Bà bầu liên tiếp phạm tội', 'Ba-Bau-Lien-Tiep-Pham-Toi', 'Thấy ví căng đầy của ông hàng xóm đặt trên bàn, người đàn bà nhanh tay lấy trộm mang về nhà. Đốt hết giấy tờ bên trong, cô đưa tập tiền cho chồng.', 'Chúng tôi sẽ cập nhật sau', 'Hai-Duong-250.jpg', 1, 0, 25, NULL, NULL),
(30, 'Cứu con trai, đôi vợ chồng bị chém chết', 'Cuu-Con-Trai,-Doi-Vo-Chong-Bi-Chem-Chet', 'Nhóm thanh niên xông vào nhà Cường \"đại náo\" khiến cậu và 5 người khác bị thương. Riêng cha mẹ Cường tử vong khi can ngăn đám côn đồ.', 'Chúng tôi sẽ cập nhật sau', 'giet-nguoi.jpg', 1, 0, 25, NULL, NULL),
(31, 'Những khoảnh khắc thể thao ấn tượng tuần qua', 'Nhung-Khoanh-Khac-The-Thao-An-Tuong-Tuan-Qua', 'Một CĐV chỉ mặc quần lót, nhảy vào sân gây rối trong trận giao hữu Bosnia Herzegovina - Mexico. Thể thao tuần qua còn chứng kiến thời khắc hạnh phúc của U20 Brazil, góc hình đẹp ở World Cup trượt tuyết...', 'Chúng tôi sẽ cập nhật sau', 'sport7.jpg', 1, 0, 24, NULL, NULL),
(32, 'Biếm họa về sự kiện Dalglish trở lại dẫn dắt Liverpool', 'Biem-Hoa-Ve-Su-Kien-Dalglish-Tro-Lai-Dan-Dat-Liverpool', 'Kenny Dalglish có thể là \"vua\" trong lòng nhiều thế hệ người hâm mộ Liverpool, nhưng sự xuất hiện của ông chưa thể giúp đội bóng thành phố cảng nước Anh hồi sinh ngay lập tức.', 'Chúng tôi sẽ cập nhật sau', 'liverpool10.jpg', 1, 0, 24, NULL, NULL),
(33, 'Hà Nội qua ống kính của nhà nhiếp ảnh Canada', 'Ha-Noi-Qua-Ong-Kinh-Cua-Nha-Nhiep-Anh-Canada', 'Đại sứ quán Canada vừa phát hành sách ảnh Tiếng gọi Hà Nội 1000 năm của nhà nhiếp ảnh Greg Girard, với những hình ảnh đời sống hàng ngày của thủ đô, làm quà tặng Hà Nội tròn 1000 năm tuổi.', 'Chúng tôi sẽ cập nhật sau', 'Hanoi_1000_1.jpg', 1, 0, 20, NULL, NULL),
(34, 'Ra sách Mỹ thuật Việt Nam thế kỷ 20', '', 'Cuốn sách của Nguyễn Quân là sự kết hợp giữa mỹ thuật và lịch sử, lý luận và phê bình về một thế kỷ biến động, nhiều màu sắc. Trong sách, tác giả thể hiện ba khía cạnh: họa sĩ, nhà nghiên cứu sử, nhà phê bình mỹ thuật.', 'Chúng tôi sẽ cập nhật sau', 'My_thuat_VN_the_ky_20.jpg', 1, 0, 20, NULL, NULL),
(35, 'Ông chủ Chelsea tụt hạng trong nhóm tỷ phú Nga', 'Ong-Chu-Chelsea-Tut-Hang-Trong-Nhom-Ty-Phu-Nga', 'Roman Abramovich, ông chủ của đội bóng Anh Chelsea, đã không còn là một trong ba người giàu nhất nước Nga. Những người hưởng lợi từ việc phục hồi giá dầu thô và kim loại đã chiếm vị trí của ông.', 'Chúng tôi sẽ cập nhật sau', 'abramovich.jpg', 1, 0, 21, NULL, NULL),
(36, 'Cựu siêu mẫu Playboy làm chủ tịch đội bóng', 'Cuu-Sieu-Mau-Playboy-Lam-Chu-Tich-Doi-Bong', 'CLB đang vật lộn để trụ hạng nhì Ba Lan Warta Poznan hy vọng tân nữ chủ tịch từng làm người mẫu ngực trần sẽ giúp họ thoát khỏi khó khăn.', 'Chúng tôi sẽ cập nhật sau', 'CKM.jpg', 1, 0, 21, NULL, NULL),
(37, 'Nhiều sao đến chung vui ngày cưới của thủ môn Tấn Trường', 'Nhieu-Sao-Den-Chung-Vui-Ngay-Cuoi-Cua-Thu-Mon-Tan-Truong', 'Ngôi sao thủ môn ĐTQG và cô dâu Ngọc Liên tổ chức tiệc cưới tại Cao Lãnh, Đồng Tháp ngày 13/2 với sự góp mặt của nhiều ngôi sao thể thao và giải trí như tiền đạo Thanh Bình, Long Giang, Samson, danh hài Hoàng Sơn…', 'Chúng tôi sẽ cập nhật sau', '1_9.jpg', 1, 0, 23, NULL, NULL),
(38, 'Renault gấp rút tìm người thay Kubica', 'Renault-Gap-Rut-Tim-Nguoi-Thay-Kubica', 'Hiện có ba ứng viên được đội đua Pháp xem xét mời về thay thế tay đua người Ba Lan mới gặp tai nạn, để tranh tài ở mùa giải F1 sắp khởi tranh.', 'Chúng tôi sẽ cập nhật sau', 'Senna.jpg', 1, 0, 23, NULL, NULL),
(39, 'Soderling bảo vệ được danh hiệu Rotterdam mở rộng', 'Soderling-Bao-Ve-Duoc-Danh-Hieu-Rotterdam-Mo-Rong', 'Trong trận chung kết hôm qua, tay vợt người Thụy Điển thắng hạt giống số tám Jo-Wilfried Tsonga với tỷ số 6-3, 3-6, 6-3.', 'Chúng tôi sẽ cập nhật sau', 'soderling.jpg', 1, 0, 22, NULL, NULL),
(40, 'Clijsters thất bại ở chung kết Paris Mở rộng', 'Clijsters-That-Bai-O-Chung-Ket-Paris-Mo-Rong', 'Tay vợt nữ số một thế giới bất ngờ chịu thua Petra Kvitova - đối thủ cô từng toàn thắng trong hai lần gặp trước.', 'Chúng tôi sẽ cập nhật sau', 'clijsters.jpg', 1, 0, 22, NULL, NULL),
(41, 'Nguyễn Ánh 9 khóc khi đệm đàn cho Ý Lan', 'Nguyen-Anh-9-Khoc-Khi-Dem-Dan-Cho-Y-Lan', 'Nhạc sĩ Cô đơn xúc động khi nghe con gái nữ danh ca Thái Thanh hát bài nhạc tình Người đi qua đời tôi tối 16/2. 40 năm trước, hằng đêm ông vẫn đệm đàn cho Thái Thanh hát ở phòng trà.', 'Chúng tôi sẽ cập nhật sau', 'y-lan-8.jpg', 1, 0, 17, NULL, NULL),
(42, 'Justin Bieber phục thù tại giải Grammy của Anh', '', 'Sau thất bại tại Grammy hôm 13/2, hoàng tử Pop 17 tuổi đã lấy lại được ánh hào quang tại Brit Awards, giải thưởng âm nhạc lớn nhất của Anh, với danh hiệu Nghệ sĩ quốc tế đột phá.', 'Chúng tôi sẽ cập nhật sau', 'wenn3210126.jpg', 1, 0, 17, NULL, NULL),
(43, 'Hoa hậu Diễm Hương chưa dám gật đầu với tình yêu', 'Hoa-Hau-Diem-Huong-Chua-Dam-Gat-Dau-Voi-Tinh-Yeu', 'Dù nhận được lời tỏ tình, HHTG Người Việt 2010 cho biết, cô chưa dám nói lời yêu vì còn bận nhiều kế hoạch trong tương lai, và cũng vì thấy không nên vội vã trong chuyện lương duyên.', 'Chúng tôi sẽ cập nhật sau', 'hoa-hau-diem-huong-1[2].jpg', 1, 0, 15, NULL, NULL),
(44, 'Giai nhân cầu an đầu năm', 'Giai-Nhan-Cau-An-Dau-Nam', 'Hồ Đức Vĩnh sánh đôi cùng Thùy Dung thăm Đại Chủng Viện Sài Gòn với tâm nguyện mong một năm thật may mắn và suôn sẻ. Ánh mắt chàng siêu mẫu dành cho Hoa hậu Việt Nam 2008 đầy sự trìu mến, tha thiết.', 'Chúng tôi sẽ cập nhật sau', 'HUY_5103.jpg', 1, 0, 15, NULL, NULL),
(45, 'Người đẹp xứ Hàn rực rỡ sắc hồng', 'Nguoi-Dep-Xu-Han-Ruc-Ro-Sac-Hong', 'Hơn 20 gương mặt ‘sao’ nữ xinh đẹp của đất nước kim chi vừa cùng nhau chụp bộ ảnh thời trang ấn tượng để gây quỹ cho chương trình từ thiện Pink Wings của tạp chí Vogue Girl.', 'Chúng tôi sẽ cập nhật sau', '1 (1)_9.jpg', 1, 0, 16, NULL, NULL),
(46, 'Lê Khánh hối hận vì ngăn cản tình yêu của mẹ', 'Le-Khanh-Hoi-Han-Vi-Ngan-Can-Tinh-Yeu-Cua-Me', 'Nàng Quyên cá tính trong Cô dâu đại chiến chia sẻ, mỗi khi nhớ lại thời tuổi trẻ nổi loạn, luôn tìm cách ngăn cản những người bạn trai muốn đến với mẹ khi ba đã mất, lòng cô lại dấy lên sự hối hận.', 'Chúng tôi sẽ cập nhật sau', 'le-khanh-co-dau-dai-chien.jpg', 1, 0, 16, NULL, NULL),
(47, 'Lee Hyori làm cô nàng leo núi gợi cảm', 'Lee-Hyori-Lam-Co-Nang-Leo-Nui-Goi-Cam', 'Diện trang phục thể thao tràn đầy sức sống, người đẹp rạng rỡ giữa nắng vàng, cỏ xanh và khoe tài leo túi điêu luyện trong bộ ảnh thời trang mới thực hiện ở New Zealand.', 'Chúng tôi sẽ cập nhật sau', 'rihanna1.jpg', 1, 0, 18, NULL, NULL),
(48, 'Giày DMK khai trương cửa hàng chính hãng tại Việt Nam', 'Giay-Dmk-Khai-Truong-Cua-Hang-Chinh-Hang-Tai-Viet-Nam', 'Nhãn hàng giày dép thời trang nữ DMK của Singapore sẽ khai trương cửa hàng chính hãng đầu tiên tại Việt Nam tại số 392 Hai Bà Trưng, phường Dakao, quận 1, TP HCM.', 'Chúng tôi sẽ cập nhật sau', '01_3.jpg', 1, 0, 18, NULL, NULL),
(49, 'Các phim tranh giải Oscar sắp tới Việt Nam', 'Cac-Phim-Tranh-Giai-Oscar-Sap-Toi-Viet-Nam', 'Từ ngày 18/2 tới tháng tư, True Grit, Winters Bone, 127 Hours và Black Swan - 4 trong số 10 tác phẩm được đề cử \"Phim hay nhất\" của Oscar năm nay - sẽ được chiếu tại các rạp ở VN. ', 'Chúng tôi sẽ cập nhật sau', 'e.jpg', 1, 0, 19, NULL, NULL),
(50, 'Secret Garden - chuyện tình cổ tích vẫn còn hấp dẫn', '', 'Cốt truyện huyền ảo mà vẫn chân thực, kết thúc đậm chất cổ tích, mới mẻ và hài hước để không gây nhàm, những yếu tố đó giúp bộ phim Hàn Quốc thành công đến mức dù đã kết thúc hơn một tháng nhưng vẫn đầy sức hút.', 'Chúng tôi sẽ cập nhật sau', 'secret_garden_(4).jpg', 1, 0, 19, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintuc_idloaitin_foreign` (`idLoaiTin`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_idloaitin_foreign` FOREIGN KEY (`idLoaiTin`) REFERENCES `loaitin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
