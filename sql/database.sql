-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2022 lúc 04:51 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `final`
--
CREATE DATABASE IF NOT EXISTS `final` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `final`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookmark`
--

CREATE TABLE `bookmark` (
  `id` int(11) NOT NULL,
  `ten_cong_viec` varchar(50) NOT NULL,
  `ten_cong_ty` varchar(50) NOT NULL,
  `tt_cong_viec` varchar(100) NOT NULL,
  `yc_cong_viec` varchar(100) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `ngaydang` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bookmark`
--

INSERT INTO `bookmark` (`id`, `ten_cong_viec`, `ten_cong_ty`, `tt_cong_viec`, `yc_cong_viec`, `salary`, `ngaydang`, `username`) VALUES
(4, 'Fullstack Developer', 'KOFAX', 'Work with international customers and colleagues from Germany, France, the Czech Republic, and the U', 'Good verbal and written communication in English is required. 2  years of professional experience in', 'Negotiable', '2022/12/8', '5@gmail.com'),
(5, 'Java Software Engineer', 'NTT DATA Vietnam', 'Analyze and challenge product specifications. Actively participate in committees. Manage software de', 'At least 3 year of experience in a similar role. Good Full-stack mastery of Java and Angular. Indust', '15.000.000 VNĐ', '2022/12/3', '5@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `company`
--

CREATE TABLE `company` (
  `ID_comp` int(11) NOT NULL,
  `name_comp` text COLLATE utf8_unicode_ci NOT NULL,
  `img_comp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address_comp` text COLLATE utf8_unicode_ci NOT NULL,
  `info_comp` text COLLATE utf8_unicode_ci NOT NULL,
  `website_comp` text COLLATE utf8_unicode_ci NOT NULL,
  `email_comp` text COLLATE utf8_unicode_ci NOT NULL,
  `pass_comp` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `company`
--

INSERT INTO `company` (`ID_comp`, `name_comp`, `img_comp`, `address_comp`, `info_comp`, `website_comp`, `email_comp`, `pass_comp`) VALUES
(1, 'Công ty TNHH NEC Việt Nam', 'images/company/h6.jpg', 'Lầu 9, Etown 3, 364 Cộng Hòa, Phường 13, Quận Tân Bình, Thành phố Hồ Chí Minh', 'Công ty TNHH NEC Việt Nam (NEC Việt Nam) là công ty con của NEC Corporation -Tập đoàn đa quốc gia về công nghệ viễn thông, công nghệ thông tin và tích hợp hệ thống hàng đầu của Nhật Bản với bề dày lịch sử hơn 122 năm hoạt động.Cùng với sự phát triển lâu đời, những thế mạnh cốt lõi của một tập đoàn công nghệ hàng đầu thế giới, và cam kết nỗ lực hết sức đóng góp vào phát triển doanh nghiệp cũng cho cho con người và xã hội Việt Nam, chúng tôi tin rằng chúng tôi sẽ tiếp tục tạo ra giá trị hơn nữa cho cộng đồng và mang lại hạnh phúc cho tất cả nhân viên.', 'https://www.nec.com/', 'comp_necvietnam@gmail.com', '123456'),
(2, 'Treehouse Finance', 'images/company/h5.jpg', '90 Nguyễn Hữu Cảnh, Phường 22, Quận Bình Thạnh, Thành phố Hồ Chí Minh', 'We are transparent. We move fast. We disrupt.Treehouse Finance provides digital asset users with analytics and risk metrics of their positions. We are building a user-friendly platform to help users successfully manage their portfolio in the ever-changing world of decentralized finance. As a tech company, our company culture always delivers high-quality products with the greatest talent who are eager to succeed, with a vibrant work environment, and prioritize work-life balance.', 'https://www.treehouse.finance/', 'comp_treehousefinance@gmail.com', '123456'),
(3, 'NTT DATA Vietnam', 'images/company/h2.png', 'R202, HITC Building, 239 Xuân Thủy, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Thành phố Hà Nội', 'NTT DATA is a world-wide group born in Japan. We are the top 6 global business and IT services provider with more than 139,000 professionals in over 50 countries.Therefore, when you work at NTT DATA Vietnam, there are the following possibilities.Develop and operate systems not only for customers in Vietnam but also for customers in other countries such as Japan, Thailand, Singapore, and European countries. In that case, your work partner may be people of those other countries.', 'https://www.nttdata.com/vn/en/', 'comp_nttdatavietnam@gmail.com', '123456'),
(4, 'Positive Thinking Company', 'images/company/h4.jpg', 'E-town 3, 364 Cộng Hòa, Phường 13, Quận Tân Bình, Thành phố Hồ Chí Minh', 'Positive Thinking Company is a global independent tech consultancy group. We are Great Place to Work-Certified™ with 90% of our team members in Vietnam agreeing that we are a great place to work! With a team of more than 3,000 talented tech specialists on the ground in over 35 cities across Europe, the USA, Asia, Australia, and Africa, we serve clients of all sizes. We believe that collaboration betters our world.', 'https://positivethinking.tech/﻿', 'comp_positivetthinking@gmail.com', '123456'),
(5, 'M2 Vietnam', 'images/company/h3.png', 'Tầng 2, Số 2 Đường Nguyễn Huy Lượng, Phường 14, Quận Bình Thạnh, Thành phố Hồ Chí Minh', 'Master your 2morrow with M2 And we have an excellent team of Vietnamese engineers. Amid calls for exhaustion of domestic resources, we have established a scaleable development system in Vietnam, which has abundant IT human resources. Japanese employees are stationed locally, and we strive to improve the site every day and strive to provide even higher value.', 'https://m2vietnam.com.vn/', 'comp_m2vietnam@gmail.com', '123456'),
(6, 'KOFAX', 'images/company/h7.jpg', '11 Fl., A tower, Handi Resco Bld., 521 Kim Mã str., Phường Ngọc Khánh, Quận Ba Đình, Thành phố Hà Nội', 'Work Like Tomorrow Kofax is a leading provider of software to simplify and transform the First Mile™ of business. Success in the First Mile can dramatically improve the customer experience, greatly reduce operating costs and increase competitiveness, growth and profitability. Kofax software and solutions provide a rapid return on investment to more than 20,000 customers in financial services, insurance, government, healthcare, supply chain, business process outsourcing and other markets.', 'https://www.kofax.com/﻿', 'comp_kofax@gmail.com', '123456'),
(7, 'Clear Path', 'images/company/h8.jpg', '65 Doãn Kế Thiện, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Công ty TNHH Phát Triển Phần Mềm Con Đường Sáng Đà Nẵng (Clearpath) trải qua hơn mười năm thành lập, là doanh nghiệp chuyên sản xuất gia công phần mềm, nhập liệu. Với đội ngũ nhân viên năng động, sáng tạo, chuyên môn cao, công ty đã mang đến những sản phẩm chất lượng, tiến độ đảm bảo đáp ứng yêu cầu của khách hàng trong và ngoài nước. Thế mạnh tạo nên thượng hiệu của công ty đó là năng lực chuyên môn cao, tinh thần trách nhiệm, sự nghiêm túc, cẩn thận trong quá trình phát triển sản phẩm và thực hiện công việc khách hàng giao.', 'https://www.clearpathdevelopment.com﻿', 'comp_clearpath@gmail.com', '123456'),
(8, 'NGÂN HÀNG Á CHÂU (ACB)', 'images/company/h1.jpg', '442 Nguyễn Thị Minh Khai, Phường 05, Quận 3, Thành phố Hồ Chí Minh', 'Khởi đầu con đường thành công mang dấu ấn của riêng bạn.Chúng tôi đang bắt đầu một sự khởi động tại ACB để phục vụ hàng triệu khách hàng của chúng ta. Chúng tôi đang tìm kiếm các tài năng đặc biệt để thúc đẩy tăng trưởng. Việc định hình đội ngũ quản lý  sẽ cung cấp các dịch vụ công nghệ hàng đầu thế giới để thu hút được hàng triệu khách hàng tiếp theo.', 'https://www.clearpathdevelopment.com', 'comp_acbbank@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cv_user`
--

CREATE TABLE `cv_user` (
  `cv_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `vi_tri_ung_tuyen` varchar(50) NOT NULL,
  `gioi_tinh` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dien_thoai` varchar(50) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `dia_chi` varchar(50) NOT NULL,
  `gioi_thieu_ban_than` varchar(100) NOT NULL,
  `kinh_nghiem` varchar(100) NOT NULL,
  `ky_nang_khac` varchar(100) NOT NULL,
  `trang_thai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cv_user`
--

INSERT INTO `cv_user` (`cv_id`, `user_id`, `full_name`, `vi_tri_ung_tuyen`, `gioi_tinh`, `email`, `dien_thoai`, `ngay_sinh`, `dia_chi`, `gioi_thieu_ban_than`, `kinh_nghiem`, `ky_nang_khac`, `trang_thai`) VALUES
(1,1,'Nguyễn Minh Tiến','Senior QA Engineer','Nam','user1@gmail.com','0334567123','2002-12-01','Lê Văn Quới, Quận Bình Tân, TP HCM', 'Có nền tảng kỹ thuật và hiểu biết về kiểm thử phần mềm. Kỹ năng giao tiếp bằng lời nói và văn bản tốt','Có 1 năm kinh nghiệm làm việc liên quan trong vai trò phát triển hoặc thử nghiệm','Có thể làm việc dưới áp lực','Chưa ứng tuyển'),
(2,2,'Công Huy','Java Software Engineer','Nam','user2@gmail.com','0334321566','2002-3-01','Thới An, Quận 7, TP HCM',' Đã tham gia vào hoạt động phát triển phần mềm. Có nghiên cứu, đề xuất các giải pháp kỹ thuật giúp nâng cao chất lượng sản phẩm','Đã có 2 năm kinh nghiệm về Java, Spring boot, Microservices, MongoDB. Thành thạo viết mã có cấu trúc, tài liệu tốt, có thể bảo trì và mã sạch','Không có','Chưa ứng tuyển'),
(3,3,'Bùi Thị Loan Anh','Senior Database','Nữ','user3@gmail.com','0336788765','1998-3-15','Lý Thái Tổ, Quận 5, TP HCM','Có nhiều kinh nghiệm về Đám mây công cộng, chẳng hạn như AWS, Azure hoặc Google Cloud Platform','Hơn 4 năm kinh nghiệm về cơ sở dữ liệu (MySQL, NoSQL Redis/ MongoDB, PostgreSQL), ngoài các yêu cầu về giáo dục','Không có','Chưa ứng tuyển'),
(4,4,'Văn Chung Thủy','Fullstack Developer','Nữ','user4@gmail.com','0330987654','2000-7-4','3 tháng 2, Quận 10, TP HCM', 'Hiểu biết về các công cụ, quy trình và kiến ​​trúc phát triển phần mềm.Hiểu biết sâu về HTML/CSS/ReactJS.','Có 3 năm kinh nghiệm chuyên môn trong việc triển khai các ứng dụng phức tạp.','Không có','Chưa ứng tuyển'),
(5,5,'Lê Văn Đạt','Back-end Developer','Nam','user5@gmail.com','0334567437','1997-6-8','Gò Xoài, Quận Bình Tân, TP HCM',' Kỹ năng frontend: HTML5, CSS3, JavaScript, jQuery, VueJS, ReactJS, v.v. Sử dụng và phát triển RESTful API','Đã có năm kinh nghiệm về PHP, MySQL, MongoDB','Không có','Chưa ứng tuyển'),
(6,6,'Trương Tuyết Nhi','Lead Java Engineer','Nữ','user6@gmail.com','0338766789','2001-1-18','Nguyễn Sơn, Quận Bình Tân, TP HCM','Kinh nghiệm thực tế đã được chứng minh về hệ sinh thái Java, Spring boot, Microservices.Có kinh nghiệm với một trong các cơ sở dữ liệu NoSQL: MongoDB/ Cassandra/ graph DB (Neo4j)','Có 2 năm kinh nghiệm và đã tốt nghiệp Đại học chuyên ngành CNTT, Khoa học máy tính.','Không có','Chưa ứng tuyển'),
(7,7,'Nguyễn Hiền','Lead Java Engineer','Nam','user7@gmail.com','0339874563','2000-11-07','Nguyễn Thị Thập, Quận 7, TP HCM','Có khả năng lãnh đạo thực hành để thiết kế, phát triển và triển khai các giải pháp kỹ thuật.Thiết kế, phát triển, xem xét, triển khai và quản lý trên sản phẩm ứng dụng dựa trên web bằng các công nghệ liên quan đến JAVA','Đã có 2 năm kinh nghiệm về Java, Spring boot, Microservices, MongoDB. Thành thạo viết mã có cấu trúc, tài liệu tốt, có thể bảo trì và mã sạch','Không có','Chưa ứng tuyển'),
(8,8,'Trần Tuyết My','Test Automation Engineer','Nữ','user8@gmail.com','0339812345','1999-10-09','Lê Văn Quới, Quận Bình Tân, TP HCM','Có thể tương tác tốt với các thành viên trong nhóm và các nhóm khác để đảm bảo tất cả các yêu cầu đã được kiểm tra, các lỗi đã được ghi lại và các vấn đề về chất lượng được xác định trong quá trình kiểm tra đã được giải quyết.','Có 2 năm kinh nghiệm, hiểu biết rõ về các công cụ kiểm thử phần mềm khác như TestNG, RestAssured, Jmeter, Granafa, InfluxDB, SureFire, PyTest, Jacoco, SonarCloud, v.v.','Không có','Chưa ứng tuyển'),
(9,9,'Võ Minh Chiến','Mobile Engineer','Nam','user9@gmail.com','0339812987','1995-8-29','Thanh Sơn, Quận Hải Châu,TP Đà Nẵng','Kinh nghiệm Code review, kinh nghiệm phát triển dịch vụ web, có trình độ tiếng Nhật cao','Có hơn 2 năm kinh nghiệm phát triển ứng dụng điện thoại bằng Kotlin','Không có','Chưa ứng tuyển'),
(10,10,'Hoàng Tuấn Vũ','Business Analyst','Nam','user8@gmail.com','0339812111','1998-1-15','Khuê Mỹ, Quận Ngũ Hành Sơn,TP Đà Nẵng','Kinh nghiệm thực tế đã được chứng minh về hệ sinh thái Java, Spring boot, Microservices.Có kinh nghiệm với một trong các cơ sở dữ liệu NoSQL: MongoDB/ Cassandra/ graph DB (Neo4j)','Có 2 năm kinh nghiệm và đã tốt nghiệp Đại học chuyên ngành CNTT, Khoa học máy tính.','Không có','Chưa ứng tuyển');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job`
--

CREATE TABLE `job` (
  `ID_job` int(11) NOT NULL,
  `name_job` text COLLATE utf8_unicode_ci NOT NULL,
  `ID_comp` int(11) NOT NULL,
  `name_comp` text COLLATE utf8_unicode_ci NOT NULL,
  `info_job` text COLLATE utf8_unicode_ci NOT NULL,
  `require_job` text COLLATE utf8_unicode_ci NOT NULL,
  `salary` text COLLATE utf8_unicode_ci NOT NULL,
  `date_posted` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `job`
--

INSERT INTO `job` (`ID_job`, `name_job`, `name_comp`, `info_job`, `require_job`, `salary`, `date_posted`) VALUES
(1, 'Senior QA Engineer', 'Treehouse Finance','Collaborate with cross-functional team members within and across business units to leverage internal product knowledge and expertise for optimum efficiency Interact with product management, project management and development teams to develop a strong understanding of the project and testing objectives. Design and create test cases and scripts to address business and technical use cases.', 'Have relevant 3-6 years working experience in development and/ or testing role. Excellent verbal and written communication skills. Technical background and an understanding of software testing. Good development/ scripting skills in common languages like Python, Shell script, etc', '2.000 USD', '2022/12/1'),
(2, 'Java Software Engineer', 'NTT DATA Vietnam','Analyze and challenge product specifications. Actively participate in committees. Manage software development. Urgently address defects highlighted by the Certification team. Ensure the continuous update of the JIRA activity repository', 'At least 3 year of experience in a similar role. Good Full-stack mastery of Java and Angular. Industry knowledge of the development process (Code Review, Merge Request, Release Maven, …)', '15.000.000 VNĐ', '2022/12/3'),
(3, 'Senior Database', 'Công ty TNHH NEC Việt Nam','Responsible for database creation, maintenance and administration functions for all database environments including database tuning, upgrading, patching.... Manage users & user rights on the database system. Support for daily operation of Production and other departments in data mining and data manipulation', '4+ years of database experience (MySQL, NoSQL Redis/ MongoDB, PostgreSQL), in addition to educational requirements', '3.000 USD', '2022/12/7'),
(4, 'Fullstack Developer', 'KOFAX','Work with international customers and colleagues from Germany, France, the Czech Republic, and the US. Independent conception and implementation of new functions in complex application landscapes', 'Good verbal and written communication in English is required. 2+ years of professional experience in international software projects (flexible depending on how fast your learning and technical developing capabilities are)', 'Negotiable', '2022/12/8'),
(5, 'ServiceNow Developer', 'Clear Path','Working for customers from the US. Develops ServiceNow software solutions using JavaScript, Jelly, Web Services, MYSQL, XML, HTML and CSS. Configuration Management (CMDB)', 'Must have a bachelors Degree in a software development-related field. 3+ Years of ServiceNow Software Development, Administrative Experience', 'Negotiable', '2022/12/10'),
(6, 'Back-end Developer', 'NGÂN HÀNG Á CHÂU (ACB)','Thiết kế và phát triển các back-ends APIs cho hệ thống ứng dụng có khả năng xử lý hàng triệu giao dịch mỗi ngày. Tận dụng các thư viện mã nguồn mở hoặc thương mại có sẵn (có license) để giảm thiểu thời gian phát triển ứng dụng;', 'Tốt nghiệp đại học các ngành liên quan đến Công nghệ thông tin;Có tối thiểu 03 năm kinh nghiệm tham gia phát triển ứng dụng phần mềm;Có nhiều kinh nghiệm phát triển RESTFul API (level 2) sử dụng ngôn ngữ Java; Có kiến thức về Micro-Service, SOA,…', 'Thương lượng', '2022/12/12'),
(7, 'Lead Java Engineer', 'Positive Thinking Company','Provide hands-on leadership to the design, development, and deployment of technical solutions. Design, develop, review, implement, and manage on the web-based application product in JAVA-related technologies', 'Proven hands-on experience on Java ecosystem, Spring boot, Microservices Experience with one of NoSQL databases: MongoDB/ Cassandra/ graph DB (Neo4j). Well-versed in writing structured, well-documented, maintainable, and clean code. Cloud-based technologies: AWS, OpenShift, Docker is a BIG plus', '2.000 USD', '2022/12/15'),
(8, 'Middle Frontend Developer', 'M2 Vietnam','Develop reliable, scalable and maintainable web applications. Design application functions and views based on provided definitions. Building reusable code and libraries for future use. Maintain software to ensure optimization and functionality.', 'More than 3 years of experience in WEB application Frontend development. More than 3 years of experience with JavaScript frontend framework listed :React,Vue.js,Angular. Have knowledge to appropriately use HTML5 and CSS. Have experience with editing style with SCSS or SASS.', '35.000.000 VNĐ', '2022/12/15'),
(9,'macOS Engineer (iOS/Objective-C)','M2 Vietnam','Develop application in Mac devices related to communication and controlling computer monitor.Collaborate with other team members and team leader to figure out requirement.','Background in Computer Science / Software Engineer / IT / Electronics or related fields.Good at logical thinking, problem-solving, collaboration, and communication skills.Industriousness, result-oriented, high energy, self-motivated, and creative individual.Being able to use English for working.','Thương lượng', '2022/12/17'),
(10,'Android Developer','NTT DATA Vietnam','Android app maintenance operation and project participation. Outsourcing project deliverables management and collaboration.','Android development for more than 5 years. Basic understanding of Android Platform. Those who have experience from application design to PlayStore deployment (those with sufficient standalone capabilities).','3.000 USD','2022/12/5'),
(11,'Mobile Engineer','Treehouse Finance','Phát triển/ Thử nghiệm (iOS hoặc Android). Vận hành hệ thống (iOS hoặc Android).Vận hành hệ thống','Tiếng Nhật trình độ business. Có hơn 2 năm kinh nghiệm phát triển ứng dụng điện thoại bằng Kotlin hoặc Swift. Kinh nghiệm triển khai Unit/ UI test. Kinh nghiệm Code review. Kinh nghiệm phát triển, vận hành và phát hành ứng dụng iOS/ Android. Có mong muốn nâng cao trình độ tiếng Nhật sau khi vào công ty','2.000 USD to 5.000 USD','2022/12/5'),
(12,'Java Back-End Team Lead','Công ty TNHH NEC Việt Nam','Become an essential part of a cross-functional team of accomplished engineers and architects. Help lead the continued development of our front-end. Participate in architecture discussions with engineers from every team author, review, and approve technical designs','More than 5 years of development experience and high understanding of one development language among Java/golang/C# (.net). Broad technical understanding of development processes and web technologies in general','Thương lượng','2022/12/10'),
(13,'Kỹ sư quản trị hệ thống','Positive Thinking Company','Triển khai, cài đặt hệ thống mạng nội bộ, mạng internet, mạng VPN, wifi, camera. Vận hành và quản lý hệ thống server của công ty. Nắm vững kiến thức CCNA, MCSA, hạ tầng network và vận hành hệ thống','Có trên 5 năm kinh nghiệm quản trị hệ thống, quản trị mạng. Tốt nghiệp Đại học chuyên ngành CNTT, quản trị mạng. Có kinh nghiệm quản trị Hệ điều hành (Windows hoặc Linux)','Thương lượng','2022/12/18'),
(14,'Head of Development','M2 Vietnam',,'Manage, and lead the development and operation of entire team. Lead, plan, organize, and coordinate all task to be completed within timeframe. Provide project status and update management accurately in a timely manner','Leadership experience over 100 employees. Experience working with relevant development platforms, front-end, back-end, client. Deep knowledge and understanding of relevant programming languages','3.000 USD','2022/12/3'),
(15,'Client Team Lead','KOFAX','Support game publishing platform to bring various games to gamer’s desktop and mobile.Create client application, SDK, reusable tools and code examples for external game studios who are looking to build games through Stove Platform. Improve gamer’s experience and interconnection by integrating with Stove platform services','Experience working with backends. Experience in general network-based client/server development. Experience integrating multiple software solutions into a cohesive offering.','2.500 USD','2022/12/2'),
(16,'IT Comtor','Clear Path','Sranslating all technical and technological documents related to the project for engineers when sent by foreign partners, then proposing the options, approach steps, as well as implementation time in accordance with the agreement','3+ years of relevant work experience in communications with Korean language and knowledge/significant interest in It development, technology','Thương lượng','2022/12/3'),
(17,'LEAD DESIGN (UI/UX)','NGÂN HÀNG Á CHÂU (ACB)','Là người định hướng, lên ý tưởng, thiết kế UI/UX cho các ứng dụng hàng triệu người dùng. Thiết kế layout, UI/UX cho cho mobile app. Xây dựng wireframe, flowcharts prototype cho mobile app','Có từ 1.5 năm kinh nghiệm thiết kế UI/UX. Thành thạo phần mềm Figma hoặc Adobe Xd, Sketch. Kỹ năng research tốt, Hiểu biết về design process.','20.000.000 USD','2022/12/4'),
(18,'Business Analyst','Công ty TNHH NEC Việt Nam','Gather business and system requirements from clients. Assist clients to define requirements and suggest ideas. Create Business Requirement, UC list and UC detail, User Stories and wire frame for complex UCs (if needed).','Bachelor degree preferably in Computer Science or Business Information System. Obtaining IT knowledge-base. Fluent English to be able to communicate directly with customers. Basic experience in programming languages.','2.000 USD','2022/12/1'),
(19,'ASP.NET Developer','Treehouse Finance','Participate in analyzing, designing, and improving the functions of the company products and services. Participate in operating and maintaining the system.','ASP.NET language. SOLID principle, design pattern. Use RESTful.','1.500 USD','2022/12/3'),
(20,'Test Automation Engineer','KOFAX','Plan, develop, and execute test automation scripts for functional testing with scripting languages/frameworks such as Selenium, Robot, etc.','Proficient in developing test automation scripts for functional testing with Selenium framework. Familiar with Agile and waterfall environments for fast-paced software development and testing release cycle','2.000 USD','2022/12/3'),
(21,'Project Manager','Clear Path','Product Management of Enterprise display devices with a sense of product ownership. From feature definition to product deployment tracking and follow up. Product Life Cycle Management and planning / estimation of full product development.','Bachelor’s degree in Computer Science, S/W Engineering or IT related field. At least 3 years of experience in software development. We are also welcome JUNIOR Project Management Level.','2.000 USD','2022/12/4'),
(22,'Product Designer','NGÂN HÀNG Á CHÂU (ACB)','Tech Stack: Interaction Design. Sketch. Web Design. Zeplin','3+ years of mobile product design experience. Understanding platform-specific design, UI patterns, and trends. Requirement definition, screen flow, usage scenario, UI detail description can be created','2.000 USD','2022/12/3'),
(23,'DevOps Engineer','Positive Thinking Company','Understanding services that mobile applications provide to customers. Managing k8s container based cloud infrastructure including AWS and cloud services in Vietnam','At least 3 years of experience as a DevOps.Experiencing working at a Fintech company.Ability to identify and troubleshoot bugs/errors as soon as they arise','2.500 USD','2022/12/5'),
(24,'REACT NATIVE DEVELOPER','M2 Vietnam','Lập trình & phát triển các ứng dụng trên nền tảng Mobile sử dụng công nghệ React Native (RN) thông qua các UI components như NativeBase, RN Elements, RN Paper...Tham gia vào các công việc chung của bộ phận phát triển ứng dụng và công ty','Có từ 6 tháng đến 1 năm kinh nghiệm trở lên làm việc với ReactJS, Hooks, Redux, Fetch/ Axios, Functional programing, React navigation, React saga, Firebase, Debug mobile, Maps, Permissions app.','2.000 USD','2022/12/4'),
(25,'DevOps Engineer','NTT DATA Vietnam','Manage infrastructure both on-premises and cloud with fault tolerance and redundancy including capacity planning, setup, monitoring, investigate issues. Initiate continuous process improvements over operational effectiveness.Investigate and understand root causes for issues in business ops','Strong working knowledge of Linux based systems.Practical experience with Docker containerization and clustering (Kubernetes/ECS)','2.000 USD','2022/12/4'),
(26,'NodeJS Developer','Treehouse Finance','Tham gia dự án lớn, và đầy thử thách: phát triển một nền tảng Marketing automation cho website thương mại điện tử hàng đầu trên thế giới. Trực tiếp tham phát triển một hoặc nhiều sản phẩm SaaS của công ty cho các nền tảng thương mại điện tử hàng đầu thế giới Shopify.','Kinh nghiệm làm NodeJS trên 2 năm, ReactJS trên 1 năm. Có kinh nghiệm làm việc với Database NoSQL: Mongo hoặc Firestore.','30.000.000 - 50.000.000 VND','2022/12/3'),
(27,'IT - Compliance/ IT Auditor','Công ty TNHH NEC Việt Nam','Assist team leaders in planning and executing day-to-day tasks associated with IT audit engagements. Conduct testing procedures for the purpose of evaluating IT General Controls and Application.','Good knowledge of Economics and Computers. Good knowledge of QA/QC. At least 1 year of experience.','1.000 USD','2022/12/5'),
(28,'2D/3D Unity Developer','KOFAX','Phát triển trò chơi 2D, 3D trên nền tảng Unity. Phối hợp với các thành viên trong nhóm để hoàn thiện và tối ưu hóa trò chơi: Animation, UI / UX, Gameplay, Script, v.v.','Nhanh nhẹn, biết lắng nghe, kiên trì, chịu khó học hỏi, quan tâm đến từng chi tiết.Tư duy hướng tới mục tiêu phát triển Công ty.','2.000 USD','2022/12/4'),
(29,'Azure Cloud Solutions Architect','Clear Path','Collaborate with product stakeholders to understand the requirements of the business and serve as subject matter expert on technology applicable to develop applications and solutions','Bachelor degree in B.S. and/or M.S. in Computer Sciences, Information Technology, Applied Mathemathics.Experience in SDLC (Software Development Life Cycle) and cloud migration methodologies','3.000 USD','2022/12/5'),
(30,'Quality Controller/ Tester','NGÂN HÀNG Á CHÂU (ACB)','Nghiên cứu yêu cầu và thiết kế của dự án.Nghiên cứu test case, lập kế hoạch/ kịch bản test, và chuẩn bị dữ liệu test. Kiểm tra chất lượng website, ứng dụng web và ứng dụng trên di động.','Tốt nghiệp Cao đẳng/ Đại học chuyên ngành công nghệ thông tin. Có kiến thức về quy trình phần mềm và các giai đoạn kiểm thử. Biết sử dụng các công cụ bug tracking (jira, redmine...).','Thương lượng','2022/12/4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_applied`
--

CREATE TABLE `job_applied` (
  `id` int(11) NOT NULL,
  `ten_vi_tri` varchar(50) NOT NULL,
  `ten_cong_ty` varchar(50) NOT NULL,
  `ngay_ung_tuyen` varchar(50) NOT NULL,
  `trang_thai` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `job_applied`
--

INSERT INTO `job_applied` (`id`, `ten_vi_tri`, `ten_cong_ty`, `ngay_ung_tuyen`, `trang_thai`, `username`) VALUES
(1, 'Senior QA Engineer', 'Treehouse Finance', '12-12-2022', 'Waitting', 'user1@gmail.com'),
(2, 'Lead Java Engineer', 'Positive Thinking Company', '13-12-2022', 'Waitting', 'user2@gmail.com'),
(3, 'Java Software Engineer', 'NTT DATA Vietnam', '13-12-2022', 'Waitting', 'user3@gmail.com'),
(4, 'Back-end Developer', 'NGÂN HÀNG Á CHÂU (ACB)', '12-12-2022', 'Waitting', 'user4@gmail.com'),
(5, 'Middle Frontend Developer', 'M2 Vietnam', '12-12-2022', 'Waitting', 'user5@gmail.com'),
(6, 'Senior Database', 'Công ty TNHH NEC Việt Nam', '11-12-2022', 'Waitting', 'user6@gmail.com'),
(7, 'Android Developer', 'NTT DATA Vietnam', '12-12-2022', 'Waitting', 'user7@gmail.com'),
(8, 'Senior Database', 'Công ty TNHH NEC Việt Nam', '13-12-2022', 'Waitting', 'user8@gmail.com'),
(9, 'Business Analyst', 'Công ty TNHH NEC Việt Nam', '11-12-2022', 'Waitting', 'user9@gmail.com'),
(10, 'NodeJS Developer', 'Treehouse Finance', '13-12-2022', 'Waitting', 'user10@gmail.com'),
(11, 'Android Developer', 'NTT DATA Vietnam', '15-12-2022', 'Waitting', 'user11@gmail.com'),
(12, 'DevOps Engineer', 'Positive Thinking Company', '10-12-2022', 'Waitting', 'user12@gmail.com'),
(13, 'REACT NATIVE DEVELOPER', 'M2 Vietnam', '11-12-2022', 'Waitting', 'user13@gmail.com'),
(14, '2D/3D Unity Developer', 'KOFAX', '13-12-2022', 'Waitting', 'user14@gmail.com'),
(15, 'Project Manager', 'Clear Parth', '10-12-2022', 'Waitting', 'user15@gmail.com'),
(16, 'Product Designer', 'NGÂN HÀNG Á CHÂU (ACB)', '16-12-2022', 'Waitting', 'user16@gmail.com'),
(17, '2D/3D Unity Developer', 'KOFAX', '14-12-2022', 'Waitting', 'user17@gmail.com'),
(18, 'Mobile Engineer', 'Treehouse Finance', '10-12-2022', 'Waitting', 'user18@gmail.com'),
(19, 'Java Software Engineer', 'NTT DATA Vietnam', '16-12-2022', 'Waitting', 'user19@gmail.com'),
(20, 'Lead Java Engineer', 'Positive Thinking Company', '10-12-2022', 'Waitting', 'user20@gmail.com'),
(21, 'Head of Development', 'M2 Vietnam', '16-12-2022', 'Waitting', 'user21@gmail.com'),
(22, 'Test Automation Engineer', 'KOFAX', '11-12-2022', 'Waitting', 'user22@gmail.com'),
(23, 'ServiceNow Developer', 'Clear Parth', '10-12-2022', 'Waitting', 'user23@gmail.com'),
(24, 'Product Designer', 'NGÂN HÀNG Á CHÂU (ACB)', '15-12-2022', 'Waitting', 'user24@gmail.com'),
(25, 'Business Analyst', 'Công ty TNHH NEC Việt Nam', '14-12-2022', 'Waitting', 'user25@gmail.com'),
(26, 'Senior QA Engineer', 'Treehouse Finance', '15-12-2022', 'Waitting', 'user26@gmail.com'),
(27, 'Java Software Engineer', 'NTT DATA Vietnam', '16-12-2022', 'Waitting', 'user27@gmail.com'),
(28, 'Lead Java Engineer', 'Positive Thinking Company', '12-12-2022', 'Waitting', 'user28@gmail.com'),
(29, 'Head of Development', 'M2 Vietnam', '11-12-2022', 'Waitting', 'user29@gmail.com'),
(30, 'Test Automation Engineer', 'KOFAX', '16-12-2022', 'Waitting', 'user30@gmail.com');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `STT` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `birth` date NOT NULL,
  `phone` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `pass` text NOT NULL,
  `token_reset_password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`STT`, `name`, `birth`, `phone`, `gender`, `address`, `email`, `pass`, `token_reset_password`) VALUES
(1, 'Nguyễn Minh Tiến', '2002-12-01', '0334567123', 'Nam','Lê Văn Quới, Quận Bình Tân, TP HCM', 'user1@gmail.com', '123456',NULL),
(2, 'Công Huy', '2002-3-01', '0334321566', 'Nam', 'Thới An, Quận 7, TP HCM', 'user2@gmail.com', '123256',NULL),
(3, 'Bùi Thị Loan Anh', '1998-3-15', '0336788765', 'Nữ', 'Lý Thái Tổ, Quận 5, TP HCM', 'user3@gmail.com', '123256',NULL),
(4, 'Văn Chung Thủy', '2000-7-04', '0330987654', 'Nữ', '3 tháng 2, Quận 10, TP HCM', 'user4@gmail.com', '123256',NULL),
(5, 'Lê Văn Đạt', '1997-6-08', '0334567437', 'Nam', 'Gò Xoài, Quận Bình Tân, TP HCM', 'user5@gmail.com', '123256',NULL),
(6, 'Trương Tuyết Nhi', '2001-1-18', '0338766789', 'Nữ', 'Nguyễn Sơn, Quận Bình Tân, TP HCM', 'user6@gmail.com', '123256',NULL),
(7, 'Nguyễn Hiền', '2000-11-07', '0339874563', 'Nam', 'Nguyễn Thị Thập, Quận 7, TP HCM', 'user7@gmail.com', '123256',NULL),
(8, 'Trần Tuyết My', '1999-10-09', '0339812345', 'Nữ', 'Lê Văn Quới, Quận Bình Tân, TP HCM', 'user8@gmail.com', '123256',NULL),
(9, 'Võ Minh Chiến', '1995-8-29', '0339812987', 'Nam', 'Thanh Sơn, Quận Hải Châu,TP Đà Nẵng', 'user9@gmail.com', '123256',NULL),
(10, 'Hoàng Tuấn Vũ', '1998-1-15', '0339812111', 'Nam', 'Khuê Mỹ, Quận Ngũ Hành Sơn,TP Đà Nẵng', 'user10@gmail.com', '123256',NULL),
(11, 'Nguyễn Thái Nhật', '2000-12-08', '0339812176', 'Nam', 'Khuê Trung, Quận Cẩm Lệ,TP Đà Nẵng', 'user11@gmail.com', '123256',NULL),
(12, 'Phan Thanh Hiếu', '1996-2-18', '0339812222', 'Nữ', 'Hòa Sơn, Quận Hòa Vang,TP Đà Nẵng', 'user12@gmail.com', '123256',NULL),
(13, 'Nguyễn Thị Hoa', '1994-7-05', '0338902987', 'Nữ', 'Nam Ô, Quận Liên Chiểu,TP Đà Nẵng', 'user13@gmail.com', '123256',NULL),
(14, 'Nguyễn Hoàn Hảo', '2001-11-02', '0333412900', 'Nam', 'Trần Phú , Quận Hải Châu,TP Đà Nẵng', 'user14@gmail.com', '123256',NULL),
(15, 'Phan Đình Lộc', '1999-4-11', '0339675987', 'Nam', 'Yên Khê, Quận Thanh Khê,TP Đà Nẵng', 'user15@gmail.com', '123256',NULL),
(16, 'Trần Thị Diệu', '1995-8-14', '0339812743', 'Nữ', 'Lê Lai, Quận Gò Vấp,TP HCM', 'user16@gmail.com', '123256',NULL),
(17, 'Đào Mỹ Phụng', '1997-9-02', '0339812441', 'Nữ', 'Lương Định Của, Quận 2 ,TP HCM', 'user17@gmail.com', '123256',NULL),
(18, 'Nguyễn Trung Trực', '2000-10-24', '0339812691', 'Nam', 'Phan Đăng Lưu, Quận Bình Thạnh,TP HCM', 'user18@gmail.com', '123256',NULL),
(19, 'Trần Trung Kiên', '1998-7-06', '0339816541', 'Nam', 'Lê Văn Sĩ, Quận 3,TP HCM', 'user19@gmail.com', '123256',NULL),
(20, 'Lê Thị Liễu', '1993-3-12', '0339871743', 'Nữ', 'Phạm Thế Hiển, Quận 8,TP HCM', 'user20@gmail.com', '123256',NULL),
(21, 'Nguyễn Hồng Thi', '1999-6-18', '0339871910', 'Nữ', 'Phạm Văn Chí, Quận 6,TP HCM', 'user21@gmail.com', '123256',NULL),
(22, 'Trần Công Lộc', '2000-10-22', '0339871618', 'Nam', 'Đinh Đức Thiện, Quận Bình Chánh,TP HCM', 'user22@gmail.com', '123256',NULL),
(23, 'Nguyễn Thủy Tiên', '1996-4-09', '0339870751', 'Nữ', 'Lộ Tẻ, Quận Bình Tân,TP HCM', 'user23@gmail.com', '123256',NULL),
(24, 'Phạm Công Nam', '1998-2-26', '0378271743', 'Nam', 'Kinh Đ.Vương, Quận 6,TP HCM', 'user24@gmail.com', '123256',NULL),
(25, 'Nguyễn Hoàng Vũ', '2000-11-06', '0339877783', 'Nam', 'Vành Đai, Quận 6,TP HCM', 'user25@gmail.com', '123256',NULL),
(26, 'Văn Trung Toàn', '1994-2-19', '0339678743', 'Nam', 'Trần Hưng Đạo, Quận 1,TP HCM', 'user26@gmail.com', '123256',NULL),
(27, 'Trần Thị Sương', '1996-10-01', '0339871875', 'Nữ', 'Hồng Bàng, Quận 5,TP HCM', 'user27@gmail.com', '123256',NULL),
(28, 'Lê Thị Đào', '1992-7-23', '0339867962', 'Nữ', 'Nguyễn Văn Cừ, Quận 5,TP HCM', 'user28@gmail.com', '123256',NULL),
(29, 'Võ Anh Tài', '2000-11-28', '0339011743', 'Nam', 'Lưu Hữu Phước, Quận 8,TP HCM', 'user29@gmail.com', '123256',NULL),
(30, 'Trần Văn Nam', '1997-8-14', '0339877765', 'Nam', 'Nam Quốc Cang, Quận 1,TP HCM', 'user30@gmail.com', '123256',NULL);
(31, 'admin', '2002-12-18', '031245671', 'nam', 'HCM', 'admin', '123456', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`ID_comp`);

--
-- Chỉ mục cho bảng `cv_user`
--
ALTER TABLE `cv_user`
  ADD PRIMARY KEY (`cv_id`);

--
-- Chỉ mục cho bảng `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`ID_job`);

--
-- Chỉ mục cho bảng `job_applied`
--
ALTER TABLE `job_applied`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`STT`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cv_user`
--
ALTER TABLE `cv_user`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `job`
--
ALTER TABLE `job`
  MODIFY `ID_job` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `job_applied`
--
ALTER TABLE `job_applied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `STT` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
