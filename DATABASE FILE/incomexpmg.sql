-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2021 at 08:15 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incomexpmg`
--

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `cre_id` int(11) NOT NULL,
  `cus_id` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` double NOT NULL,
  `discription` varchar(250) NOT NULL,
  `dis_cat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`cre_id`, `cus_id`, `date`, `amount`, `discription`, `dis_cat`) VALUES
(3, 17, '2021-05-06', 26500, 'Money returned with interest', 'badge-gradient-success'),
(4, 6, '2021-05-03', 65000, 'Early Dates Test', 'badge-gradient-success');

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE `debit` (
  `deb_id` int(11) NOT NULL,
  `cus_id` int(250) NOT NULL,
  `amount` double NOT NULL,
  `discription` varchar(250) NOT NULL,
  `category_id` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `dis_cat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debit`
--

INSERT INTO `debit` (`deb_id`, `cus_id`, `amount`, `discription`, `category_id`, `date`, `dis_cat`) VALUES
(1, 6, 27, '', 'Dinner', '2018-06-06', 'badge-gradient-warning'),
(2, 7, 27, '', '', '2018-06-06', 'badge-gradient-warning'),
(3, 9, 70, '', '', '2018-06-06', 'badge-gradient-warning'),
(4, 10, 70, '', '', '2018-06-06', 'badge-gradient-warning'),
(5, 11, 80, '', 'Dinner', '2018-06-06', 'badge-gradient-warning'),
(9, 9, 24, '', 'Break Fast', '2018-06-07', 'badge-gradient-warning'),
(10, 10, 24, '', 'Break Fast', '2018-06-07', 'badge-gradient-warning'),
(11, 15, 24, '', 'Break Fast', '2018-06-07', 'badge-gradient-warning'),
(12, 9, 20, '', 'Meals', '2018-06-07', 'badge-gradient-warning'),
(13, 10, 20, '', 'Meals', '2018-06-07', 'badge-gradient-warning'),
(14, 10, 20, '', 'Meals', '2018-06-07', 'badge-gradient-warning'),
(15, 9, 40, '', '', '2018-06-10', 'badge-gradient-warning'),
(16, 9, 50, '', '', '2018-06-10', 'badge-gradient-warning'),
(17, 7, 5600, 'lend', 'Others', '2021-05-04', 'badge-gradient-warning'),
(20, 16, 13000, 'Money Lend (for some days)', 'Lend', '2021-05-06', 'badge-gradient-warning'),
(21, 11, 11560, 'Monthly Rent', 'Rent', '2021-05-06', 'badge-gradient-warning'),
(22, 9, 37000, 'Other', 'Others', '2021-05-07', 'badge-gradient-warning');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `items` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recep`
--

CREATE TABLE `recep` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `recep`
--

INSERT INTO `recep` (`id`, `name`, `mobile`, `gender`, `city`, `address`, `date`) VALUES
(6, 'Clint E Olson\n', '8281791932', 'Male', 'Los Angeles', '3576  Parkview Drive', '2021-05-06 16:27:58.752509'),
(7, 'Cody C Neal\n', '9847070268', 'Male', 'Summerville', '3420  Camden Place', '2021-05-06 16:28:21.600491'),
(9, 'Kathleen Yaeger\n', '6102458880', 'Female', 'Boca Raton', '1123  Poplar Lane', '2021-05-06 16:30:42.438233'),
(10, 'Lucas Cowden\n', '7530000150', 'Male', 'Saint Louis', '867  Ash Avenue', '2021-05-06 16:29:16.602935'),
(11, 'James Martinez', '1672223640', 'Male', 'NORMAN', '1672  Radio Park Drive', '2021-05-06 16:31:12.654449'),
(15, 'Simone Mullane', '6016969696', 'Female', 'Bridgeport', '935  Davis Court', '2021-05-06 16:30:04.548740'),
(16, 'Daniel Lewis', '7506970360', 'Male', 'Burr Ridge', '898 Fraggle Drive', '2021-05-06 18:10:26.136464'),
(17, 'Tommie Monroe', '7102588800', 'Male', 'Lewiston', '4369 Elm Drive', '2021-05-06 18:12:24.209723');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `hash_key` varchar(200) NOT NULL,
  `account_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `created`, `modified`, `status`, `hash_key`, `account_status`) VALUES
(1, 'Angel Jude Suarez', '482C811DA5D5B4BC6D497FFA98491E38', 'suarez081119@gmail.com', '2018-06-01 00:00:00', '2018-06-01 00:00:00', 1, '', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`cre_id`);

--
-- Indexes for table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`deb_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recep`
--
ALTER TABLE `recep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `cre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `debit`
--
ALTER TABLE `debit`
  MODIFY `deb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recep`
--
ALTER TABLE `recep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
