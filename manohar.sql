-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 10:36 AM
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
-- Database: `manohar`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `profile_photo` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `password`, `email_id`, `phone_no`, `institution`, `designation`, `profile_photo`, `created_on`) VALUES
(123, 'Tamil', '1234', 'tamil@gmail.com', '123', ' KSR', 'Student', 'uploads/123_0.jpg', '2024-03-15 11:36:39'),
(1234, 'kumaran', '1234', 'asd@gmail.com', '8518751235', 'saveetha', 'Student', 'uploads/1234.jpg', '2024-04-03 05:21:43'),
(1920, 'Manohar', '9876', 'manohar@gmail.com', '9908319699', 'Saveetha', 'Student', '', '2024-04-02 04:30:36'),
(7875, 'adsfa', '123', 'adas@gmail.com', '8976543', 'saveetha', 'Student', '', '2024-04-12 10:51:57'),
(9685, 'qweq', '2381', 'manu0@gmail.com', '99083196', 'Saveetha', 'Student', '', '2024-04-12 10:40:46'),
(9876, 'somu87', '2381', 'manu10@gmail.com', '99083196', 'Saveetha', 'Student', 'uploads/9876.png', '2024-04-16 04:19:01'),
(12345, 'somu1', '1234567', 'somu1@gmail.com', '1235648', 'saveetha', 'Student', '', '2024-04-02 07:53:48'),
(51545, 'manu', '123', 'asda@gmail.com', '78956241', 'saveetha', 'Doctor', 'uploads/51545_1.jpg', '2024-04-27 07:19:20'),
(96851, 'qweqgh', '2381', 'manu10@gmail.com', '99083196', 'Saveetha', 'Student', 'uploads/96851.jpg', '2024-04-15 04:45:14'),
(121249, 'Manohar', '23812', 'manu0@gmail.com', '99083196', 'Saveetha', 'Student', '', '2024-03-14 10:23:52'),
(123412, 'asdasd', '12345', 'asda@gmail.com', '213423412', 'saveetha', 'student', 'uploads/123412.jpg', '2024-04-16 04:45:30'),
(9685132, 'qweqgw2', '2381', 'manu10@gmail.com', '99083196', 'Saveetha', 'Student', 'uploads/9685132.png', '2024-04-15 11:59:35'),
(192011238, 'Manohar34', '1234', 'somu9@gmail.com', '1234123312', 'saveetha', 'Student', 'uploads/192011238_4.jpg', '2024-03-14 04:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `Case_Study` varchar(500) DEFAULT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `Case_Study`, `photo`) VALUES
(1, 'Beckers Nevus – HS50/23 , 23011042527\nQues 1 :- Unilateral, hyperpigmented macular lesion with irregularly\ndemarcated edges over left chest since five months and is not associated\nwith itching.', 'http://172.20.10.8/manohar/uploads/profile65c9d8a78e4e9.jpg'),
(2, '38/M presented with hyper and hypopigmented irregular and\ndiscrete mottled macules all over the body since birth, sparing flexures. Similar\nlesion described in his father and younger sister', 'http://172.20.10.8/manohar/uploads/profile65cb2b84a1b91.jpg'),
(3, 'Scleredema diabeticorum – HS630/23, 23040374980\n38/f a known diabetic presented with thickening of skin on her\nnape of neck. Woody, non pitting, erythematous plaques like\nlesion on her nape of neck was seen', 'http://172.20.10.8/manohar/uploads/profile661f5a01c850b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `s.no` int(11) NOT NULL,
  `rank_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`s.no`, `rank_image`) VALUES
(1, 'uploads/1.jpg'),
(2, 'uploads/2.jpg'),
(3, 'uploads/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_questions`
--

CREATE TABLE `sub_questions` (
  `id` int(11) NOT NULL,
  `case_study_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `question` varchar(250) DEFAULT NULL,
  `option_1` varchar(100) DEFAULT NULL,
  `option_2` varchar(100) DEFAULT NULL,
  `option_3` varchar(100) DEFAULT NULL,
  `option_4` varchar(100) DEFAULT NULL,
  `correct_answer` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_questions`
--

INSERT INTO `sub_questions` (`id`, `case_study_id`, `question_id`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `correct_answer`) VALUES
(167, 1, 1, 'What is your likely diagnosis?', 'Beckers nevus', 'Compound nevus', 'Congenital melanotic nevus', 'Congenital smooth muscle hamartoma', 1),
(168, 1, 2, 'All are included in epidermal nevi except?', 'Nevus sebaceous', 'Nevus comedonicus', 'Beckers nevus', 'Blue nevus', 4),
(169, 1, 3, 'What are the associated forms of lesion?', 'hypertrichosis', 'hyperhydrosis', 'sebaceous hyperplasia', 'skin tags', 1),
(170, 1, 4, 'Mention any two musculoskeletal defects associated with the lesion?', 'unilateral breast hypoplasia', 'kyphosis', 'pectus carinatum', 'hiatus hernia', 1),
(179, 2, 1, 'What is the possible diagnosis?', 'Reticulate acropigmentation', 'Dyschromatosis symmetrica hereditaria', 'Dyschromatosis universalis hereditaria', 'Xeroderma pigmentosum', 3),
(180, 2, 2, 'What is the most common inheritance pattern observed in this case?', 'Autosomal dominant', 'Autososmal recessive', 'X linked dominant', 'X linked recessive', 1),
(181, 2, 3, 'What is the gene mutation associated with the lesion?', 'MAP2K1', 'ABCB6 gene', 'DKC1 gene mutation', 'XPA gene mutation', 2),
(182, 2, 4, 'Which is the most common malignancy in xeroderma pigmentosum?', 'Basal cell carcinoma', 'Squamous cell carcinoma', 'Cutaneous lymphoma', 'Melanoma', 2),
(215, 3, 1, 'What is your diagnosis?', 'Eosinophilic fasciitis', 'Scleredema diabeticorum', 'Localized scleroderma', 'Primary systemic amyloidosis', 2),
(216, 3, 2, 'which skin manifestation is considered as a prognostic indicator for developing type 2 diabetes?', 'Diabetic dermopathy', 'Eruptive xanthoma', 'Acanthosis nigricans', 'Rubeosis facei', 3),
(217, 3, 3, 'which systemic manifestation is associated with bullosis diabeticorum in type 1 diabetic patients?', 'Diabetic nephropathy', 'Retinopathy', 'Peripheral neuropathy', 'Cardiomyopathy', 4),
(218, 3, 4, 'which cutaneous manifestation arises in uncontrolled diabetes?', 'Tendinous xanthoma', 'Eruptive xanthoma', 'Tuberous xanthoma', 'Verruciform xanthoma', 2);

-- --------------------------------------------------------

--
-- Table structure for table `totalscore`
--

CREATE TABLE `totalscore` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_score` int(11) DEFAULT NULL,
  `total_wrong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `totalscore`
--

INSERT INTO `totalscore` (`id`, `user_id`, `total_score`, `total_wrong`) VALUES
(109, 12345, 4, 4),
(111, 1920, 5, 3),
(113, 123, 0, 0),
(120, 1234, 5, 11),
(123, 192011238, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `case_study_id` int(250) DEFAULT NULL,
  `question_id` int(250) DEFAULT NULL,
  `user_answer` int(250) DEFAULT NULL,
  `Correct` int(250) NOT NULL,
  `Wrong` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `user_id`, `case_study_id`, `question_id`, `user_answer`, `Correct`, `Wrong`) VALUES
(1290, 1920, 1, 1, 2, 0, 1),
(1291, 1920, 1, 2, 1, 0, 1),
(1292, 1920, 1, 3, 1, 1, 0),
(1293, 1920, 1, 4, 1, 1, 0),
(1294, 1920, 2, 1, 3, 1, 0),
(1295, 1920, 2, 2, 4, 0, 1),
(1296, 1920, 2, 3, 2, 1, 0),
(1297, 1920, 2, 4, 2, 1, 0),
(1454, 12345, 1, 1, 1, 1, 0),
(1455, 12345, 1, 2, 2, 0, 1),
(1456, 12345, 1, 3, 0, 0, 1),
(1457, 12345, 1, 4, 0, 0, 1),
(1458, 1234, 1, 1, 1, 1, 0),
(1459, 1234, 1, 2, 2, 0, 1),
(1460, 1234, 1, 3, 3, 0, 1),
(1461, 1234, 1, 4, 0, 0, 1),
(1462, 1234, 2, 1, 3, 1, 0),
(1463, 1234, 2, 2, 0, 0, 1),
(1464, 1234, 2, 3, 3, 0, 1),
(1465, 1234, 2, 4, 2, 1, 0),
(1466, 1234, 3, 1, 3, 0, 1),
(1467, 1234, 3, 1, 3, 0, 1),
(1468, 1234, 3, 2, 3, 1, 0),
(1469, 1234, 3, 2, 3, 1, 0),
(1470, 1234, 3, 3, 0, 0, 1),
(1471, 1234, 3, 3, 0, 0, 1),
(1472, 1234, 3, 4, 0, 0, 1),
(1473, 1234, 3, 4, 0, 0, 1),
(1678, 192011238, 1, 1, 1, 1, 0),
(1679, 192011238, 1, 2, 4, 1, 0),
(1680, 192011238, 1, 3, 1, 1, 0),
(1681, 192011238, 1, 4, 2, 0, 1),
(1682, 192011238, 2, 1, 3, 1, 0),
(1683, 192011238, 2, 2, 1, 1, 0),
(1684, 192011238, 2, 3, 2, 1, 0),
(1685, 192011238, 2, 4, 1, 0, 1),
(1686, 192011238, 3, 1, 2, 1, 0),
(1687, 192011238, 3, 2, 3, 1, 0),
(1688, 192011238, 3, 3, 4, 1, 0),
(1689, 192011238, 3, 4, 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `sub_questions`
--
ALTER TABLE `sub_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `totalscore`
--
ALTER TABLE `totalscore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `case_study_id` (`case_study_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192011241;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_questions`
--
ALTER TABLE `sub_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `totalscore`
--
ALTER TABLE `totalscore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1690;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`case_study_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
