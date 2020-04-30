-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 12:51 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dayteller`
--

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `day_id` int(20) NOT NULL,
  `day_date` int(2) NOT NULL,
  `day_month` int(2) NOT NULL,
  `day_name` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`day_id`, `day_date`, `day_month`, `day_name`) VALUES
(1, 1, 10, 'International Coffee Day'),
(2, 14, 10, 'World Standards Day'),
(3, 15, 10, 'World Students Day'),
(4, 16, 10, 'World Food Day'),
(5, 17, 10, 'International Poverty Eradication Day'),
(6, 8, 10, 'Indian Airforce Day'),
(7, 9, 10, 'World Postal Day'),
(8, 31, 10, 'Unity Day'),
(9, 7, 11, 'National Cancer Awareness Day'),
(10, 22, 4, 'World Earth Day'),
(11, 24, 3, 'World TB Day'),
(12, 22, 3, 'World Water Day'),
(13, 31, 5, 'World No Tobacco Day'),
(14, 21, 6, 'International Yoga Day'),
(15, 5, 6, 'World Environmnet Day'),
(16, 1, 12, 'World AIDS Day'),
(17, 2, 12, 'World Computer Day'),
(18, 26, 7, 'Kargil Vijay Diwas'),
(19, 28, 7, 'World Hepatitis Day'),
(20, 23, 7, 'National Broadcasting Day'),
(21, 11, 7, 'World Population Day'),
(22, 27, 9, 'World Tourism Day'),
(23, 29, 9, 'World Heart Day'),
(24, 30, 9, 'International Translation Day'),
(25, 8, 9, 'International Literacy Day'),
(26, 16, 9, 'World Ozone Day'),
(27, 11, 11, 'National Education Day'),
(28, 8, 3, 'International Women Day'),
(29, 20, 2, 'World Day of Social Justice'),
(30, 20, 3, 'World Sparrow Day'),
(31, 26, 11, 'National Constitution Day'),
(32, 6, 8, 'World Peace Day'),
(33, 7, 4, 'World Health Day'),
(34, 3, 3, 'World Wildlife Day'),
(35, 2, 2, 'World Wetlands Day'),
(36, 5, 12, 'World Soil Day'),
(37, 28, 1, 'Data Protection Day'),
(38, 4, 1, 'Louis Braille Day'),
(39, 25, 12, 'Good Governance Day in India'),
(40, 19, 12, 'Goa Liberation Day'),
(41, 8, 6, 'World Ocean Day'),
(42, 4, 2, 'World Cancer Day'),
(43, 24, 1, 'International Day of Education'),
(44, 13, 2, 'World Radio Day'),
(45, 21, 3, 'International Day of Forests'),
(46, 23, 3, 'World Meteorological Day'),
(47, 18, 4, 'International Day For Monuments and Sites'),
(48, 23, 4, 'World Book and Copyright Day'),
(49, 28, 9, 'World Rabies Day'),
(50, 15, 9, 'International Day of Democracy'),
(51, 5, 9, 'International Day of Charity'),
(52, 9, 12, 'International Anti-Corruption Day'),
(53, 10, 12, 'Human Rights Day'),
(54, 11, 12, 'International Mountain Day'),
(55, 18, 12, 'International Migrants Day'),
(56, 20, 12, 'International Human Solidarity Day'),
(57, 19, 11, 'World Toilet Day'),
(58, 20, 11, 'Universal Childrenâ€™s Day'),
(59, 14, 11, 'World Diabetes Day'),
(60, 5, 11, 'World Tsunami Awareness Day'),
(61, 10, 10, 'World Mental Health Day'),
(62, 11, 10, 'International Day of the Girl Child'),
(63, 1, 3, 'Zero Discrimination Day'),
(64, 26, 4, 'World Intellectual Property Day'),
(65, 3, 5, 'World Press Freedom Day'),
(66, 15, 5, 'International Day of Families'),
(67, 16, 5, 'International Day of Living Together in Peace'),
(68, 20, 6, 'World Refugee Day'),
(69, 30, 6, 'International Day of Parliamentarism'),
(70, 30, 7, 'International Day of Friendship'),
(71, 19, 8, 'World Humanitarian Day'),
(72, 7, 12, 'International Civil Aviation Day'),
(73, 27, 2, 'World NGO Day'),
(74, 28, 2, 'National Science Day'),
(75, 4, 3, 'National Security Day'),
(76, 12, 3, 'World Kidney Day'),
(77, 27, 3, 'World Theatre Day'),
(78, 2, 4, 'World Autism Awareness Day'),
(79, 10, 4, 'World Homeopathy Day'),
(80, 19, 4, 'World Liver Day'),
(81, 25, 4, 'World Malaria Day'),
(82, 27, 4, 'World Veterinary Day'),
(83, 28, 4, 'World Day for Safety and Health at Work'),
(84, 17, 4, 'World Haemopphilia Day'),
(85, 24, 4, 'National Panchayati Day'),
(86, 30, 4, 'Ayushman Bharat Diwas'),
(87, 29, 4, 'International Dance Day'),
(88, 1, 5, 'International Labour Day'),
(89, 7, 5, 'World Athletics Day'),
(90, 8, 5, 'World Red Cross Day'),
(91, 18, 5, 'International Museum Day'),
(92, 1, 6, 'World Milk Day'),
(93, 3, 6, 'World Bicycle Day'),
(94, 4, 6, 'International Day of Innocent Children Victims of Aggression'),
(95, 7, 6, 'World Food Safety Day'),
(96, 12, 6, 'Anti-Child Labor Day'),
(97, 14, 6, 'World Blood Donor Day'),
(98, 15, 6, 'World Wind Day'),
(99, 18, 7, 'International Nelson Mandela Day'),
(100, 29, 8, 'National Sports Day'),
(101, 4, 12, 'Indian Navy Day'),
(102, 23, 9, 'International Day of Sign Languages'),
(103, 26, 9, 'World Contraception Day');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'kp99', 'kp@gm.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `day_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
