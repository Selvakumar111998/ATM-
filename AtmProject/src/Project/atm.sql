-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountholders`
--

CREATE TABLE `accountholders` (
  `pin_no` int(10) NOT NULL,
  `AccNo` int(15) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountholders`
--

INSERT INTO `accountholders` (`pin_no`, `AccNo`, `Name`, `Balance`) VALUES
(1176, 6119343, 'Mukesh', 52500),
(1156, 6192884, 'Kamalesh', 5500),
(1149, 6851111, 'Jaikamth', 10100),
(1173, 60113232, 'Manoj', 24800),
(1163, 61113232, 'Krishna', 2800),
(1165, 61122121, 'Lakshmanan', 22000),
(1175, 61122133, 'Mohanraj', 99000),
(1195, 61128763, 'Sanjay', 9900),
(1185, 61128993, 'Prasanna', 9900),
(1196, 61134499, 'Sabari', 5200),
(1166, 61192884, 'Lenin', 52500),
(1132, 61224007, 'Dhana', 15000),
(1122, 61224737, 'Balaji', 15000),
(1162, 61233407, 'Kishore', 6500),
(1152, 61234407, 'Prabhu', 15000),
(1174, 61234411, 'Mohan', 99000),
(1171, 61433837, 'Manohar', 12100),
(1125, 61634853, 'Ashwin', 12000),
(1155, 61642121, 'Karankumar', 43000),
(1145, 61643233, 'Imran', 4400),
(1164, 61834411, 'Rajesh', 87000),
(1116, 61874469, 'Aravind', 0),
(1124, 61874779, 'Anbu', 23000),
(1154, 61879111, 'Kalisha', 24000),
(1144, 61879800, 'Hari', 2400),
(1134, 61879879, 'Dharani', 24000),
(1146, 61923234, 'Harish', 130000),
(1136, 61923777, 'Dinesh', 130000),
(1161, 61923837, 'Jaishankar', 98100),
(1151, 61924343, 'Jeeva', 9800),
(1121, 61924523, 'Balachandar', 14000),
(1113, 61924534, 'karthick', 14000),
(1141, 61924622, 'Gopi', 1400000),
(1131, 61924663, 'Deepak', 14000),
(1153, 61933232, 'John', 18000),
(1123, 61934443, 'Ajith', 12000),
(1118, 61934527, 'Arivu', 25000),
(1117, 61934563, 'Akash', 12000),
(1143, 61934667, 'Guna', 12040),
(1114, 61934737, 'Arun', 15000),
(1115, 61934843, 'Anand', 12000),
(1111, 61938213, 'selva', 15000),
(1126, 61938777, 'Avinash', 13000),
(1193, 63237232, 'Ranjith', 14800),
(1182, 63333434, 'Pandiyan', 13500),
(1183, 63473232, 'Prabhu', 4800),
(1192, 63783434, 'Rakesh', 89000),
(1112, 63821200, 'kumar', 6000),
(1140, 64831212, 'Ganesh', 23240),
(1160, 64842222, 'Kiran', 48000),
(1109, 65434784, 'Raghu', 9000),
(1108, 65771234, 'Sunil', 15000),
(1199, 66131220, 'Vicky', 30000),
(1189, 66333122, 'Selvakumar', 175000),
(1197, 67029833, 'Thaniga', 12300),
(1103, 67543232, 'Venkat', 34000),
(1147, 67821624, 'Iyyappan', 1500),
(1157, 67822324, 'Karthick', 13300),
(1119, 67834346, 'Bala', 15000),
(1177, 67897674, 'Naveen', 33300),
(1127, 67898564, 'Babu', 150000),
(1167, 67899324, 'Lokesh', 89300),
(1194, 68034411, 'Raj', 90600),
(1138, 68115634, 'Elango', 20000),
(1128, 68195634, 'Barath', 20000),
(1148, 68225634, 'Jagan', 20000),
(1158, 68225674, 'Karhtikeyan', 20220),
(1168, 68228974, 'Loganathan', 12220),
(1159, 68511110, 'Kaviarasan', 10000),
(1169, 68511220, 'Magesh', 13300),
(1139, 68554111, 'Ganapathy', 21000),
(1129, 68554754, 'Britto', 21000),
(1170, 68742222, 'Mani', 128000),
(1180, 68842222, 'Nirmal', 76000),
(1101, 68849662, 'Raghul', 9000),
(1190, 68849872, 'Raghul', 9000),
(1188, 69828233, 'Purshoth', 17020),
(1178, 69828974, 'Nandha', 87020),
(1120, 88192334, 'Baskar', 20000),
(1105, 563423784, 'Varadharajan', 5600),
(1186, 611344448, 'Prasanth', 5200),
(1142, 612242107, 'Govind', 1500),
(1172, 612333434, 'Mariselvan', 3500),
(1181, 614546537, 'Parthipan', 31100),
(1191, 614896537, 'Ragu', 1200),
(1135, 616434853, 'Dilli', 134400),
(1133, 619344667, 'Dhanush', 12000),
(1110, 639343847, 'Suresh', 4500),
(1104, 645573432, 'Vasanth', 7800),
(1130, 648343489, 'Chithu', 13000),
(1150, 648456212, 'Jayakumar', 45000),
(1107, 654433999, 'Surendar', 1000),
(1179, 663331220, 'Nimmellan', 75000),
(1102, 673943463, 'Vicky', 23000),
(1137, 678231164, 'Domesh', 150000),
(1187, 678929833, 'Prem', 12300),
(1184, 688234411, 'Prakash', 9000),
(1198, 698228233, 'Udhaya', 17000),
(1106, 783443111, 'Suriya', 8700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountholders`
--
ALTER TABLE `accountholders`
  ADD PRIMARY KEY (`AccNo`),
  ADD UNIQUE KEY `pin_no` (`pin_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
