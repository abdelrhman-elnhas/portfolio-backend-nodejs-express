-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 10, 2025 at 03:40 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u697617541_cropcopter`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` enum('Web','UI-UX','Graphic Design') NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `orderProj` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `category`, `image`, `url`, `date`, `created_at`, `updated_at`, `orderProj`) VALUES
(1, 'UrbanCloset Social Media Designs', 'Graphic Design', 'Proj24', 'https://www.behance.net/gallery/153538821/Urban-Closet-Identity/modules/866469909', 'September, 2022', NULL, NULL, 2),
(2, 'Urban Closet Logo Design', 'Graphic Design', 'Proj23', 'https://www.behance.net/gallery/153538821/Urban-Closet-Identity', 'September, 2022', NULL, NULL, 2),
(3, 'MasterCode Logo Design', 'Graphic Design', 'Proj22', 'https://www.behance.net/gallery/137379029/Master-Code-Logo-Design', 'May, 2020', NULL, NULL, 2),
(4, 'Filmataam Logo Design', 'Graphic Design', 'Proj20', 'https://www.behance.net/gallery/143552761/Fil-mataam-Logo', 'March, 2022', NULL, NULL, 2),
(5, 'Simple Steps Kids Logo Design', 'Graphic Design', 'Proj18', 'https://www.behance.net/gallery/142495947/Simple-Steps-Academy-For-Kids-Logo', 'April, 2022', NULL, NULL, 2),
(6, 'Eleca Logo Design', 'Graphic Design', 'Proj17', 'https://www.behance.net/gallery/187419089/Eleca-Electronics-Logo-Design', 'October, 2022', NULL, NULL, 2),
(7, 'CropCopter Logo Design', 'Graphic Design', 'Proj16', 'https://www.behance.net/gallery/175869417/CropCopter-Logo', 'December, 2022', NULL, NULL, 2),
(8, 'AE Adv. Social Media Designs', 'Graphic Design', 'Proj15', 'https://www.behance.net/portfolio/editor?project_id=151962087', 'August, 2022', NULL, NULL, 2),
(9, 'MasterCode Social Media Designs', 'Graphic Design', 'Proj14', 'https://www.behance.net/gallery/166314691/Social-Media-Designs-Vol3', 'February, 2023', NULL, NULL, 2),
(10, 'MasterCode Social Media Designs', 'Graphic Design', 'Proj13', 'https://www.behance.net/gallery/166314691/Social-Media-Designs-Vol3', 'June, 2022', NULL, NULL, 2),
(11, 'Samako Social Media Designs', 'Graphic Design', 'Proj12', 'https://www.behance.net/gallery/137380395/Samako-Social-Media-Designs', 'December, 2021', NULL, NULL, 2),
(12, 'Science Teacher Social Media Design', 'Graphic Design', 'Proj11', 'https://www.behance.net/gallery/160124491/Science-Teacher-Social-Media-Design', 'December, 2022', NULL, NULL, 2),
(13, 'Simple Steps Social Media Designs', 'Graphic Design', 'Proj10', 'https://www.behance.net/gallery/147108199/Social-Media-Designs-For-Simple-Steps-Academy', 'August, 2022', NULL, NULL, 2),
(14, 'CropCopter Website UI/UX Design', 'UI-UX', 'Proj6', 'https://www.behance.net/gallery/183936663/CropCopter-Website-UIUX-Design', 'January,2023', NULL, NULL, 2),
(15, 'MasterCode Website UI/UX Design', 'UI-UX', 'Proj7', 'https://www.behance.net/gallery/160989575/MasterCode-Website-UIUX-Design', 'November, 2022', NULL, NULL, 2),
(16, 'Almonofy Educational Website', 'Web', 'Proj5', 'http://alemlak-almonofy.com/', 'May, 2022', NULL, NULL, 2),
(17, 'AllTraders App UI/UX Design', 'UI-UX', 'Proj4', 'https://www.behance.net/gallery/183936541/All-Traders-Mobile-App-UIUX-Design', 'January, 2023', NULL, NULL, 2),
(18, 'Dolphin Educational Website', 'Web', 'Proj3', 'http://dolphin-in-biology.com/', 'July, 2022', NULL, NULL, 2),
(19, 'Enchante Educational Website', 'Web', 'Proj2', 'https://francaisbacessam.com/home', 'July, 2022', NULL, NULL, 2),
(20, 'Simple Steps Social Media Designs', 'Graphic Design', 'Proj9', 'https://www.behance.net/gallery/147108199/Social-Media-Designs-For-Simple-Steps-Academy', 'May, 2022', NULL, NULL, 2),
(21, 'Nile ICT UI/UX Design', 'UI-UX', 'Proj1', 'https://www.behance.net/gallery/152832487/Nile-ICT-UIUX-Design', 'July, 2022', NULL, NULL, 2),
(22, 'CropCopter Website', 'Web', 'Proj8', 'https://www.cropcopter.net', 'June, 2023', NULL, NULL, 2),
(30, 'Simple Steps Logo Design', 'Graphic Design', 'Proj19', 'https://www.behance.net/gallery/142493877/Simple-Steps-Academy-Logo', '\r\nApril, 2022', NULL, NULL, 1),
(31, 'SoulCare Beauty Center Identity', 'Graphic Design', 'Proj21', 'https://www.behance.net/gallery/177719239/Soulcare-Identity', 'August, 2023', NULL, NULL, 1),
(32, 'Portfolio Website UI/UX Design', 'UI-UX', 'Proj26', 'https://www.behance.net/gallery/160988691/AE-Portfolio', 'November, 2022', NULL, NULL, 1),
(33, 'Dahab social Media Design', 'Graphic Design', 'Proj25', 'https://www.behance.net/gallery/178559477/Dahab-Social-Media-Design', 'August, 2023', NULL, NULL, 1),
(34, 'Web Development Certificate Designs', 'Graphic Design', 'Proj30', 'https://www.behance.net/gallery/180364189/Web-Development-Certificate-Design', 'September, 2023', NULL, NULL, 1),
(35, 'High Hopes Flyer Design', 'Graphic Design', 'Proj31', 'https://www.behance.net/gallery/149462407/Project-for-HighHopesAcademy', 'August, 2022', NULL, NULL, 1),
(36, 'CropCopter Brochure Design', 'Graphic Design', 'Proj29', 'https://www.behance.net/gallery/175867675/CropCopter-Brochure', 'July, 2023', NULL, NULL, 1),
(37, 'Zahrawan Company Profile', 'Graphic Design', 'Proj32', 'https://www.behance.net/gallery/187932639/Zahrawan-Company-Profile', 'November, 2023', NULL, NULL, 1),
(38, 'Alkarama Logo Design', 'Graphic Design', 'Proj33', 'https://www.behance.net/gallery/187932843/Alkarama-Logo', 'November, 2023', NULL, NULL, 1),
(39, 'Alkarama Company Profile', 'Graphic Design', 'Proj34', 'https://www.behance.net/gallery/187934031/Alkarama-Company-Profile', 'November, 2023', NULL, NULL, 1),
(40, 'Mahmoud Abdelqader Website', 'Web', 'Proj28', 'https://mahmoudabdelqader.com/home', 'November, 2023', NULL, NULL, 1),
(41, 'Sherif Waly Website', 'Web', 'Proj27', 'https://drsherifwaly.com/', 'December, 2023', NULL, NULL, 1),
(46, 'IP Address Locator', 'Web', 'Proj35', 'https://ip-address-locator-abdelrhman-elnhas.vercel.app/', 'December, 2023', NULL, NULL, 1),
(48, 'Ahmed Helmy Website', 'Web', 'Proj37', 'https://dr-ahmedhelmy.com/home', 'February, 2024', NULL, NULL, 1),
(49, 'Khotat Website', 'Web', 'Proj36', 'https://khotat.net/home', 'February, 2024', NULL, NULL, 1),
(50, 'Altafawok Logo', 'Graphic Design', 'Proj43', 'https://www.behance.net/gallery/199145453/Altafawok-Logo', 'March, 2024', NULL, NULL, 1),
(51, 'Dr. Youssef Elhelw Logo', 'Graphic Design', 'Proj42', 'https://www.behance.net/gallery/199145879/Dr-Youssef-Elhelw-Logo', 'April, 2024', NULL, NULL, 1),
(52, 'Dr. Youssef Elhelw Designs', 'Graphic Design', 'Proj41', 'https://www.behance.net/gallery/197208267/Dr-Youssef-Elhelw-Social-Media-Designs', 'April, 2024', NULL, NULL, 1),
(53, 'Mohammed Elnagar Website', 'Web', 'Proj38', 'https://elnagarinmath.com/home', 'April, 2024', NULL, NULL, 1),
(54, 'Egennie Ecommerce Website', 'Web', 'Proj40', 'https://www.egennie.com/', 'May, 2024', NULL, NULL, 1),
(55, 'Dr Mohammed Elsaedy Logo', 'Graphic Design', 'Proj47', 'https://www.behance.net/gallery/220658231/Dr-Mohmammed-Elsaedey-Orthopedic-Logo-Design', 'April, 2024', NULL, NULL, 1),
(56, 'Simple Steps Brochure Design', 'Graphic Design', 'Proj50', 'https://www.behance.net/gallery/210883933/Simple-Steps-Brochure', 'October, 2024', NULL, NULL, 1),
(57, 'Zuli Website UI/UX Design', 'UI-UX', 'Proj48', 'https://www.behance.net/gallery/215843995/Zuli-Website-UIUX-Design', 'November, 2024', NULL, NULL, 1),
(58, 'UltraProgress Social Media Designs', 'Graphic Design', 'Proj51', 'https://www.behance.net/gallery/220659597/UltraProgress-Social-Media-Designs', 'September, 2024', NULL, NULL, 1),
(59, 'Meet Now App UI/UX Design', 'UI-UX', 'Proj49', 'https://www.behance.net/gallery/220658017/Meet-Now-Meeting-App-UIUX', 'January, 2025', NULL, NULL, 1),
(60, 'Ramadan 2025 Designs', 'Graphic Design', 'Proj46', 'https://www.behance.net/gallery/220657553/Ramadan-2025-Social-Media-Designs', 'February, 2025', NULL, NULL, 1),
(61, 'WePick Ecommerce Website', 'Web', 'Proj45', 'https://wepick-sa.com', 'December, 2024', NULL, NULL, 1),
(62, 'iConcierge Website', 'Web', 'Proj39', 'https://iconciergeeg.com/', 'April, 2024', NULL, NULL, 1),
(63, 'XLBOX Website', 'Web', 'Proj44', 'https://xlbox.services', 'February, 2025', NULL, NULL, 1),
(64, 'Hemam Real Estate UI/UX Design', 'UI-UX', 'Proj52', 'https://www.behance.net/gallery/225161601/Hemam-Real-Estate-Website-UIUX-Desgin', 'March, 2025', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
