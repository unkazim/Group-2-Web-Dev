-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 07:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Administrator', 'test@gmail.com', 7894561239, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(9, 1, 'azim@gmail.com', '19-06-2024', '20-06-2024', 'I really want to go here', '2024-06-19 08:33:07', 1, NULL, '2024-06-19 08:40:30'),
(10, 3, 'azim@gmail.com', '20-06-2024', '21-06-2024', 'I want thi trip so much ', '2024-06-19 16:25:40', 2, 'a', '2024-06-19 16:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(19, 'azim@gmail.com', 'Refund', 'I want my money back ', '2024-06-19 08:34:21', 'Apologies for our wrong ', '2024-06-19 08:41:26'),
(20, 'azim@gmail.com', 'Booking Issues', 'My connection is lost ', '2024-06-19 16:26:48', 'We already cancel your trip ', '2024-06-19 16:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(3, 'aboutus', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">About Us</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Welcome to Explore Malaysia Tours! We are dedicated to providing exceptional travel experiences that showcase the beauty and diversity of Malaysia. Our carefully crafted packages offer a perfect blend of adventure, relaxation, and cultural enrichment, ensuring a memorable journey for every traveler.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">At Explore Malaysia Tours, we believe in creating unique and personalized travel experiences. Our team of experienced travel experts is passionate about sharing the hidden gems and iconic destinations of Malaysia with our clients. Whether you\'re looking to explore the lush rainforests, pristine beaches, bustling cities, or historical sites, we have the perfect package for you.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">We are committed to delivering top-notch service and unforgettable experiences. Join us on a journey to discover the wonders of Malaysia!</span></div><br><div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Privacy Policy</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Introduction</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Explore Malaysia Tours is committed to protecting your privacy. This Privacy Policy explains how we collect, use, and safeguard your personal information when you visit our website and use our services.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Information We Collect</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Personal Information: We collect personal information such as your name, email address, phone number, and payment details when you make a booking or inquiry.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Usage Data: We collect information on how you interact with our website, including IP address, browser type, pages visited, and duration of visit.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">How We Use Your Information</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">To process bookings and payments.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">To communicate with you regarding your bookings and inquiries.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">To improve our website and services based on your feedback and usage patterns.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">To send promotional materials and offers, if you have opted in to receive them.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Data Security</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">We implement appropriate security measures to protect your personal information from unauthorized access, alteration, or disclosure. However, no method of transmission over the internet or electronic storage is 100% secure.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Third-Party Services</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">We may share your information with trusted third-party service providers to process payments, manage bookings, and enhance our services. These providers are obligated to protect your information and use it solely for the services they provide.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Your Rights</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">You have the right to access, correct, or delete your personal information. You can also opt-out of receiving promotional communications from us at any time.</span></div><div style=\"color: rgb(80, 80, 80); font-family: &quot;courier new&quot;; font-size: 13px; text-align: justify;\"><br></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(80, 80, 80); font-size: 13px;\"><br></span></span><div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Term of Use</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Acceptance of Terms</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">By using the Explore Malaysia Tours website, you agree to comply with and be bound by these Terms of Use. If you do not agree to these terms, please do not use our website.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Use of Website</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">You must be at least 18 years old to use our website and services.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">You agree to provide accurate and complete information when making a booking or inquiry.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">You agree not to use our website for any unlawful or prohibited activities.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Booking and Payments</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">All bookings are subject to availability and confirmation.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Payments must be made in full at the time of booking.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Cancellation and refund policies vary by package and will be outlined in the booking confirmation.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Intellectual Property</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">All content on our website, including text, images, and logos, is the property of Explore Malaysia Tours and is protected by intellectual property laws. You may not reproduce, distribute, or use any content without our prior written permission.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Limitation of Liability</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Explore Malaysia Tours is not liable for any direct, indirect, incidental, or consequential damages arising from your use of our website or services. This includes, but is not limited to, damages for loss of data, profits, or other intangible losses.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Changes to Terms</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">We reserve the right to modify these Terms of Use at any time. Any changes will be effective immediately upon posting on our website. Your continued use of our website constitutes acceptance of the revised terms.</span></div><div style=\"color: rgb(80, 80, 80); font-family: &quot;courier new&quot;; font-size: 13px; text-align: justify;\"><br></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(80, 80, 80); font-size: 13px;\"><br></span></span><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: 700;\">Contact Us !!!</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: 700;\">If you have any questions about these Terms of Use, please contact us at <br>terms@exploremalaysiatours.com</span><br></div><div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\"><br></span></div><span style=\"font-family: &quot;courier new&quot;;\"></span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Tropical Island ', 'Group Package', 'Langkawi Island, Malaysia', 400, '4 nights stay at a 5-star beach resort Daily breakfast and one dinner at a seaside restaurant Guided island hopping tour Snorkeling and diving excursions Cable car ride to the top of Mount Mat Cincang', 'Experience the serene beauty of Langkawi Island with a luxurious stay at a top-rated beach resort. Enjoy a guided tour of the surrounding islands, dive into the crystal-clear waters for snorkeling and diving, and take a breathtaking cable car ride for panoramic views of the island. This package offers the perfect blend of adventure and relaxation.', 'Langkawi.jpg', '2024-07-15 05:21:58', '2024-06-19 08:38:09'),
(2, 'Heritage City Explorer', 'Family Package', 'Georgetown, Penang, Malaysia', 300, '3 nights stay in a heritage hotel Daily breakfast and traditional Penang lunch Guided walking tour of UNESCO World Heritage sites Street food tour with a local guide Entrance tickets to the Penang Peranakan Mansion and Khoo Kongsi', 'Immerse yourself in the rich cultural heritage of Georgetown, Penang. Stay in a charming heritage hotel and explore the city\'s historic sites on a guided walking tour. Taste the best of Penang’s famous street food with a local guide and visit the beautiful Penang Peranakan Mansion and Khoo Kongsi.\r\n', 'georgetown.jpg', '2024-07-15 05:21:58', '2024-06-18 10:50:50'),
(3, 'Highland Adventure', 'Couple Package', 'Cameron Highlands, Malaysia', 150, '3 nights stay at a boutique hotel Daily breakfast and one tea plantation tour with afternoon tea Jungle trekking with a professional guide Visit to strawberry farms and flower gardens Scenic drive through the highlands', 'Discover the cool, refreshing climate of Cameron Highlands with this adventure-packed package. Enjoy a stay at a boutique hotel and explore the lush landscapes on a jungle trek. Visit local strawberry farms and flower gardens, and enjoy a tour of a tea plantation complete with an afternoon tea session.\r\n', 'cameron.jpg', '2024-07-15 05:21:58', '2024-06-18 10:51:04'),
(4, 'Urban Escape', 'Family Package', 'Kuala Lumpur, Malaysia', 450, '3 nights stay at a luxury hotel in the city center Daily breakfast and one rooftop dinner Guided city tour including Petronas Twin Towers and Batu Caves Shopping tour at Bukit Bintang and Central Market Spa treatment at the hotel', 'Experience the vibrant city life of Kuala Lumpur with a luxurious stay in the heart of the city. Explore iconic landmarks such as the Petronas Twin Towers and Batu Caves, indulge in a shopping spree at Bukit Bintang, and unwind with a spa treatment at your hotel. This package is perfect for those seeking a blend of urban excitement and relaxation.\r\n', 'kuala lumpur.jpg', '2024-07-15 05:21:58', '2024-06-18 10:51:16'),
(5, 'Cultural Enrichment ', 'Family', 'Malacca, Malaysia', 250, '2 nights stay in a boutique hotel in the historical center Daily breakfast and one traditional Nyonya dinner Guided tour of historical sites including A Famosa and St. Paul’s Hill River cruise along Malacca River Visit to the Baba & Nyonya Heritage Museum', 'Step back in time and explore the rich history of Malacca with a stay in the heart of the city. Discover historical landmarks on a guided tour, enjoy a relaxing river cruise, and learn about the unique Baba & Nyonya culture at the heritage museum. This package offers a deep dive into Malacca\'s vibrant past.\r\n', 'melaka.jpg', '2024-07-15 05:21:58', '2024-06-18 10:51:28'),
(6, 'Nature Retreat', 'Group', 'Taman Negara, Pahang, Malaysia', 100, '4 nights stay at an eco-resort Daily breakfast and one riverside dinner Guided jungle trekking and canopy walk River rafting and night safari Visit to the Orang Asli village', 'Reconnect with nature in the pristine environment of Taman Negara, one of the oldest rainforests in the world. Stay at an eco-resort and embark on guided jungle treks and canopy walks. Experience the thrill of river rafting and a night safari, and visit a local Orang Asli village to learn about their traditional way of life. This package is ideal for nature enthusiasts seeking adventure and tranquility.', 'taman negara.jpg', '2024-07-15 05:21:58', '2024-06-18 10:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 06:33:20', '2024-06-18 13:12:14'),
(16, 'Azim001', '0189651161', 'azim@gmail.com', '56b738b18c708526362482a1cd503656', '2024-06-19 08:30:24', '2024-06-19 16:35:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
