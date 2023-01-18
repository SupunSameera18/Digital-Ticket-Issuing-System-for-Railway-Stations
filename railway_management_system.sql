-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 11:57 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(11) NOT NULL,
  `NIC` varchar(25) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Mobile` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `NIC`, `First_Name`, `Last_Name`, `Mobile`) VALUES
(1, '123456789V', 'Lakindu', 'Oshada', 761234567),
(2, '971972840V', 'Supun', 'Sameera', 769923494),
(3, '987654321V', 'Anuradha', 'Dhananjaya', 711122334),
(4, '970840254V', 'Sandun', 'Madhumal', 758895621);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `Seat_ID` int(2) NOT NULL,
  `Status` varchar(11) NOT NULL,
  `Class` varchar(25) NOT NULL,
  `Price_Multiplier` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`Seat_ID`, `Status`, `Class`, `Price_Multiplier`) VALUES
(1, 'Booked', 'First Class', 3),
(2, 'Free', 'First Class', 3),
(3, 'Booked', 'First Class', 3),
(4, 'Free', 'First Class', 3),
(5, 'Free', 'First Class', 3),
(6, 'Free', 'Second Class', 2),
(7, 'Free', 'Second Class', 2),
(8, 'Free', 'Second Class', 2),
(9, 'Free', 'Second Class', 2),
(10, 'Booked', 'Second Class', 2),
(11, 'Free', 'Second Class', 2),
(12, 'Booked', 'Second Class', 2),
(13, 'Booked', 'Second Class', 2),
(14, 'Free', 'Second Class', 2),
(15, 'Free', 'Second Class', 2),
(16, 'Free', 'Third Class', 1),
(17, 'Free', 'Third Class', 1),
(18, 'Free', 'Third Class', 1),
(19, 'Free', 'Third Class', 1),
(20, 'Free', 'Third Class', 1),
(21, 'Free', 'Third Class', 1),
(22, 'Free', 'Third Class', 1),
(23, 'Free', 'Third Class', 1),
(24, 'Free', 'Third Class', 1),
(25, 'Free', 'Third Class', 1),
(26, 'Free', 'Third Class', 1),
(27, 'Free', 'Third Class', 1),
(28, 'Booked', 'Third Class', 1),
(29, 'Free', 'Third Class', 1),
(30, 'Free', 'Third Class', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `Station_ID` int(3) NOT NULL,
  `Station_Name` varchar(255) NOT NULL,
  `Distance` varchar(10) NOT NULL,
  `Estimated_Travel_Time` varchar(10) NOT NULL,
  `Price` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`Station_ID`, `Station_Name`, `Distance`, `Estimated_Travel_Time`, `Price`) VALUES
(1, 'KKS', '90 KM', '1 hr 45 mi', 80),
(2, 'Jaffna', '75 KM', '1 hr 30 mi', 70),
(3, 'vavuniya', '70 KM', '1 hr 15 mi', 60),
(4, 'Anuradhapura', '125 KM', '2 hr 20 mi', 130),
(5, 'Kurunegala', '230 KM', '4 hr 15 mi', 200),
(6, 'Colombo', '350 KM', '6 hr 15 mi', 320);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `Ticket_Number` int(5) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Ticket_Type` varchar(15) NOT NULL,
  `Destination_Station_ID` int(3) NOT NULL,
  `Train_ID` int(3) NOT NULL,
  `Seat_ID` int(3) NOT NULL,
  `Trip_ID` int(3) NOT NULL,
  `Date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`Ticket_Number`, `Customer_ID`, `Ticket_Type`, `Destination_Station_ID`, `Train_ID`, `Seat_ID`, `Trip_ID`, `Date`) VALUES
(1, 1, 'Adult', 5, 2, 10, 3, '29-Jan-2022'),
(2, 2, 'Adult', 2, 4, 13, 4, '28-Jan-2022'),
(3, 1, 'Adult', 1, 4, 12, 4, '27-Jan-2022'),
(4, 3, 'Adult', 1, 3, 1, 2, '30-Jan-2022'),
(5, 4, 'Adult', 6, 3, 28, 5, '27-Jan-2022'),
(6, 1, 'Adult', 5, 4, 3, 7, '31-Jan-2022');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `Train_ID` int(3) NOT NULL,
  `Train_Name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`Train_ID`, `Train_Name`) VALUES
(1, 'Train A'),
(2, 'Train B'),
(3, 'Train C'),
(4, 'Train D');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Transaction_ID` int(11) NOT NULL,
  `Ticket_Number` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Date_Issued` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Transaction_ID`, `Ticket_Number`, `Customer_ID`, `Price`, `Date_Issued`) VALUES
(1, 1, 1, 400, '27-Jan-2022'),
(2, 2, 2, 140, '27-Jan-2022'),
(3, 3, 1, 160, '27-Jan-2022'),
(4, 4, 3, 240, '27-Jan-2022'),
(5, 5, 4, 320, '27-Jan-2022'),
(6, 6, 1, 600, '27-Jan-2022');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `Trip_ID` int(3) NOT NULL,
  `Train_ID` int(3) NOT NULL,
  `Arrival_Time` varchar(11) NOT NULL,
  `Depature_Time` varchar(11) NOT NULL,
  `Start_Station_ID` int(3) NOT NULL,
  `End_Station_ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`Trip_ID`, `Train_ID`, `Arrival_Time`, `Depature_Time`, `Start_Station_ID`, `End_Station_ID`) VALUES
(1, 1, '12.00 A.M.', '12.15 A.M.', 1, 6),
(2, 3, '03.00 A.M.', '03.10 A.M.', 6, 1),
(3, 2, '06.00 A.M.', '06.05 A.M.', 1, 6),
(4, 4, '09.00 A.M.', '09.10 A.M.', 6, 1),
(5, 3, '12.10 P.M.', '12.15 P.M.', 1, 6),
(6, 1, '03.15 P.M.', '03.20 P.M.', 6, 1),
(7, 4, '06.00 P.M.', '06.15 P.M.', 1, 6),
(8, 2, '09.10 P.M.', '09.20 P.M.', 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`Seat_ID`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`Station_ID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`Ticket_Number`),
  ADD KEY `Train_ID` (`Train_ID`),
  ADD KEY `Seat_ID` (`Seat_ID`),
  ADD KEY `Destination_Station_ID` (`Destination_Station_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Trip_ID` (`Trip_ID`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`Train_ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Transaction_ID`),
  ADD KEY `Ticket_Number` (`Ticket_Number`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`Trip_ID`),
  ADD KEY `End_Station_ID` (`End_Station_ID`),
  ADD KEY `Start_Station_ID` (`Start_Station_ID`),
  ADD KEY `Train_ID` (`Train_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `Seat_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `Station_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `Ticket_Number` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `Train_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Transaction_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `Trip_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`Train_ID`) REFERENCES `trains` (`Train_ID`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`Seat_ID`) REFERENCES `seats` (`Seat_ID`),
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`Destination_Station_ID`) REFERENCES `stations` (`Station_ID`),
  ADD CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  ADD CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`Trip_ID`) REFERENCES `trips` (`Trip_ID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`Ticket_Number`) REFERENCES `tickets` (`Ticket_Number`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`);

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`End_Station_ID`) REFERENCES `stations` (`Station_ID`),
  ADD CONSTRAINT `trips_ibfk_2` FOREIGN KEY (`Start_Station_ID`) REFERENCES `stations` (`Station_ID`),
  ADD CONSTRAINT `trips_ibfk_3` FOREIGN KEY (`Train_ID`) REFERENCES `trains` (`Train_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
