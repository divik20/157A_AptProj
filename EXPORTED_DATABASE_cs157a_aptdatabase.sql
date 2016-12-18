-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2016 at 07:12 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs157a_aptdatabase`
--
CREATE DATABASE IF NOT EXISTS `cs157a_aptdatabase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cs157a_aptdatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `name` varchar(255) DEFAULT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`name`, `longitude`, `latitude`, `city`, `state`) VALUES
('The Fillmore Center', -122.432936, 37.783028, 'San Jose', 'CA'),
('NEMA', -122.417332, 37.775828, 'Santa Barbara', 'CA'),
('One Henry Adams', -122.403348, 37.769628, 'Mountain View', 'CA'),
('SoMa Square', -122.397709, 37.783823, 'Foster City', 'CA'),
('Waterbend', -122.395847, 37.724955, 'Los Angeles', 'CA'),
('Jasper', -122.394076, 37.785686, 'Pleasanton', 'CA'),
('340 Fremont', -122.393149, 37.787187, 'Hayward', 'CA'),
('Carmel Rincon', -122.392196, 37.791744, 'Los Angeles', 'CA'),
('901 Jefferson', -122.276997, 37.802747, 'Hayward', 'CA'),
('Allegro at Jack London Square', -122.270396, 37.794821, 'Oakland', 'CA'),
('Mason at Hive', -122.267299, 37.813227, 'San Franscisco', 'CA'),
('The Nook', -122.264003, 37.813742, 'Milpitas', 'CA'),
('Merritt on 3rd', -122.25649, 37.796198, 'Foster City', 'CA'),
('362 Jayne', -122.254587, 37.813796, 'Berkley', 'CA'),
('414 Grand Ave', -122.253375, 37.808992, 'San Luis Obispo', 'CA'),
('Lion Creek Crossings', -122.19759, 37.756431, 'Bayfair', 'CA'),
('Vista 99', -121.957171, 37.412249, 'San Jose', 'CA'),
('Domain', -121.955257, 37.414793, 'Pleasanton', 'CA'),
('Misora', -121.946708, 37.319719, 'San Jose', 'CA'),
('Stoneridge', -121.922814, 37.693627, 'San Jose', 'CA'),
('The Kensington', -121.895476, 37.656106, 'Foster City', 'CA'),
('Anton Hacienda', -121.886577, 37.68814, 'Fremont', 'CA'),
('Park Hacienda', -121.886508, 37.694939, 'Foster City', 'CA'),
('Civic Square', -121.883294, 37.657574, 'Pleasanton', 'CA'),
('Foundry Commons', -121.876554, 37.325088, 'Milpitas', 'CA'),
('Avana Pleasanton', -121.876086, 37.675482, 'San Jose', 'CA'),
('Gatewood Apartments', -121.872231, 37.68947, 'San Franscisco', 'CA'),
('LINQ Apartment Homes', -121.86711, 37.366157, 'Fremont', 'CA'),
('Vintage', -121.85799, 37.669872, 'San Jose', 'CA'),
('Waterstone', -121.847825, 37.273842, 'Mountain View', 'CA'),
('Sagemark', -121.844647, 37.274531, 'Mountain View', 'CA'),
('Avana Skyway', -121.835176, 37.26771, 'Pleasanton', 'CA'),
('Madonna Road Apartments', -120.693935, 35.256033, 'San Diego', 'CA'),
('El Tigre Apartments', -120.692991, 35.257462, 'Foster City', 'CA'),
('De Tolosa Ranch Apartments', -120.691599, 35.255353, 'San Diego', 'CA'),
('Galleon Way Apartments', -120.691491, 35.261131, 'Redwood City', 'CA'),
('Rancho Obispo Apartments', -120.691034, 35.254712, 'San Diego', 'CA'),
('Puerta Del Sol Apartments', -120.677635, 35.24125, 'Berkley', 'CA'),
('Valencia Apartments', -120.674898, 35.292733, 'Bayfair', 'CA'),
('Fairview Apartments', -120.652265, 35.280144, 'Oakland', 'CA');

-- --------------------------------------------------------

--
-- Table structure for table `apthasschool`
--

CREATE TABLE `apthasschool` (
  `aptLongitude` double NOT NULL,
  `aptLatitude` double NOT NULL,
  `schoolLongitude` double NOT NULL,
  `schoolLatitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apthasstore`
--

CREATE TABLE `apthasstore` (
  `aptLongitude` double NOT NULL,
  `aptLatitude` double NOT NULL,
  `storeLongitude` double NOT NULL,
  `storeLatitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apthasstore`
--

INSERT INTO `apthasstore` (`aptLongitude`, `aptLatitude`, `storeLongitude`, `storeLatitude`) VALUES
(-122.432936, 37.783028, -122.432936, 47.783028),
(-122.417332, 37.775828, -112.417332, 31.775828),
(-122.403348, 37.769628, -112.403348, 37.769628),
(-122.397709, 37.783823, -112.397709, 37.783823),
(-122.395847, 37.724955, -112.395847, 37.724955),
(-122.394076, 37.785686, -132.394076, 32.785686),
(-122.393149, 37.787187, -112.393149, 37.787187),
(-122.392196, 37.791744, -127.392196, 39.791744),
(-122.276997, 37.802747, -117.276997, 37.802747),
(-122.276997, 37.802747, -113.276997, 37.802747),
(-122.276997, 37.802747, -112.276997, 37.802747),
(-122.270396, 37.794821, -122.270396, 38.794821),
(-122.270396, 37.794821, -122.270396, 39.794821),
(-122.270396, 37.794821, -122.270396, 39.813227),
(-122.270396, 37.794821, -113.270396, 37.794821),
(-122.267299, 37.813227, -128.267299, 37.813227),
(-122.267299, 37.813227, -127.267299, 37.813227),
(-122.267299, 37.813227, -123.267299, 37.813227),
(-122.264003, 37.813742, -122.264003, 43.813742),
(-122.264003, 37.813742, -122.264003, 44.813742),
(-122.264003, 37.813742, -122.264003, 45.813742),
(-122.25649, 37.796198, -115.25649, 37.796198),
(-122.25649, 37.796198, -114.25649, 37.796198),
(-122.254587, 37.813796, -132.254587, 37.813796),
(-122.254587, 37.813796, -131.254587, 37.813796),
(-122.254587, 37.813796, -129.254587, 37.813796),
(-122.254587, 37.813796, -119.254587, 37.813796),
(-122.253375, 37.808992, -122.253375, 40.808992),
(-122.253375, 37.808992, -122.253375, 44.808992),
(-122.253375, 37.808992, -122.253375, 46.808992),
(-122.19759, 37.756431, -122.19759, 39.756431),
(-122.19759, 37.756431, -122.19759, 40.756431),
(-122.19759, 37.756431, -122.19759, 41.756431),
(-121.957171, 37.412249, -131.957171, 37.412249),
(-121.957171, 37.412249, -130.957171, 37.412249),
(-121.957171, 37.412249, -129.957171, 37.412249),
(-121.957171, 37.412249, -128.957171, 37.412249),
(-121.957171, 37.412249, -127.957171, 37.412249),
(-121.957171, 37.412249, -126.957171, 37.412249),
(-121.957171, 37.412249, -125.957171, 37.412249),
(-121.955257, 37.414793, -121.955257, 47.414793),
(-121.955257, 37.414793, -120.955257, 49.414793),
(-121.955257, 37.414793, -119.955257, 49.414793),
(-121.955257, 37.414793, -118.955257, 49.414793),
(-121.955257, 37.414793, -117.955257, 50.41479),
(-121.955257, 37.414793, -116.955257, 50.41479),
(-121.946708, 37.319719, -120.946708, 37.319719),
(-121.922814, 37.693627, -120.922814, 37.693627),
(-121.922814, 37.693627, -119.922814, 37.693627),
(-121.922814, 37.693627, -118.922814, 37.693627),
(-121.895476, 37.656106, -121.895476, 45.656106),
(-121.895476, 37.656106, -121.895476, 46.656106),
(-121.895476, 37.656106, -120.895476, 46.656106),
(-121.886577, 37.68814, -119.886577, 37.68814),
(-121.886577, 37.68814, -118.886577, 37.68814),
(-121.886577, 37.68814, -112.886577, 37.68814),
(-121.886508, 37.694939, -121.886508, 38.694939),
(-121.886508, 37.694939, -121.886508, 39.694939),
(-121.883294, 37.657574, -117.883294, 37.657574),
(-121.883294, 37.657574, -116.883294, 37.657574),
(-121.883294, 37.657574, -115.883294, 37.657574),
(-121.876554, 37.325088, -128.876554, 37.325088),
(-121.876554, 37.325088, -123.876554, 37.325088),
(-121.876554, 37.325088, -122.876554, 37.325088),
(-121.876086, 37.675482, -117.876086, 37.675482),
(-121.876086, 37.675482, -111.876086, 37.675482),
(-121.872231, 37.68947, -121.872231, 40.68947),
(-121.872231, 37.68947, -121.872231, 43.68947),
(-121.872231, 37.68947, -121.872231, 44.68947),
(-121.86711, 37.366157, -119.86711, 47.366157),
(-121.86711, 37.366157, -118.86711, 41.366157),
(-121.86711, 37.366157, -117.86711, 40.366157),
(-121.85799, 37.669872, -131.85799, 37.669872),
(-121.85799, 37.669872, -111.85799, 47.669872),
(-121.847825, 37.273842, -121.847825, 47.273842),
(-121.844647, 37.274531, -111.844647, 37.274531),
(-121.835176, 37.26771, -131.835176, 47.26771),
(-121.835176, 37.26771, -126.835176, 42.26771),
(-121.835176, 37.26771, -111.835176, 37.26771),
(-120.693935, 35.256033, -129.693935, 35.256033),
(-120.693935, 35.256033, -123.693935, 35.256033),
(-120.693935, 35.256033, -101.693935, 35.256033),
(-120.692991, 35.257462, -130.261131, 35.257462),
(-120.691599, 35.255353, -127.691599, 35.255353),
(-120.691599, 35.255353, -125.691599, 35.255353),
(-120.691491, 35.261131, -120.691491, 40.261131),
(-120.691491, 35.261131, -120.691491, 41.261131),
(-120.691034, 35.254712, -120.691034, 25.254712),
(-120.691034, 35.254712, -120.691034, 45.254712),
(-120.677635, 35.24125, -120.677635, 30.24125),
(-120.677635, 35.24125, -120.677635, 43.24125),
(-120.677635, 35.24125, -120.677635, 45.24125),
(-120.674898, 35.292733, -110.674898, 35.292733),
(-120.652265, 35.280144, -125.652265, 35.280144);

-- --------------------------------------------------------

--
-- Table structure for table `apthassuites`
--

CREATE TABLE `apthassuites` (
  `aptLongitude` double DEFAULT NULL,
  `aptLatitude` double DEFAULT NULL,
  `suiteId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apthassuites`
--

INSERT INTO `apthassuites` (`aptLongitude`, `aptLatitude`, `suiteId`) VALUES
(-122.432936, 37.783028, 40),
(-122.432936, 37.783028, 80),
(-122.432936, 37.783028, 120),
(-122.432936, 37.783028, 121),
(-122.432936, 37.783028, 122),
(-122.432936, 37.783028, 123),
(-122.417332, 37.775828, 38),
(-122.417332, 37.775828, 78),
(-122.417332, 37.775828, 118),
(-122.403348, 37.769628, 35),
(-122.403348, 37.769628, 75),
(-122.403348, 37.769628, 115),
(-122.397709, 37.783823, 34),
(-122.397709, 37.783823, 74),
(-122.397709, 37.783823, 114),
(-122.395847, 37.724955, 37),
(-122.395847, 37.724955, 77),
(-122.395847, 37.724955, 117),
(-122.394076, 37.785686, 39),
(-122.394076, 37.785686, 79),
(-122.394076, 37.785686, 119),
(-122.393149, 37.787187, 33),
(-122.393149, 37.787187, 73),
(-122.393149, 37.787187, 113),
(-122.392196, 37.791744, 36),
(-122.392196, 37.791744, 76),
(-122.392196, 37.791744, 116),
(-122.276997, 37.802747, 21),
(-122.276997, 37.802747, 61),
(-122.276997, 37.802747, 101),
(-122.270396, 37.794821, 18),
(-122.270396, 37.794821, 58),
(-122.270396, 37.794821, 98),
(-122.267299, 37.813227, 19),
(-122.267299, 37.813227, 59),
(-122.267299, 37.813227, 99),
(-122.264003, 37.813742, 20),
(-122.264003, 37.813742, 60),
(-122.264003, 37.813742, 100),
(-122.25649, 37.796198, 17),
(-122.25649, 37.796198, 57),
(-122.25649, 37.796198, 97),
(-122.254587, 37.813796, 23),
(-122.254587, 37.813796, 63),
(-122.254587, 37.813796, 103),
(-122.253375, 37.808992, 24),
(-122.253375, 37.808992, 64),
(-122.253375, 37.808992, 104),
(-122.19759, 37.756431, 22),
(-122.19759, 37.756431, 62),
(-122.19759, 37.756431, 102),
(-121.957171, 37.412249, 1),
(-121.957171, 37.412249, 41),
(-121.957171, 37.412249, 81),
(-121.955257, 37.414793, 2),
(-121.955257, 37.414793, 42),
(-121.955257, 37.414793, 82),
(-121.946708, 37.319719, 6),
(-121.946708, 37.319719, 46),
(-121.946708, 37.319719, 86),
(-121.922814, 37.693627, 15),
(-121.922814, 37.693627, 55),
(-121.922814, 37.693627, 95),
(-121.895476, 37.656106, 14),
(-121.895476, 37.656106, 54),
(-121.895476, 37.656106, 94),
(-121.886577, 37.68814, 11),
(-121.886577, 37.68814, 51),
(-121.886577, 37.68814, 91),
(-121.886508, 37.694939, 12),
(-121.886508, 37.694939, 52),
(-121.886508, 37.694939, 92),
(-121.883294, 37.657574, 16),
(-121.883294, 37.657574, 56),
(-121.883294, 37.657574, 96),
(-121.876554, 37.325088, 4),
(-121.876554, 37.325088, 44),
(-121.876554, 37.325088, 84),
(-121.876086, 37.675482, 10),
(-121.876086, 37.675482, 50),
(-121.876086, 37.675482, 90),
(-121.872231, 37.68947, 13),
(-121.872231, 37.68947, 53),
(-121.872231, 37.68947, 93),
(-121.86711, 37.366157, 3),
(-121.86711, 37.366157, 43),
(-121.86711, 37.366157, 83),
(-121.85799, 37.669872, 9),
(-121.85799, 37.669872, 49),
(-121.85799, 37.669872, 89),
(-121.847825, 37.273842, 5),
(-121.847825, 37.273842, 45),
(-121.847825, 37.273842, 85),
(-121.844647, 37.274531, 7),
(-121.844647, 37.274531, 47),
(-121.844647, 37.274531, 87),
(-121.835176, 37.26771, 8),
(-121.835176, 37.26771, 48),
(-121.835176, 37.26771, 88),
(-120.693935, 35.256033, 27),
(-120.693935, 35.256033, 67),
(-120.693935, 35.256033, 107),
(-120.692991, 35.257462, 29),
(-120.692991, 35.257462, 69),
(-120.692991, 35.257462, 109),
(-120.691599, 35.255353, 25),
(-120.691599, 35.255353, 65),
(-120.691599, 35.255353, 105),
(-120.691491, 35.261131, 30),
(-120.691491, 35.261131, 70),
(-120.691491, 35.261131, 110),
(-120.691034, 35.254712, 26),
(-120.691034, 35.254712, 66),
(-120.691034, 35.254712, 106),
(-120.677635, 35.24125, 28),
(-120.677635, 35.24125, 68),
(-120.677635, 35.24125, 108),
(-120.674898, 35.292733, 32),
(-120.674898, 35.292733, 72),
(-120.674898, 35.292733, 112),
(-120.652265, 35.280144, 31),
(-120.652265, 35.280144, 71),
(-120.652265, 35.280144, 111);

-- --------------------------------------------------------

--
-- Table structure for table `apthastrans`
--

CREATE TABLE `apthastrans` (
  `aptLongitude` double NOT NULL,
  `aptLatitude` double NOT NULL,
  `modeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apthastrans`
--

INSERT INTO `apthastrans` (`aptLongitude`, `aptLatitude`, `modeName`) VALUES
(-122.432936, 37.783028, 'ACE\r'),
(-122.432936, 37.783028, 'BART\r'),
(-122.432936, 37.783028, 'CalTrain\r'),
(-122.432936, 37.783028, 'VTA\r'),
(-122.417332, 37.775828, 'ACE\r'),
(-122.417332, 37.775828, 'BART\r'),
(-122.417332, 37.775828, 'CalTrain\r'),
(-122.417332, 37.775828, 'VTA\r'),
(-122.403348, 37.769628, 'ACE\r'),
(-122.403348, 37.769628, 'BART\r'),
(-122.403348, 37.769628, 'CalTrain\r'),
(-122.403348, 37.769628, 'VTA\r'),
(-122.397709, 37.783823, 'ACE\r'),
(-122.397709, 37.783823, 'BART\r'),
(-122.397709, 37.783823, 'CalTrain\r'),
(-122.397709, 37.783823, 'VTA\r'),
(-122.395847, 37.724955, 'ACE\r'),
(-122.395847, 37.724955, 'BART\r'),
(-122.395847, 37.724955, 'CalTrain\r'),
(-122.395847, 37.724955, 'VTA\r'),
(-122.394076, 37.785686, 'ACE\r'),
(-122.394076, 37.785686, 'BART\r'),
(-122.394076, 37.785686, 'CalTrain\r'),
(-122.394076, 37.785686, 'VTA\r'),
(-122.393149, 37.787187, 'ACE\r'),
(-122.393149, 37.787187, 'BART\r'),
(-122.393149, 37.787187, 'CalTrain\r'),
(-122.393149, 37.787187, 'VTA\r'),
(-122.392196, 37.791744, 'ACE\r'),
(-122.392196, 37.791744, 'BART\r'),
(-122.392196, 37.791744, 'CalTrain\r'),
(-122.392196, 37.791744, 'VTA\r'),
(-122.276997, 37.802747, 'ACE\r'),
(-122.276997, 37.802747, 'BART\r'),
(-122.276997, 37.802747, 'CalTrain\r'),
(-122.276997, 37.802747, 'VTA\r'),
(-122.270396, 37.794821, 'ACE\r'),
(-122.270396, 37.794821, 'BART\r'),
(-122.270396, 37.794821, 'CalTrain\r'),
(-122.270396, 37.794821, 'VTA\r'),
(-122.267299, 37.813227, 'ACE\r'),
(-122.267299, 37.813227, 'BART\r'),
(-122.267299, 37.813227, 'CalTrain\r'),
(-122.267299, 37.813227, 'VTA\r'),
(-122.264003, 37.813742, 'ACE\r'),
(-122.264003, 37.813742, 'BART\r'),
(-122.264003, 37.813742, 'CalTrain\r'),
(-122.264003, 37.813742, 'VTA\r'),
(-122.25649, 37.796198, 'ACE\r'),
(-122.25649, 37.796198, 'BART\r'),
(-122.25649, 37.796198, 'CalTrain\r'),
(-122.25649, 37.796198, 'VTA\r'),
(-122.254587, 37.813796, 'ACE\r'),
(-122.254587, 37.813796, 'BART\r'),
(-122.254587, 37.813796, 'CalTrain\r'),
(-122.254587, 37.813796, 'VTA\r'),
(-122.253375, 37.808992, 'ACE\r'),
(-122.253375, 37.808992, 'BART\r'),
(-122.253375, 37.808992, 'CalTrain\r'),
(-122.253375, 37.808992, 'VTA\r'),
(-122.19759, 37.756431, 'ACE\r'),
(-122.19759, 37.756431, 'BART\r'),
(-122.19759, 37.756431, 'CalTrain\r'),
(-122.19759, 37.756431, 'VTA\r'),
(-121.957171, 37.412249, 'ACE\r'),
(-121.957171, 37.412249, 'BART\r'),
(-121.957171, 37.412249, 'CalTrain\r'),
(-121.957171, 37.412249, 'VTA\r'),
(-121.955257, 37.414793, 'ACE\r'),
(-121.955257, 37.414793, 'BART\r'),
(-121.955257, 37.414793, 'CalTrain\r'),
(-121.955257, 37.414793, 'VTA\r'),
(-121.946708, 37.319719, 'ACE\r'),
(-121.946708, 37.319719, 'BART\r'),
(-121.946708, 37.319719, 'CalTrain\r'),
(-121.946708, 37.319719, 'VTA\r'),
(-121.922814, 37.693627, 'ACE\r'),
(-121.922814, 37.693627, 'BART\r'),
(-121.922814, 37.693627, 'CalTrain\r'),
(-121.922814, 37.693627, 'VTA\r'),
(-121.895476, 37.656106, 'ACE\r'),
(-121.895476, 37.656106, 'BART\r'),
(-121.895476, 37.656106, 'CalTrain\r'),
(-121.895476, 37.656106, 'VTA\r'),
(-121.886577, 37.68814, 'ACE\r'),
(-121.886577, 37.68814, 'BART\r'),
(-121.886577, 37.68814, 'CalTrain\r'),
(-121.886577, 37.68814, 'VTA\r'),
(-121.886508, 37.694939, 'ACE\r'),
(-121.886508, 37.694939, 'BART\r'),
(-121.886508, 37.694939, 'CalTrain\r'),
(-121.886508, 37.694939, 'VTA\r'),
(-121.883294, 37.657574, 'ACE\r'),
(-121.883294, 37.657574, 'BART\r'),
(-121.883294, 37.657574, 'CalTrain\r'),
(-121.883294, 37.657574, 'VTA\r'),
(-121.876554, 37.325088, 'ACE\r'),
(-121.876554, 37.325088, 'BART\r'),
(-121.876554, 37.325088, 'CalTrain\r'),
(-121.876554, 37.325088, 'VTA\r'),
(-121.876086, 37.675482, 'ACE\r'),
(-121.876086, 37.675482, 'BART\r'),
(-121.876086, 37.675482, 'CalTrain\r'),
(-121.876086, 37.675482, 'VTA\r'),
(-121.872231, 37.68947, 'ACE\r'),
(-121.872231, 37.68947, 'BART\r'),
(-121.872231, 37.68947, 'CalTrain\r'),
(-121.872231, 37.68947, 'VTA\r'),
(-121.86711, 37.366157, 'ACE\r'),
(-121.86711, 37.366157, 'BART\r'),
(-121.86711, 37.366157, 'CalTrain\r'),
(-121.86711, 37.366157, 'VTA\r'),
(-121.85799, 37.669872, 'ACE\r'),
(-121.85799, 37.669872, 'BART\r'),
(-121.85799, 37.669872, 'CalTrain\r'),
(-121.85799, 37.669872, 'VTA\r'),
(-121.847825, 37.273842, 'ACE\r'),
(-121.847825, 37.273842, 'BART\r'),
(-121.847825, 37.273842, 'CalTrain\r'),
(-121.847825, 37.273842, 'VTA\r'),
(-121.844647, 37.274531, 'ACE\r'),
(-121.844647, 37.274531, 'BART\r'),
(-121.844647, 37.274531, 'CalTrain\r'),
(-121.844647, 37.274531, 'VTA\r'),
(-121.835176, 37.26771, 'ACE\r'),
(-121.835176, 37.26771, 'BART\r'),
(-121.835176, 37.26771, 'CalTrain\r'),
(-121.835176, 37.26771, 'VTA\r'),
(-120.693935, 35.256033, 'ACE\r'),
(-120.693935, 35.256033, 'BART\r'),
(-120.693935, 35.256033, 'CalTrain\r'),
(-120.693935, 35.256033, 'VTA\r'),
(-120.692991, 35.257462, 'ACE\r'),
(-120.692991, 35.257462, 'BART\r'),
(-120.692991, 35.257462, 'CalTrain\r'),
(-120.692991, 35.257462, 'VTA\r'),
(-120.691599, 35.255353, 'ACE\r'),
(-120.691599, 35.255353, 'BART\r'),
(-120.691599, 35.255353, 'CalTrain\r'),
(-120.691599, 35.255353, 'VTA\r'),
(-120.691491, 35.261131, 'ACE\r'),
(-120.691491, 35.261131, 'BART\r'),
(-120.691491, 35.261131, 'CalTrain\r'),
(-120.691491, 35.261131, 'VTA\r'),
(-120.691034, 35.254712, 'ACE\r'),
(-120.691034, 35.254712, 'BART\r'),
(-120.691034, 35.254712, 'CalTrain\r'),
(-120.691034, 35.254712, 'VTA\r'),
(-120.677635, 35.24125, 'ACE\r'),
(-120.677635, 35.24125, 'BART\r'),
(-120.677635, 35.24125, 'CalTrain\r'),
(-120.677635, 35.24125, 'VTA\r'),
(-120.674898, 35.292733, 'ACE\r'),
(-120.674898, 35.292733, 'BART\r'),
(-120.674898, 35.292733, 'CalTrain\r'),
(-120.674898, 35.292733, 'VTA\r'),
(-120.652265, 35.280144, 'ACE\r'),
(-120.652265, 35.280144, 'BART\r'),
(-120.652265, 35.280144, 'CalTrain\r'),
(-120.652265, 35.280144, 'VTA\r');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `modeName` varchar(255) NOT NULL,
  `route` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`modeName`, `route`) VALUES
('VTA', 23),
('VTA', 25),
('VTA', 35),
('VTA', 37);

-- --------------------------------------------------------

--
-- Table structure for table `busstops`
--

CREATE TABLE `busstops` (
  `modeName` varchar(255) NOT NULL,
  `route` int(11) NOT NULL,
  `stopName` varchar(255) NOT NULL,
  `stopTime` varchar(255) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busstops`
--

INSERT INTO `busstops` (`modeName`, `route`, `stopName`, `stopTime`, `longitude`, `latitude`) VALUES
('VTA', 23, 'Alum Rock Transit Center', '10:05P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '10:08A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '10:21A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '10:22P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '10:32A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '10:44A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '10:49P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '11:19P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '12:20A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '1:05A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '6:53A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:10P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:12A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:21P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:29A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:31P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:41A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:43P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:53A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '7:54P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:05A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:07P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:17A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:20P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:29A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:33P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:41A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:48P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '8:53A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '9:06P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '9:07A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '9:20A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '9:25P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '9:32A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '9:44A', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '9:45P', -121.850568, 37.355863),
('VTA', 23, 'Alum Rock Transit Center', '9:56A', -121.850568, 37.355863),
('VTA', 23, 'De Anza College', '10:13P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '11:19P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '5:24A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '5:25P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '5:39P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '5:52P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '5:54A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:07P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:11A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:19P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:26A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:33P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:37A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:47A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:49P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '6:56A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:06P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:07A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:18A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:19P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:30A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:37P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:41A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:53A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '7:57P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '8:05A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '8:15A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '8:17P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '8:27A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '8:38P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '8:39A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '8:51A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '8:58P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '9:04A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '9:16A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '9:19P', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '9:28A', -122.045055, 37.31954),
('VTA', 23, 'De Anza College', '9:43P', -122.045055, 37.31954),
('VTA', 23, 'Santa Clara and 1st', '10:02P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '10:24P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '10:42A', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '10:54A', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '10:54P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '11:06A', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '11:18A', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '11:30A', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '11:42A', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '11:54A', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '11:56P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '12:06P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '12:18P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '12:30P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '12:41A', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '12:42P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '12:54P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '1:06P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '1:18P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '1:30P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '1:42P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '1:54P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '2:06P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '2:18P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '6:43P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '6:54P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '7:06P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '7:18P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '7:30P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '7:43P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '7:56P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '8:09P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '8:24P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '8:43P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '9:02P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '9:22P', -121.890626, 37.336155),
('VTA', 23, 'Santa Clara and 1st', '9:42P', -121.890626, 37.336155),
('VTA', 23, 'Stevens Creek and Wolfe', '10:03A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '10:15A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '10:25A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '10:37A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '10:49A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '11:01A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '11:13A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '11:24A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '11:36A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '11:48A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '11:58A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '12:10P', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '12:21P', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '12:32P', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '12:44P', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '12:57P', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '1:08P', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '1:20P', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '9:48A', -122.014295, 37.322895),
('VTA', 23, 'Stevens Creek and Wolfe', '9:51A', -122.014295, 37.322895),
('VTA', 25, 'Alum Rock Transit Center', '10:42A', -121.850568, 37.355863),
('VTA', 25, 'Saich and Stevens Creek', '9:02A', -122.037282, 37.322984),
('VTA', 25, 'Story and King', '10:23A', -121.843121, 37.33981),
('VTA', 25, 'Tamien Light Rail Station', '10:02A', -121.918866, 37.354611),
('VTA', 25, 'Williams and Winchester', '9:31A', -121.96839, 37.308347),
('VTA', 35, 'Mountain View Station', '6:28A', -122.076644, 37.393771),
('VTA', 35, 'Palo Alto Transit Center', '7:02A', -122.165174, 37.443425),
('VTA', 35, 'Stanford Shopping Center', '7:46A', -122.171446, 37.443032),
('VTA', 37, 'Camden and Union', '1:40P', -121.931838, 37.262254),
('VTA', 37, 'Capitol Light Rail Station', '2:00P', -121.860802, 37.274348),
('VTA', 37, 'West Valley College', '1:17P', -122.010895, 37.264068);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gradeLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`gradeLevel`) VALUES
(-1),
(0),
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`name`) VALUES
('"Collecting Sports Cards (Baseball'),
('"Exercise (aerobics'),
('3D printing\r'),
('Acting\r'),
('Aeromodeling\r'),
('Air sports\r'),
('Airbrushing\r'),
('Aircraft Spotting\r'),
('Airsoft\r'),
('Airsofting\r'),
('Amateur astronomy\r'),
('Amateur geology\r'),
('Amateur Radio\r'),
('American football\r'),
('Animal fancy\r'),
('Animals/pets/dogs\r'),
('Antiquing\r'),
('Antiquities\r'),
('Aqua-lung\r'),
('Aquarium (Freshwater & Saltwater)\r'),
('Archery\r'),
('Art collecting\r'),
('Arts\r'),
('Association football\r'),
('Astrology\r'),
('Astronomy\r'),
('Audiophilia\r'),
('Australian rules football\r'),
('Auto audiophilia\r'),
('Auto racing\r'),
('Backgammon\r'),
('Backpacking\r'),
('Badminton\r'),
('Base Jumping\r'),
('Baseball\r'),
('Basketball\r'),
('Baton Twirling\r'),
('Beach Volleyball\r'),
('Beach/Sun tanning\r'),
('Beachcombing\r'),
('Beadwork\r'),
('Beatboxing\r'),
('Becoming A Child Advocate\r'),
('Beekeeping\r'),
('Bell Ringing\r'),
('Belly Dancing\r'),
('Bicycle Polo\r'),
('Bicycling\r'),
('Billiards\r'),
('Bird watching\r'),
('Birding\r'),
('Birdwatching\r'),
('Blacksmithing\r'),
('Blogging\r'),
('BMX\r'),
('Board games\r'),
('Board sports\r'),
('BoardGames\r'),
('Boating\r'),
('Body Building\r'),
('Bodybuilding\r'),
('Bonsai Tree\r'),
('Book collecting\r'),
('Bookbinding\r'),
('Boomerangs\r'),
('Bowling\r'),
('Boxing\r'),
('Brazilian jiu-jitsu\r'),
('Breakdancing\r'),
('Brewing Beer\r'),
('Bridge\r'),
('Bridge Building\r'),
('Bringing Food To The Disabled\r'),
('Building A House For Habitat For Humanity\r'),
('Building Dollhouses\r'),
('Bus spotting\r'),
('Butterfly Watching\r'),
('Button Collecting\r'),
('Cake Decorating\r'),
('Calligraphy\r'),
('Camping\r'),
('Candle making\r'),
('Canoeing\r'),
('Car Racing\r'),
('Card collecting\r'),
('Cartooning\r'),
('Casino Gambling\r'),
('Cave Diving\r'),
('Ceramics\r'),
('Cheerleading\r'),
('Chess\r'),
('Church/church activities\r'),
('Cigar Smoking\r'),
('Climbing\r'),
('Cloud Watching\r'),
('Coin Collecting\r'),
('Collecting\r'),
('Collecting Antiques\r'),
('Collecting Artwork\r'),
('Collecting Hats\r'),
('Collecting Music Albums\r'),
('Collecting RPM Records\r'),
('Collecting Swords\r'),
('Color guard\r'),
('Coloring\r'),
('Comic book collecting\r'),
('Compose Music\r'),
('Computer activities\r'),
('Computer programming\r'),
('Conworlding\r'),
('Cooking\r'),
('Cosplay\r'),
('Cosplaying\r'),
('Couponing\r'),
('Crafts\r'),
('Crafts (unspecified)\r'),
('Creative writing\r'),
('Cricket\r'),
('Crochet\r'),
('Crocheting\r'),
('Cross-Stitch\r'),
('Crossword Puzzles\r'),
('Cryptography\r'),
('Curling\r'),
('Cycling\r'),
('Dance\r'),
('Dancing\r'),
('Darts\r'),
('Debate\r'),
('Deltiology (postcard collecting)\r'),
('Diecast Collectibles\r'),
('Digital arts\r'),
('Digital Photography\r'),
('Disc golf\r'),
('Do it yourself\r'),
('Dodgeball\r'),
('Dog sport\r'),
('Dolls\r'),
('Dominoes\r'),
('Dowsing\r'),
('Drama\r'),
('Drawing\r'),
('Driving\r'),
('Dumpster Diving\r'),
('Eating out\r'),
('Educational Courses\r'),
('Electronics\r'),
('Element collecting\r'),
('Embroidery\r'),
('Entertaining\r'),
('Equestrianism\r'),
('Exhibition drill\r'),
('Falconry\r');

-- --------------------------------------------------------

--
-- Table structure for table `modeoftransportation`
--

CREATE TABLE `modeoftransportation` (
  `name` varchar(255) NOT NULL,
  `streetAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modeoftransportation`
--

INSERT INTO `modeoftransportation` (`name`, `streetAddress`) VALUES
('ACE', 'Stockton CA 95202\r'),
('BART', 'Oakland CA 94604\r'),
('CalTrain', 'San Carlos CA 94070\r'),
('VTA', 'San Jose CA 95134\r');

-- --------------------------------------------------------

--
-- Table structure for table `schoolsystemhasgrades`
--

CREATE TABLE `schoolsystemhasgrades` (
  `schoolLongitude` double NOT NULL,
  `schoolLatitude` double NOT NULL,
  `gradeLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schoolsystems`
--

CREATE TABLE `schoolsystems` (
  `name` varchar(255) DEFAULT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `rating` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolsystems`
--

INSERT INTO `schoolsystems` (`name`, `longitude`, `latitude`, `rating`) VALUES
('Gunderson High School', -122.276997, 47.302747, '3.50'),
('Andrew P. Hill High School', -117.770396, 42.294821, '10.00'),
('James Lick High School', -117.767299, 42.313227, '1.10'),
('William C. Overfelt High School', -117.764003, 42.313742, '5.20'),
('San Jose High School', -117.75649, 42.296198, '8.80'),
('Calero High School', -117.69759, 47.256431, '4.20'),
('Mt. Pleasant High School', -117.422814, 42.193627, '5.50'),
('Abraham Lincoln High School', -117.386577, 42.18814, '8.90'),
('Willow Glen High School', -117.386508, 42.194939, '5.60'),
('Yerba Buena High School', -117.383294, 42.157574, '6.80'),
('Del Mar High School', -117.372231, 42.18947, '10.00'),
('Allendale High School ', -115.932936, 44.283028, '9.80'),
('Oakland Hebrew Day School', -115.917332, 44.275828, '1.30'),
('Christ The King Academy', -115.903348, 44.269628, '10.00'),
('Champion School', -115.897709, 44.283823, '9.90'),
('Oakland Unity High School', -115.895847, 44.224955, '4.30'),
('Roosevelt Middle School', -115.894076, 44.285686, '8.70'),
('Starlight High School', -115.893149, 44.287187, '5.60'),
('Oakland High School', -115.892196, 44.291744, '2.30'),
('Silver Creek High School', -114.457171, 44.912249, '4.20'),
('Leigh High School', -114.457171, 44.914793, '5.10'),
('Evergreen Valley High School', -114.446708, 44.819719, '9.10'),
('Oak Grove High School', -114.395476, 42.156106, '3.40'),
('Lynkbrook High School', -114.376554, 44.825088, '8.20'),
('Independence High School', -114.376086, 45.175482, '9.80'),
('Piedmont Hills High School', -114.36711, 44.866157, '6.50'),
('Branham High School', -114.35799, 45.169872, '2.10'),
('Leland High School', -114.347825, 44.773842, '10.00'),
('Santa Teressa High School', -114.344647, 44.774531, '7.60'),
('Pioneer High School', -114.335176, 44.76771, '4.20'),
('Archbishop Mitty High School', -114.174898, 41.792733, '4.80'),
('Lincoln Plus High School', -114.152265, 41.780144, '6.20'),
('Boynton High School', -112.754587, 47.313796, '8.10'),
('Foothill High School', -112.753375, 47.308992, '6.50'),
('Notre Dame High School', -111.193935, 44.756033, '9.80'),
('Middle College High School', -111.192991, 44.757462, '4.40'),
('Broadway High School', -111.191599, 44.755353, '8.60'),
('San Jose Community College High School', -111.191491, 44.761131, '7.40'),
('Presentation High School', -111.191034, 44.754712, '8.80'),
('East Valley Christian School', -111.177635, 44.74125, '9.20');

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `name` varchar(255) NOT NULL,
  `stopTime` varchar(255) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`name`, `stopTime`, `longitude`, `latitude`) VALUES
('Alum Rock', '3:11P', -121.850568, 37.355863),
('Alum Rock Transit Center', '10:05P', -121.850568, 37.355863),
('Alum Rock Transit Center', '10:08A', -121.850568, 37.355863),
('Alum Rock Transit Center', '10:21A', -121.850568, 37.355863),
('Alum Rock Transit Center', '10:22P', -121.850568, 37.355863),
('Alum Rock Transit Center', '10:32A', -121.850568, 37.355863),
('Alum Rock Transit Center', '10:42A', -121.850568, 37.355863),
('Alum Rock Transit Center', '10:44A', -121.850568, 37.355863),
('Alum Rock Transit Center', '10:49P', -121.850568, 37.355863),
('Alum Rock Transit Center', '11:19P', -121.850568, 37.355863),
('Alum Rock Transit Center', '12:20A', -121.850568, 37.355863),
('Alum Rock Transit Center', '1:05A', -121.850568, 37.355863),
('Alum Rock Transit Center', '6:53A', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:10P', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:12A', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:21P', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:29A', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:31P', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:41A', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:43P', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:53A', -121.850568, 37.355863),
('Alum Rock Transit Center', '7:54P', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:05A', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:07P', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:17A', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:20P', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:29A', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:33P', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:41A', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:48P', -121.850568, 37.355863),
('Alum Rock Transit Center', '8:53A', -121.850568, 37.355863),
('Alum Rock Transit Center', '9:06P', -121.850568, 37.355863),
('Alum Rock Transit Center', '9:07A', -121.850568, 37.355863),
('Alum Rock Transit Center', '9:20A', -121.850568, 37.355863),
('Alum Rock Transit Center', '9:25P', -121.850568, 37.355863),
('Alum Rock Transit Center', '9:32A', -121.850568, 37.355863),
('Alum Rock Transit Center', '9:44A', -121.850568, 37.355863),
('Alum Rock Transit Center', '9:45P', -121.850568, 37.355863),
('Alum Rock Transit Center', '9:56A', -121.850568, 37.355863),
('Camden and Union', '1:40P', -121.931838, 37.262254),
('Capitol Light Rail Station', '2:00P', -121.860802, 37.274348),
('Coliseum', '7:29A', -122.19689, 37.75367),
('Daly City', '8:03A', -122.452385, 37.690456),
('Daly City', '8:20P', -122.452385, 37.690456),
('De Anza College', '10:13P', -122.045055, 37.31954),
('De Anza College', '11:19P', -122.045055, 37.31954),
('De Anza College', '5:24A', -122.045055, 37.31954),
('De Anza College', '5:25P', -122.045055, 37.31954),
('De Anza College', '5:39P', -122.045055, 37.31954),
('De Anza College', '5:52P', -122.045055, 37.31954),
('De Anza College', '5:54A', -122.045055, 37.31954),
('De Anza College', '6:07P', -122.045055, 37.31954),
('De Anza College', '6:11A', -122.045055, 37.31954),
('De Anza College', '6:19P', -122.045055, 37.31954),
('De Anza College', '6:26A', -122.045055, 37.31954),
('De Anza College', '6:33P', -122.045055, 37.31954),
('De Anza College', '6:37A', -122.045055, 37.31954),
('De Anza College', '6:47A', -122.045055, 37.31954),
('De Anza College', '6:49P', -122.045055, 37.31954),
('De Anza College', '6:56A', -122.045055, 37.31954),
('De Anza College', '7:06P', -122.045055, 37.31954),
('De Anza College', '7:07A', -122.045055, 37.31954),
('De Anza College', '7:18A', -122.045055, 37.31954),
('De Anza College', '7:19P', -122.045055, 37.31954),
('De Anza College', '7:30A', -122.045055, 37.31954),
('De Anza College', '7:37P', -122.045055, 37.31954),
('De Anza College', '7:41A', -122.045055, 37.31954),
('De Anza College', '7:53A', -122.045055, 37.31954),
('De Anza College', '7:57P', -122.045055, 37.31954),
('De Anza College', '8:05A', -122.045055, 37.31954),
('De Anza College', '8:15A', -122.045055, 37.31954),
('De Anza College', '8:17P', -122.045055, 37.31954),
('De Anza College', '8:27A', -122.045055, 37.31954),
('De Anza College', '8:38P', -122.045055, 37.31954),
('De Anza College', '8:39A', -122.045055, 37.31954),
('De Anza College', '8:51A', -122.045055, 37.31954),
('De Anza College', '8:58P', -122.045055, 37.31954),
('De Anza College', '9:04A', -122.045055, 37.31954),
('De Anza College', '9:16A', -122.045055, 37.31954),
('De Anza College', '9:19P', -122.045055, 37.31954),
('De Anza College', '9:28A', -122.045055, 37.31954),
('De Anza College', '9:43P', -122.045055, 37.31954),
('Dublin/Pleasanton', '7:12A', -121.89678, 37.700654),
('Fremont', '2:15P', -121.976762, 37.557385),
('Fremont', '6:56A', -121.976762, 37.557385),
('Milbrae', '3:00P', -122.3875, 37.600377),
('Mountain View Station', '6:28A', -122.076644, 37.393771),
('Mountain View Station', '9:27A', -122.076644, 37.393771),
('Oakland International Airport', '7:45A', -122.295158, 37.804819),
('Palo Alto Transit Center', '7:02A', -122.165174, 37.443425),
('Pittsburg/Baypointe', '3:45P', -121.945624, 38.015514),
('Richmond', '2:00P', -122.353174, 37.936833),
('Richmond', '3:15P', -122.353174, 37.936833),
('Saich and Stevens Creek', '9:02A', -122.037282, 37.322984),
('San Francisco', '6:03P', -122.394706, 37.776665),
('San Jose Diridon Station', '4:30P', -122.295158, 37.804819),
('San Jose Diridon Station', '9:04A', -121.902547, 37.329609),
('Santa Clara and 1st', '10:02P', -121.890626, 37.336155),
('Santa Clara and 1st', '10:24P', -121.890626, 37.336155),
('Santa Clara and 1st', '10:42A', -121.890626, 37.336155),
('Santa Clara and 1st', '10:54A', -121.890626, 37.336155),
('Santa Clara and 1st', '10:54P', -121.890626, 37.336155),
('Santa Clara and 1st', '11:06A', -121.890626, 37.336155),
('Santa Clara and 1st', '11:18A', -121.890626, 37.336155),
('Santa Clara and 1st', '11:30A', -121.890626, 37.336155),
('Santa Clara and 1st', '11:42A', -121.890626, 37.336155),
('Santa Clara and 1st', '11:54A', -121.890626, 37.336155),
('Santa Clara and 1st', '11:56P', -121.890626, 37.336155),
('Santa Clara and 1st', '12:06P', -121.890626, 37.336155),
('Santa Clara and 1st', '12:18P', -121.890626, 37.336155),
('Santa Clara and 1st', '12:30P', -121.890626, 37.336155),
('Santa Clara and 1st', '12:41A', -121.890626, 37.336155),
('Santa Clara and 1st', '12:42P', -121.890626, 37.336155),
('Santa Clara and 1st', '12:54P', -121.890626, 37.336155),
('Santa Clara and 1st', '1:06P', -121.890626, 37.336155),
('Santa Clara and 1st', '1:18P', -121.890626, 37.336155),
('Santa Clara and 1st', '1:30P', -121.890626, 37.336155),
('Santa Clara and 1st', '1:42P', -121.890626, 37.336155),
('Santa Clara and 1st', '1:54P', -121.890626, 37.336155),
('Santa Clara and 1st', '2:06P', -121.890626, 37.336155),
('Santa Clara and 1st', '2:18P', -121.890626, 37.336155),
('Santa Clara and 1st', '6:43P', -121.890626, 37.336155),
('Santa Clara and 1st', '6:54P', -121.890626, 37.336155),
('Santa Clara and 1st', '7:06P', -121.890626, 37.336155),
('Santa Clara and 1st', '7:18P', -121.890626, 37.336155),
('Santa Clara and 1st', '7:30P', -121.890626, 37.336155),
('Santa Clara and 1st', '7:43P', -121.890626, 37.336155),
('Santa Clara and 1st', '7:56P', -121.890626, 37.336155),
('Santa Clara and 1st', '8:09P', -121.890626, 37.336155),
('Santa Clara and 1st', '8:24P', -121.890626, 37.336155),
('Santa Clara and 1st', '8:43P', -121.890626, 37.336155),
('Santa Clara and 1st', '9:02P', -121.890626, 37.336155),
('Santa Clara and 1st', '9:22P', -121.890626, 37.336155),
('Santa Clara and 1st', '9:42P', -121.890626, 37.336155),
('Santa Theresa Light Rail Station', '1:54P', -121.782228, 37.231816),
('SFO-Milbrae', '4:32P', -122.3875, 37.600377),
('Stanford Shopping Center', '7:46A', -122.171446, 37.443032),
('Stevens Creek and Wolfe', '10:03A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '10:15A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '10:25A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '10:37A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '10:49A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '11:01A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '11:13A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '11:24A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '11:36A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '11:48A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '11:58A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '12:10P', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '12:21P', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '12:32P', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '12:44P', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '12:57P', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '1:08P', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '1:20P', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '9:48A', -122.014295, 37.322895),
('Stevens Creek and Wolfe', '9:51A', -122.014295, 37.322895),
('Stockton', '10:13A', -121.278891, 37.957026),
('Story and King', '10:23A', -121.843121, 37.33981),
('Tamien Light Rail Station', '10:02A', -121.918866, 37.354611),
('West Valley College', '1:17P', -122.010895, 37.264068),
('Williams and Winchester', '9:31A', -121.96839, 37.308347),
('Winchester Station', '8:18A', -121.952999, 37.277003);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`name`, `description`, `longitude`, `latitude`) VALUES
('Khols', 'Clothing', -132.394076, 32.785686),
('Best Buy', 'Electronics', -132.254587, 37.813796),
('Khols', 'Clothing', -131.957171, 37.412249),
('PetCo', 'Pets', -131.85799, 37.669872),
('PetSmart', 'Pets', -131.85799, 47.669872),
('Ace Hardware', 'hardware', -131.835176, 47.26771),
('Dollar Tree', 'Everything', -131.254587, 37.813796),
('Nordstrom Rack', 'Clothing', -130.957171, 37.412249),
('Home Depot', 'hardware', -130.261131, 35.257462),
('India Cash and Carry', 'Food', -129.957171, 37.412249),
('Real Produce', 'Food', -129.693935, 35.256033),
('Home Depot', 'hardware', -129.254587, 37.813796),
('Costco', 'Everything', -128.957171, 37.412249),
('Sears', 'Clothing', -128.876554, 37.325088),
('Best Buy', 'Electronics', -128.267299, 37.813227),
('Sears', 'Clothing', -128.261131, 35.257462),
('Trader Joe''s', 'Food', -127.957171, 37.412249),
('Papaya Clothing', 'Clothing', -127.691599, 35.255353),
('Costco', 'Everything', -127.392196, 39.791744),
('Walmart', 'Everything', -127.267299, 37.813227),
('Saks Fifth Avenue', 'Clothing', -127.261131, 35.257462),
('Forever 21', 'Clothing', -126.957171, 37.412249),
('Khols', 'Clothing', -126.835176, 42.26771),
('Target', 'Everything', -125.957171, 37.412249),
('Frys', 'Electronics', -125.691599, 35.255353),
('Papaya Clothing', 'Clothing', -125.652265, 35.280144),
('Home Depot', 'hardware', -123.876554, 37.325088),
('Safeway', 'Food', -123.693935, 35.256033),
('Dollar Tree', 'Everything', -123.267299, 37.813227),
('Dollar Tree', 'Everything', -122.876554, 37.325088),
('Ace Hardware', 'hardware', -122.432936, 47.783028),
('Safeway', 'Food', -122.270396, 38.794821),
('Real Produce', 'Food', -122.270396, 39.794821),
('Whole Foods', 'Food', -122.270396, 39.813227),
('Home Depot', 'hardware', -122.264003, 43.813742),
('Sears', 'Clothing', -122.264003, 44.813742),
('Saks Fifth Avenue', 'Clothing', -122.264003, 45.813742),
('Saks Fifth Avenue', 'Clothing', -122.253375, 40.808992),
('Daiso', 'Everything', -122.253375, 44.808992),
('Demasque', 'Clothing', -122.253375, 46.808992),
('Frys', 'Electronics', -122.19759, 39.756431),
('Whole Foods', 'Food', -122.19759, 40.756431),
('Walmart', 'Everything', -122.19759, 41.756431),
('Ace Hardware', 'hardware', -121.955257, 47.414793),
('Frys', 'Electronics', -121.895476, 45.656106),
('Target', 'Everything', -121.895476, 46.656106),
('Sears', 'Clothing', -121.886508, 38.694939),
('Saks Fifth Avenue', 'Clothing', -121.886508, 39.694939),
('Daiso', 'Everything', -121.872231, 40.68947),
('Demasque', 'Clothing', -121.872231, 43.68947),
('Papaya Clothing', 'Clothing', -121.872231, 44.68947),
('Daiso', 'Everything', -121.847825, 45.273842),
('Saks Fifth Avenue', 'Clothing', -121.847825, 47.273842),
('Sears', 'Clothing', -120.955257, 49.414793),
('Demasque', 'Clothing', -120.946708, 37.319719),
('Trader Joe''s', 'Food', -120.922814, 37.693627),
('Forever 21', 'Clothing', -120.895476, 46.656106),
('Nordstrom Rack', 'Clothing', -120.844647, 37.274531),
('Demasque', 'Clothing', -120.691491, 40.261131),
('Daiso', 'Everything', -120.691491, 41.261131),
('PetSmart', 'Pets', -120.691034, 25.254712),
('PetCo', 'Pets', -120.691034, 45.254712),
('Dollar Tree', 'Everything', -120.677635, 30.24125),
('Best Buy', 'Electronics', -120.677635, 43.24125),
('Walmart', 'Everything', -120.677635, 45.24125),
('PetCo', 'Pets', -119.955257, 49.414793),
('Papaya Clothing', 'Clothing', -119.946708, 37.319719),
('Costco', 'Everything', -119.922814, 37.693627),
('Dollar Tree', 'Everything', -119.886577, 37.68814),
('Best Buy', 'Electronics', -119.86711, 47.366157),
('India Cash and Carry', 'Food', -119.844647, 37.274531),
('Sears', 'Clothing', -119.254587, 37.813796),
('PetSmart', 'Pets', -118.955257, 49.414793),
('Frys', 'Electronics', -118.946708, 37.319719),
('India Cash and Carry', 'Food', -118.922814, 37.693627),
('Best Buy', 'Electronics', -118.886577, 37.68814),
('Walmart', 'Everything', -118.86711, 41.366157),
('Safeway', 'Food', -117.955257, 50.41479),
('Target', 'Everything', -117.946708, 37.319719),
('Nordstrom Rack', 'Clothing', -117.883294, 37.657574),
('Whole Foods', 'Food', -117.876086, 37.675482),
('Whole Foods', 'Food', -117.86711, 40.366157),
('Costco', 'Everything', -117.844647, 37.274531),
('Papaya Clothing', 'Clothing', -117.276997, 37.802747),
('Real Produce', 'Food', -116.955257, 50.41479),
('Khols', 'Clothing', -116.883294, 37.657574),
('Ace Hardware', 'hardware', -115.883294, 37.657574),
('Sears', 'Clothing', -115.25649, 37.796198),
('Forever 21', 'Clothing', -114.946708, 37.319719),
('PetCo', 'Pets', -114.25649, 37.796198),
('Demasque', 'Clothing', -113.276997, 37.802747),
('PetSmart', 'Pets', -113.270396, 37.794821),
('Home Depot', 'hardware', -112.886577, 37.68814),
('Nordstrom Rack', 'Clothing', -112.417332, 31.775828),
('Trader Joe''s', 'Food', -112.403348, 37.769628),
('Forever 21', 'Clothing', -112.397709, 37.783823),
('India Cash and Carry', 'Food', -112.395847, 37.724955),
('Target', 'Everything', -112.393149, 37.787187),
('Daiso', 'Everything', -112.276997, 37.802747),
('Walmart', 'Everything', -111.876186, 37.625482),
('Real Produce', 'Food', -111.876086, 37.675482),
('Safeway', 'Food', -111.85799, 47.669872),
('Trader Joe''s', 'Food', -111.844647, 37.274531),
('Sears', 'Clothing', -111.835176, 37.26771),
('Frys', 'Electronics', -110.674898, 35.292733),
('Whole Foods', 'Food', -101.693935, 35.256033);

-- --------------------------------------------------------

--
-- Table structure for table `suite`
--

CREATE TABLE `suite` (
  `suiteId` int(11) NOT NULL,
  `roomSharing` tinyint(1) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `specifications` varchar(255) DEFAULT NULL,
  `petsAllowed` tinyint(1) DEFAULT NULL,
  `numberOfRooms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suite`
--

INSERT INTO `suite` (`suiteId`, `roomSharing`, `price`, `specifications`, `petsAllowed`, `numberOfRooms`) VALUES
(1, 1, '978.63', '"Lift', 0, 0),
(2, 1, '2754.50', '"Lift', 0, 1),
(3, 0, '3884.54', 'High efficiency heating and hot water supplied from 30kw system boiler', 1, 3),
(4, 0, '2248.25', 'Landscaped communal gardens', 0, 4),
(5, 0, '2766.22', 'Designated car parking bays', 0, 3),
(6, 1, '3545.18', '"CEMENT PAINT: Lift well', 0, 1),
(7, 0, '2013.80', '10 year LABC Guarantee to all apartments', 1, 2),
(8, 1, '1684.06', 'Well-designed landscaped areas for recreation and children''s play', 0, 2),
(9, 1, '1825.71', 'Chrome LED spotlights (bathroom)', 0, 1),
(10, 1, '832.90', 'PUTTY WITH EMULSION FINISH: All internal walls of the flat including ceiling will be finished with 2 coats of putty and emulsion over one coat of primer', 0, 2),
(11, 0, '1926.63', 'Modular switches ', 0, 2),
(12, 1, '1593.63', 'Living / Dining / Foyer : Vitrified Tiles', 0, 2),
(13, 1, '1020.62', 'Staircase : Marble / Kota Stone', 0, 4),
(14, 1, '3731.54', 'Veneered solid core doors with painted frames', 0, 2),
(15, 0, '2421.74', 'Oak internal doors', 1, 3),
(16, 0, '1861.92', 'High performance glazing system', 1, 4),
(17, 1, '766.89', 'Dry-lining system to provide internal walls with gyproc system ceilings', 0, 3),
(18, 0, '1583.96', 'Passenger lift to all floors (Davis House only)', 1, 1),
(19, 0, '1583.91', 'Private gated development', 0, 1),
(20, 0, '1646.97', '10 Years BLP Latent Defects Guarantee', 0, 2),
(21, 0, '1738.60', 'Internal refuse and recycling area', 1, 2),
(22, 0, '1357.62', 'Cat 5 cabling to support distribution of data', 0, 4),
(23, 0, '2176.15', 'Fire and smoke detection system', 0, 1),
(24, 0, '3197.35', 'Black granite kitchen counter with stainless steel sink (kitchen)', 0, 4),
(25, 0, '1935.65', 'Paintwork Dulux Chiffon White 4 or similar', 0, 4),
(26, 1, '722.00', 'Communal roof garden terrace', 1, 4),
(27, 1, '2554.17', 'Satin chrome door handles', 0, 3),
(28, 1, '3184.82', 'Quality double glazed windows', 0, 3),
(29, 0, '3074.56', 'Thermostatic shower (bathroom)', 1, 3),
(30, 1, '2656.03', 'Fire protection system as per Karnataka Fire Force Standards', 0, 1),
(31, 1, '1327.63', 'Vado contemporary taps (bathroom)', 0, 2),
(32, 0, '3228.46', 'Exterior finish', 0, 3),
(33, 0, '912.80', 'High specifcation sanitaryware (bathroom)', 1, 4),
(34, 0, '776.36', 'French Door: Seasoned wood frame with seasoned wood shutters or UPVC Sliding doors', 0, 1),
(35, 1, '3780.35', 'Timber Pergolas', 1, 3),
(36, 0, '3975.41', 'Balcony / Utility : Anti-skid Ceramic tiles', 1, 4),
(37, 1, '1387.95', 'Large vetrified tile flooring with the option to upgrade to imported Engineered Marble ', 0, 2),
(38, 0, '2030.54', 'Aluminium windows with sliding or swing doors to balconies', 1, 4),
(39, 0, '2854.74', 'Chrome heated electric towel rail', 1, 1),
(40, 0, '805.13', 'NAMEL PAINTING: All other doors and grill. (Two coats of enamel paint over one coat of primer)', 0, 4),
(41, 1, '2827.55', 'Self-levelling sand and cement screed to all floors', 0, 4),
(42, 0, '3024.84', 'Stone entrance foyer with hardwood skirting', 1, 2),
(43, 1, '3064.37', 'EXTERIOR EMULSION: External walls and Internal walls of common area as per architect''s opinion', 0, 3),
(44, 0, '902.44', 'Brushed steel sockets and switch plates to lounge and kitchen', 1, 2),
(45, 0, '2461.60', 'MELAMINE SPRAY POLISH: entrance door', 1, 4),
(46, 0, '742.61', '"Clubhouse with swimming pool', 0, 0),
(47, 1, '3243.00', 'Chrome and glass shower door (bathroom)', 1, 1),
(48, 1, '1180.98', 'Car parking at basement level and stilt level on ownership basis only', 1, 3),
(49, 1, '2405.39', 'Canalside path', 1, 3),
(50, 1, '2853.73', 'Security system with cameras on all access points', 1, 1),
(51, 1, '3488.68', 'Colour screen video entryphone system', 0, 3),
(52, 1, '646.96', 'Timber Decking to all patios / terraces / balconies', 1, 3),
(53, 0, '1725.43', 'Raft foundation and framed structure', 1, 1),
(54, 0, '2222.74', '80/20 Wool Carpet on heavy duty underlay (bedroom)', 0, 4),
(55, 0, '2524.81', 'CP Fittings : Jaquar make or equivalent', 0, 4),
(56, 1, '2334.41', 'High level acoustic insulation', 0, 4),
(57, 0, '1278.26', 'Chrome LED spotlights (living room)', 0, 2),
(58, 1, '925.27', 'Low profile chrome light switches and sockets', 1, 1),
(59, 1, '3264.27', 'Copper and stone styled cladding systems with high performance insulation in cavities', 0, 4),
(60, 0, '2367.60', 'Passenger lifts by Orona or similar', 0, 1),
(61, 1, '2577.25', '"Cable TV', 0, 0),
(62, 0, '3101.37', 'Private balconies and terraces incorporating stainless steel and glazed balustrading or brickwork walls', 1, 3),
(63, 0, '3175.88', '"Engineered oak flooring to lounge', 0, 1),
(64, 1, '1374.41', 'CCTV for common areas with DVR recording facility at the security kiosk', 1, 1),
(65, 1, '2527.01', 'MDF painted skirtings and architraves', 1, 1),
(66, 0, '3848.03', '"Toilet Door: Flush doors with frames will be provided with accessories. (2''6"" wide 7'' height)"', 1, 3),
(67, 0, '3383.21', 'Apartment entrance door: Teak wood frame with designer door shutter', 1, 1),
(68, 1, '2961.82', 'Gas central heating system to panel radiators with concealed pipework', 0, 4),
(69, 0, '3834.87', 'Discreet external lighting', 0, 4),
(70, 0, '3777.86', 'Stone and mirrored feature wall', 1, 1),
(71, 0, '572.67', 'Windows & ventilators: UPVC / Anodized aluminum windows with sliding shutters and mosquito mesh with safety grills', 1, 4),
(72, 0, '3633.79', 'Concealed conduit with copper wiring (electrical)', 0, 3),
(73, 0, '2315.69', 'New external paving and streetscape', 0, 3),
(74, 0, '2913.34', 'Vado shower arm and head (bathroom)', 1, 3),
(75, 0, '2497.27', 'Porcelain limestone floor tiles', 0, 1),
(76, 1, '995.14', '24 hour CCTV system', 1, 3),
(77, 0, '3027.03', 'Glass balustrade and wooden floor decking to balconies (Davis House only)', 0, 1),
(78, 0, '3866.18', 'Built-in insulated roofing system with single membrane outer skin. Photo Voltaic panels to power landlords supplies', 1, 4),
(79, 1, '2046.56', 'White Gloss Italian Kitchens or similar', 1, 2),
(80, 1, '1617.25', 'Individual heating thermostat to each room', 0, 3),
(81, 1, '3571.07', 'Polished porcelain wall tiles with chrome trim', 0, 3),
(82, 0, '1760.09', '"Reinforced concrete bored piles with reinforced concrete pilecaps', 0, 0),
(83, 1, '2658.50', 'Door entry system', 0, 1),
(84, 0, '3450.16', 'Bathrooms: Anti-skid ceramic tiles', 0, 1),
(85, 1, '3172.78', 'Bedroom Doors: Seasoned wood frame Flush door shutter with accessories. Doors will be of enamel finish. (3'' wide 7'' height)', 1, 3),
(86, 0, '1641.73', 'Secure cycle parking facility', 1, 1),
(87, 0, '2569.31', 'Living wall', 0, 1),
(88, 0, '2650.46', 'Ceilings in oil bound distemper', 0, 2),
(89, 1, '2152.12', '2 passenger & 1 service lift in each block', 1, 2),
(90, 0, '2065.17', 'Centralised Satellite TV system', 0, 3),
(91, 0, '3374.71', 'Windows: UPVC (Open able)  Fenesta or equivalent make', 0, 4),
(92, 0, '3236.99', 'Internal walls in plastic emulsion', 0, 3),
(93, 0, '1507.50', 'Carpets with feature nosing to staircases', 0, 1),
(94, 0, '2891.03', 'Electric car charging points', 1, 4),
(95, 0, '2826.82', '"Utility and external Doors: core wood frame with hard core panel/moulded door with accessories. (2'' 6"" wide 7'' height)"', 0, 4),
(96, 0, '2071.61', 'Imported Marble Flooring (waiting lounge)', 0, 1),
(97, 0, '3771.60', 'Borewell with pump and sump', 1, 4),
(98, 0, '1279.60', 'Fitted chrome edge mirror (bathroom)', 0, 4),
(99, 0, '766.82', 'Glasseco Engineered surface worktops (kitchen)', 0, 4),
(100, 1, '677.86', 'Uplighting to main buildings', 1, 3),
(101, 0, '2000.12', 'Bedroom doors: Hardwood frame with flush door shutter', 1, 1),
(102, 1, '735.61', '"Thick solid concrete blocks of standard specifications', 0, 0),
(103, 0, '1051.21', '"Integrated appliances including:Hob and chimney hood', 0, 0),
(104, 0, '998.74', 'Video entry system to pedestrian and vehicular gates', 1, 4),
(105, 0, '672.98', 'Individual mail boxes', 0, 4),
(106, 1, '2800.74', 'Underfloor heating to all rooms', 1, 2),
(107, 0, '2159.97', 'Mains operated smoke detectors', 1, 3),
(108, 1, '665.06', 'Quality signage (common area)', 0, 3),
(109, 1, '3799.06', 'Synthetic enamel paint on steel and wood works', 1, 4),
(110, 1, '1698.53', 'Kitchen: Semi-finished kitchen', 1, 4),
(111, 0, '3990.74', 'Bedrooms / Kitchen : Vitrified Tiles', 0, 1),
(112, 1, '647.99', 'Quality porcelain limestone flooring (living room)', 1, 2),
(113, 1, '3586.01', 'Canalside path', 1, 2),
(114, 0, '1468.31', 'Stone entrance foyer with hardwood skirting', 0, 2),
(115, 0, '2200.97', 'Windows: UPVC (Open able)  Fenesta or equivalent make', 1, 2),
(116, 1, '1635.72', 'Centralised Satellite TV system', 1, 4),
(117, 0, '3472.84', 'EXTERIOR EMULSION: External walls and Internal walls of common area as per architect''s opinion', 1, 3),
(118, 1, '1574.65', 'Door entry system', 1, 1),
(119, 1, '2632.55', 'Private gated development', 0, 2),
(120, 1, '3524.86', 'Vado contemporary taps (bathroom)', 1, 2),
(121, 1, '1170.77', 'Staircase : Marble / Kota Stone', 0, 1),
(122, 0, '1279.50', 'High performance glazing system', 1, 1),
(123, 1, '3489.65', 'High level acoustic insulation', 0, 4),
(124, 0, '1910.46', 'Veneered solid core doors with painted frames', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `name` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(12) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`name`, `phoneNumber`, `description`) VALUES
('Collette Grayson', '1084359726', 'Meteorologist\r'),
('Yoda', '1111111111', 'legendary Jedi Master\r'),
('Yan Ferrell', '1209368547', 'Astronomer\r'),
('Classie Broderick', '1230478596', 'Salesman\r'),
('Nellie Dye', '1259408376', 'Archeologist\r'),
('Shila Pietila', '126953847', 'Interior Designer\r'),
('Samual Fyfe', '1435907628', 'Meteorologist\r'),
('Lanora Durrett', '1538946270', 'Interpreter\r'),
('Sandie Casimir', '1567932480', 'Engineer\r'),
('Felisa Guajardo', '1628035749', 'Cook\r'),
('Columbus Hynson', '1639802457', 'Cook\r'),
('Charita Cue', '1789462035', 'Baker\r'),
('Krysten Delorenzo', '1806472935', 'Hairdresser\r'),
('Darth Vader', '2222222222', 'Sith Lord\r'),
('Aleta Blank', '2364571809', 'Dancer\r'),
('Lavern Jardine', '2379061854', 'Mechanic\r'),
('Fredrick Montoya', '2467913508', 'Composer\r'),
('Lauralee Turlington', '253948671', 'Insurer\r'),
('Jerrica Pappan', '2570841369', 'Journalist\r'),
('Bradley Doughty', '2596718304', 'Programmer\r'),
('Cletus Hames', '2637185940', 'Interpreter\r'),
('Gale Copen', '2653078149', 'Florist\r'),
('Salena Maher', '2691857034', 'Pharmacist\r'),
('Nellie Mcewen', '2730914856', 'Historian\r'),
('Katheleen King', '279586431', 'Auditor\r'),
('Rebecka Jager', '2869451703', 'Teacher\r'),
('Bobbie Warriner', '2901863457', 'Social Worker\r'),
('Loreen Creegan', '2957614083', 'Botanist\r'),
('Zoila Rawles', '2986154037', 'Insurer\r'),
('Cody Friedel', '3062479518', 'Engineer\r'),
('Tawana Patty', '3086521974', 'Historian\r'),
('Toi Domino', '3128065749', 'Economist\r'),
('Lottie Aldape', '3142560789', 'Historian\r'),
('Mallory Abramson', '3217860945', 'Dancer\r'),
('Norman Warkentin', '324956781', 'Electrician\r'),
('C-3PO', '3333333333', 'A droid\r'),
('Anabel Lehmkuhl', '3476280195', 'Manager\r'),
('Hortencia Mount', '3506472981', 'Economist\r'),
('Eleanore Strub', '352148697', 'Fine Artist\r'),
('Jodi Reta', '357814926', 'Botanist\r'),
('Roselee Mixson', '3579106824', 'Scientist\r'),
('Gale Enos', '3614529870', 'Producer\r'),
('Cornell Doud', '389617524', 'Pharmacist\r'),
('Delicia Culler', '4017659823', 'Composer\r'),
('Adrianne Casanova', '4017869235', 'Actor\r'),
('Freddie Rice', '4102958736', 'Fashion Designer\r'),
('Cassondra Dehner', '4129857063', 'Programmer\r'),
('Kerri Grabert', '4152679038', 'Astronomer\r'),
('Isabel Levesque', '4209376518', 'Chemist\r'),
('Tula Mendenhall', '4273569081', 'Interpreter\r'),
('Tammera Radabaugh', '4327091586', 'Meteorologist\r'),
('Darth Maul', '4444444444', 'Sith Lord\r'),
('Florentina Diangelo', '4501823679', 'Physicist\r'),
('Margie Ash', '4567391280', 'Scientist\r'),
('Dena Brochu', '4579612038', 'Biochemist\r'),
('Shanna Walk', '4650197328', 'Hairdresser\r'),
('Kanesha Waddy', '4658790132', 'Veterinarian\r'),
('Mei Moyers', '4702593861', 'Actor\r'),
('Kesha Teneyck', '4719068532', 'Producer\r'),
('Lauri Sly', '4720985613', 'Singer\r'),
('Chana Bumpus', '4826517093', 'Interpreter\r'),
('Camila Roush', '4932657108', 'Composer\r'),
('Dorcas Rozell', '5027431968', 'Baker\r'),
('Wai Bragdon', '5028947316', 'Jeweller\r'),
('Branda Fluharty', '5076381942', 'Baker\r'),
('Tawanna Pilarski', '5146298703', 'Fine Artist\r'),
('Donny Kaina', '5294716380', 'Actor\r'),
('Bobbye Sessoms', '5362019784', 'Scientist\r'),
('Alfredo Hunziker', '5362489170', 'Physicist\r'),
('Jane Stallworth', '5471620398', 'Electrician\r'),
('Dorathy Smalls', '5480371692', 'Firefighter\r'),
('R2-D2', '5555555555', 'Droid\r'),
('Nanette Guo', '5602149837', 'Fine Artist\r'),
('Theo Wroten', '5702691384', 'Manager\r'),
('Mee Gregerson', '5719248360', 'Firefighter\r'),
('Deedee Buchta', '5941683702', 'Mathematician\r'),
('Rosamaria Laffoon', '5984307261', 'Agronomist\r'),
('Ericka Liming', '6087294351', 'Firefighter\r'),
('Tod Grau', '6150482379', 'Composer\r'),
('Mitsue Preslar', '6189425703', 'Engineer\r'),
('Corinne Auer', '6285304197', 'Accountant\r'),
('Georgianna Mleczko', '631498725', 'Lawer\r'),
('Kami Diangelo', '6387942150', 'Accountant\r'),
('Sharika Wofford', '6402813975', 'Economist\r'),
('Sharie Greve', '6413579028', 'Teacher\r'),
('Estell Schurman', '6578913420', 'Mechanic\r'),
('Jenee Bello', '6582340917', 'Agronomist\r'),
('Chewbacca', '6666666666', 'Legendary Wookiee warrior\r'),
('Lou Ringo', '6870452139', 'Firefighter\r'),
('Jena Donis', '6971452038', 'Florist\r'),
('Janeth Gallagher', '7061249853', 'Dancer\r'),
('Ethan Dittman', '7158026934', 'Astronomer\r'),
('Audria Ptacek', '7206419835', 'Salesman\r'),
('Reuben Batiste', '7219384506', 'Salesman\r'),
('Quinn Adkins', '7259801436', 'Physicist\r'),
('Rickey Becerra', '7286014395', 'Engineer\r'),
('Ken Outland', '7391256408', 'Lecturer\r'),
('Rod Wainscott', '7396845012', 'Salesman\r'),
('Kym Rowse', '7421890536', 'Salesman\r'),
('Edwardo Kensey', '7465320819', 'Geologist\r'),
('Georgiann Blankenship', '7526438910', 'Interpreter\r'),
('Daina Hoefer', '7529341860', 'Astronomer\r'),
('Tommye Mathieson', '7540329861', 'Interpreter\r'),
('Regan Vecchio', '7563819240', 'Archeologist\r'),
('Santo Sickles', '7639021485', 'Agronomist\r'),
('Adena Landress', '7640825319', 'Firefighter\r'),
('Luminara Unduli', '7777777777', 'Jedi master\r'),
('Patrina Dashner', '7849032165', 'Meteorologist\r'),
('Raymundo Tolman', '7865149203', 'Aeroplane Pilot\r'),
('Keesha Courser', '7983412560', 'Interpreter\r'),
('Corazon Renfrew', '8025319674', 'Lecturer\r'),
('Tova Gough', '8145762930', 'Actor\r'),
('Anamaria Harte', '8216905473', 'Driver\r'),
('Olen Fuston', '8251936470', 'Accountant\r'),
('Beth Lamoureaux', '8297410635', 'Archeologist\r'),
('Nikole Engebretson', '8320195674', 'Economist\r'),
('Margene Mckeighan', '8356912470', 'Salesman\r'),
('Stacey Squillante', '8359620741', 'Cook\r'),
('Jaimie Adamski', '8426370951', 'Lawer\r'),
('Pamala Delagarza', '8659240317', 'Manager\r'),
('Nicolle Scheuermann', '8715963420', 'Salesman\r'),
('Igor Sikorsky', '8888888888', 'Aviation pioneer in both helicopters and fixed wing aircraft\r'),
('Leia Westgate', '8945132760', 'Meteorologist\r'),
('Jeanne Wilkin', '8946715203', 'Physicist\r'),
('Vito Flower', '9021847563', 'Physicist\r'),
('Roseann Mayers', '9284710635', 'Interior Designer\r'),
('Lourie Oyola', '9341056287', 'Engineer\r'),
('Elana Englehart', '9405271836', 'Biochemist\r'),
('Tricia Wisecup', '9452387601', 'Programmer\r'),
('Alesia Breton', '9642831750', 'Mechanic\r'),
('Soo Sisson', '9718625430', 'Archeologist\r'),
('Dewayne Fielder', '9725630184', 'Engineer\r'),
('Doug Symes', '9804312657', 'Interpreter\r'),
('Robert Hutchings Goddard', '9999999999', 'Credited with creating and building the world''s first liquid fuel rocket\r');

-- --------------------------------------------------------

--
-- Table structure for table `tenanthassuite`
--

CREATE TABLE `tenanthassuite` (
  `tenPhoneNum` varchar(255) NOT NULL,
  `suiteId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenanthassuite`
--

INSERT INTO `tenanthassuite` (`tenPhoneNum`, `suiteId`) VALUES
('6870452139', 1),
('6087294351', 2),
('7563819240', 3),
('7421890536', 4),
('2467913508', 5),
('7777777777', 5),
('8888888888', 5),
('9999999999', 5),
('7391256408', 6),
('5027431968', 7),
('1789462035', 8),
('3506472981', 9),
('5941683702', 10),
('7640825319', 11),
('7286014395', 12),
('6387942150', 13),
('6578913420', 14),
('7526438910', 15),
('9642831750', 16),
('3142560789', 17),
('3579106824', 18),
('6189425703', 19),
('2570841369', 20),
('7639021485', 21),
('1806472935', 22),
('6150482379', 23),
('324956781', 24),
('2901863457', 25),
('2379061854', 26),
('4719068532', 27),
('7158026934', 28),
('2730914856', 29),
('279586431', 30),
('9804312657', 31),
('8025319674', 32),
('5480371692', 33),
('1538946270', 34),
('4720985613', 35),
('2691857034', 36),
('2364571809', 37),
('4932657108', 38),
('8356912470', 39),
('3217860945', 40),
('2596718304', 41),
('5028947316', 42),
('7206419835', 43),
('2653078149', 44),
('3086521974', 45),
('7259801436', 46),
('5984307261', 47),
('631498725', 48),
('6413579028', 49),
('5362019784', 50),
('4017659823', 51),
('9405271836', 52),
('1435907628', 53),
('5702691384', 54),
('8946715203', 55),
('7983412560', 56),
('9718625430', 57),
('2957614083', 58),
('4129857063', 59),
('8145762930', 60),
('4501823679', 61),
('2637185940', 62),
('5146298703', 63),
('4567391280', 64),
('8251936470', 65),
('4658790132', 66),
('4327091586', 67),
('8359620741', 68),
('352148697', 69),
('1639802457', 70),
('1209368547', 71),
('5719248360', 72),
('7396845012', 73),
('6402813975', 74),
('1259408376', 75),
('3062479518', 76),
('7219384506', 77),
('8945132760', 78),
('5471620398', 79),
('9341056287', 80),
('3614529870', 81),
('7865149203', 82),
('2869451703', 83),
('1567932480', 84),
('9725630184', 85),
('4017869235', 86),
('1084359726', 87),
('8216905473', 88),
('6971452038', 89),
('8320195674', 90),
('8426370951', 91),
('1628035749', 92),
('4152679038', 93),
('9284710635', 94),
('126953847', 95),
('4209376518', 96),
('6285304197', 97),
('4826517093', 98),
('4102958736', 99),
('4273569081', 100),
('389617524', 101),
('8715963420', 102),
('253948671', 103),
('1230478596', 104),
('7529341860', 105),
('2986154037', 106),
('3476280195', 107),
('6582340917', 108),
('5294716380', 109),
('4650197328', 110),
('3128065749', 111),
('7465320819', 112),
('5602149837', 113),
('7061249853', 114),
('2222222222', 115),
('3333333333', 115),
('4444444444', 115),
('5076381942', 115),
('5555555555', 115),
('6666666666', 115),
('4579612038', 116),
('1111111111', 117),
('7849032165', 117),
('8659240317', 118),
('9021847563', 119),
('7540329861', 120),
('8297410635', 121),
('357814926', 122),
('4702593861', 123),
('5362489170', 123),
('9452387601', 123);

-- --------------------------------------------------------

--
-- Table structure for table `tenanthobbies`
--

CREATE TABLE `tenanthobbies` (
  `tenantPhoneNumber` varchar(255) NOT NULL,
  `hobbyName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenanthobbies`
--

INSERT INTO `tenanthobbies` (`tenantPhoneNumber`, `hobbyName`) VALUES
('1084359726', 'Digital Photography\r'),
('1111111111', 'Beatboxing\r'),
('1209368547', 'Backpacking\r'),
('1230478596', 'Aircraft Spotting\r'),
('1259408376', 'Basketball\r'),
('126953847', 'Drama\r'),
('1435907628', 'American football\r'),
('1435907628', 'Educational Courses\r'),
('1538946270', 'Base Jumping\r'),
('1538946270', 'Electronics\r'),
('1567932480', 'Deltiology (postcard collecting)\r'),
('1628035749', 'Dolls\r'),
('1639802457', 'Backgammon\r'),
('1789462035', 'Bus spotting\r'),
('1806472935', 'Do it yourself\r'),
('2222222222', 'Beatboxing\r'),
('2364571809', 'Baton Twirling\r'),
('2364571809', 'Entertaining\r'),
('2379061854', 'Dominoes\r'),
('2467913508', 'Bringing Food To The Disabled\r'),
('253948671', 'Airbrushing\r'),
('2570841369', 'Digital Photography\r'),
('2596718304', 'Beadwork\r'),
('2596718304', 'Falconry\r'),
('2637185940', 'Arts\r'),
('2653078149', 'Aeromodeling\r'),
('2653078149', 'Beatboxing\r'),
('2691857034', 'Basketball\r'),
('2691857034', 'Embroidery\r'),
('2730914856', 'Drawing\r'),
('279586431', 'Auto racing\r'),
('279586431', 'Driving\r'),
('2869451703', 'Beekeeping\r'),
('2901863457', 'Dolls\r'),
('2957614083', 'Aqua-lung\r'),
('2986154037', 'Airsofting\r'),
('3062479518', 'Baton Twirling\r'),
('3086521974', 'Air sports\r'),
('3086521974', 'Becoming A Child Advocate\r'),
('3128065749', 'Animal fancy\r'),
('3142560789', 'Card collecting\r'),
('3217860945', 'Beachcombing\r'),
('3217860945', 'Exhibition drill\r'),
('324956781', 'Dog sport\r'),
('3333333333', 'Beatboxing\r'),
('3476280195', 'Amateur astronomy\r'),
('3506472981', 'Butterfly Watching\r'),
('352148697', 'Auto racing\r'),
('357814926', 'Astronomy\r'),
('3579106824', 'Diecast Collectibles\r'),
('3614529870', 'Beatboxing\r'),
('389617524', 'Electronics\r'),
('4017659823', 'Amateur geology\r'),
('4017659823', 'Dumpster Diving\r'),
('4017869235', 'Digital arts\r'),
('4102958736', 'Eating out\r'),
('4129857063', 'Aquarium (Freshwater & Saltwater)\r'),
('4152679038', 'Dominoes\r'),
('4209376518', 'Drawing\r'),
('4273569081', 'Educational Courses\r'),
('4327091586', 'Australian rules football\r'),
('4444444444', 'Beatboxing\r'),
('4501823679', 'Art collecting\r'),
('4567391280', 'Astrology\r'),
('4579612038', 'Aquarium (Freshwater & Saltwater)\r'),
('4650197328', 'American football\r'),
('4658790132', 'Audiophilia\r'),
('4702593861', 'Australian rules football\r'),
('4719068532', 'Dowsing\r'),
('4720985613', 'Baseball\r'),
('4720985613', 'Element collecting\r'),
('4826517093', 'Dumpster Diving\r'),
('4932657108', 'Beach Volleyball\r'),
('4932657108', 'Equestrianism\r'),
('5027431968', 'Building Dollhouses\r'),
('5028947316', '3D printing\r'),
('5076381942', 'Aqua-lung\r'),
('5146298703', 'Association football\r'),
('5294716380', 'Amateur Radio\r'),
('5362019784', 'Amateur astronomy\r'),
('5362019784', 'Driving\r'),
('5362489170', 'Auto audiophilia\r'),
('5471620398', 'Beachcombing\r'),
('5480371692', 'Badminton\r'),
('5480371692', 'Educational Courses\r'),
('5555555555', 'Beatboxing\r'),
('5602149837', 'Antiquing\r'),
('5702691384', 'Animal fancy\r'),
('5702691384', 'Electronics\r'),
('5719248360', 'Badminton\r'),
('5941683702', 'Button Collecting\r'),
('5984307261', 'Aircraft Spotting\r'),
('5984307261', 'Dowsing\r'),
('6087294351', 'Brewing Beer\r'),
('6150482379', 'Dodgeball\r'),
('6189425703', 'Digital arts\r'),
('6285304197', 'Driving\r'),
('631498725', 'Airsoft\r'),
('631498725', 'Drama\r'),
('6387942150', 'Camping\r'),
('6402813975', 'Baseball\r'),
('6413579028', 'Airsofting\r'),
('6413579028', 'Drawing\r'),
('6578913420', 'Candle making\r'),
('6582340917', 'Amateur geology\r'),
('6666666666', 'Beatboxing\r'),
('6870452139', 'Breakdancing\r'),
('6971452038', 'Do it yourself\r'),
('7061249853', 'Antiquities\r'),
('7158026934', 'Drama\r'),
('7206419835', 'Acting\r'),
('7219384506', 'Beach Volleyball\r'),
('7259801436', 'Airbrushing\r'),
('7259801436', 'Dominoes\r'),
('7286014395', 'Calligraphy\r'),
('7391256408', 'Building A House For Habitat For Humanity\r'),
('7396845012', 'Base Jumping\r'),
('7421890536', 'Bridge Building\r'),
('7465320819', 'Animals/pets/dogs\r'),
('7526438910', 'Canoeing\r'),
('7529341860', 'Airsoft\r'),
('7540329861', 'Association football\r'),
('7563819240', 'Bridge\r'),
('7639021485', 'Disc golf\r'),
('7640825319', 'Cake Decorating\r'),
('7777777777', 'Beatboxing\r'),
('7849032165', 'Archery\r'),
('7865149203', 'Becoming A Child Advocate\r'),
('7983412560', 'Antiquing\r'),
('8025319674', 'Backpacking\r'),
('8025319674', 'Eating out\r'),
('8145762930', 'Archery\r'),
('8216905473', 'Disc golf\r'),
('8251936470', 'Astronomy\r'),
('8297410635', 'Astrology\r'),
('8320195674', 'Dodgeball\r'),
('8356912470', '"Exercise (aerobics'),
('8356912470', 'Beach/Sun tanning\r'),
('8359620741', 'Auto audiophilia\r'),
('8426370951', 'Dog sport\r'),
('8659240317', 'Art collecting\r'),
('8715963420', 'Air sports\r'),
('8888888888', 'Aircraft Spotting\r'),
('8945132760', 'Beach/Sun tanning\r'),
('8946715203', 'Air sports\r'),
('8946715203', 'Animals/pets/dogs\r'),
('9021847563', 'Arts\r'),
('9284710635', 'Dowsing\r'),
('9341056287', 'Beadwork\r'),
('9405271836', 'Amateur Radio\r'),
('9405271836', 'Eating out\r'),
('9452387601', 'Audiophilia\r'),
('9642831750', 'Car Racing\r'),
('9718625430', 'Antiquities\r'),
('9725630184', 'Diecast Collectibles\r'),
('9804312657', 'Backgammon\r'),
('9804312657', 'Dumpster Diving\r'),
('9999999999', 'Aircraft Spotting\r');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `modeName` varchar(25) NOT NULL,
  `route` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`modeName`, `route`) VALUES
('ACE', 1),
('BART', 1),
('BART', 2),
('BART', 3),
('BART', 4),
('BART', 5),
('BART', 6),
('CalTrain', 101),
('VTA', 901),
('VTA', 902);

-- --------------------------------------------------------

--
-- Table structure for table `trainstops`
--

CREATE TABLE `trainstops` (
  `modeName` varchar(255) NOT NULL,
  `route` int(11) NOT NULL,
  `stopName` varchar(255) NOT NULL,
  `stopTime` varchar(255) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainstops`
--

INSERT INTO `trainstops` (`modeName`, `route`, `stopName`, `stopTime`, `longitude`, `latitude`) VALUES
('ACE', 1, 'San Jose Diridon Station', '9:04A', -121.902547, 37.329609),
('ACE', 1, 'Stockton', '10:13A', -121.278891, 37.957026),
('BART', 1, 'Milbrae', '3:00P', -122.3875, 37.600377),
('BART', 1, 'Richmond', '2:00P', -122.353174, 37.936833),
('BART', 2, 'Fremont', '2:15P', -121.976762, 37.557385),
('BART', 2, 'Richmond', '3:15P', -122.353174, 37.936833),
('BART', 3, 'Daly City', '8:20P', -122.452385, 37.690456),
('BART', 3, 'Fremont', '6:56A', -121.976762, 37.557385),
('BART', 4, 'Pittsburg/Baypointe', '3:45P', -121.945624, 38.015514),
('BART', 4, 'SFO-Milbrae', '4:32P', -122.3875, 37.600377),
('BART', 5, 'Daly City', '8:03A', -122.452385, 37.690456),
('BART', 5, 'Dublin/Pleasanton', '7:12A', -121.89678, 37.700654),
('BART', 6, 'Coliseum', '7:29A', -122.19689, 37.75367),
('BART', 6, 'Oakland International Airport', '7:45A', -122.295158, 37.804819),
('CalTrain', 101, 'San Francisco', '6:03P', -122.394706, 37.776665),
('CalTrain', 101, 'San Jose Diridon Station', '4:30P', -122.295158, 37.804819),
('VTA', 901, 'Alum Rock', '3:11P', -121.850568, 37.355863),
('VTA', 901, 'Santa Theresa Light Rail Station', '1:54P', -121.782228, 37.231816),
('VTA', 902, 'Mountain View Station', '9:27A', -122.076644, 37.393771),
('VTA', 902, 'Winchester Station', '8:18A', -121.952999, 37.277003);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`longitude`,`latitude`);

--
-- Indexes for table `apthasschool`
--
ALTER TABLE `apthasschool`
  ADD PRIMARY KEY (`aptLongitude`,`aptLatitude`,`schoolLongitude`,`schoolLatitude`),
  ADD KEY `schoolLongitude` (`schoolLongitude`,`schoolLatitude`);

--
-- Indexes for table `apthasstore`
--
ALTER TABLE `apthasstore`
  ADD PRIMARY KEY (`aptLongitude`,`aptLatitude`,`storeLongitude`,`storeLatitude`),
  ADD KEY `storeLongitude` (`storeLongitude`,`storeLatitude`);

--
-- Indexes for table `apthassuites`
--
ALTER TABLE `apthassuites`
  ADD PRIMARY KEY (`suiteId`),
  ADD KEY `aptLongitude` (`aptLongitude`,`aptLatitude`);

--
-- Indexes for table `apthastrans`
--
ALTER TABLE `apthastrans`
  ADD PRIMARY KEY (`aptLongitude`,`aptLatitude`,`modeName`),
  ADD KEY `modeName` (`modeName`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`modeName`,`route`);

--
-- Indexes for table `busstops`
--
ALTER TABLE `busstops`
  ADD PRIMARY KEY (`modeName`,`route`,`stopName`,`stopTime`,`longitude`,`latitude`),
  ADD KEY `stopName` (`stopName`,`stopTime`,`longitude`,`latitude`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeLevel`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modeoftransportation`
--
ALTER TABLE `modeoftransportation`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `schoolsystemhasgrades`
--
ALTER TABLE `schoolsystemhasgrades`
  ADD PRIMARY KEY (`schoolLongitude`,`schoolLatitude`,`gradeLevel`),
  ADD KEY `gradeLevel` (`gradeLevel`);

--
-- Indexes for table `schoolsystems`
--
ALTER TABLE `schoolsystems`
  ADD PRIMARY KEY (`longitude`,`latitude`);

--
-- Indexes for table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`name`,`stopTime`,`longitude`,`latitude`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`longitude`,`latitude`);

--
-- Indexes for table `suite`
--
ALTER TABLE `suite`
  ADD PRIMARY KEY (`suiteId`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`phoneNumber`);

--
-- Indexes for table `tenanthassuite`
--
ALTER TABLE `tenanthassuite`
  ADD PRIMARY KEY (`tenPhoneNum`),
  ADD KEY `suiteId` (`suiteId`);

--
-- Indexes for table `tenanthobbies`
--
ALTER TABLE `tenanthobbies`
  ADD PRIMARY KEY (`tenantPhoneNumber`,`hobbyName`),
  ADD KEY `hobbyName` (`hobbyName`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`modeName`,`route`);

--
-- Indexes for table `trainstops`
--
ALTER TABLE `trainstops`
  ADD PRIMARY KEY (`modeName`,`route`,`stopName`,`stopTime`,`longitude`,`latitude`),
  ADD KEY `stopName` (`stopName`,`stopTime`,`longitude`,`latitude`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `suite`
--
ALTER TABLE `suite`
  MODIFY `suiteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `apthasschool`
--
ALTER TABLE `apthasschool`
  ADD CONSTRAINT `apthasschool_ibfk_1` FOREIGN KEY (`aptLongitude`,`aptLatitude`) REFERENCES `apartment` (`longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apthasschool_ibfk_2` FOREIGN KEY (`schoolLongitude`,`schoolLatitude`) REFERENCES `schoolsystems` (`longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apthasstore`
--
ALTER TABLE `apthasstore`
  ADD CONSTRAINT `apthasstore_ibfk_1` FOREIGN KEY (`aptLongitude`,`aptLatitude`) REFERENCES `apartment` (`longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apthasstore_ibfk_2` FOREIGN KEY (`storeLongitude`,`storeLatitude`) REFERENCES `stores` (`longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apthassuites`
--
ALTER TABLE `apthassuites`
  ADD CONSTRAINT `apthassuites_ibfk_1` FOREIGN KEY (`aptLongitude`,`aptLatitude`) REFERENCES `apartment` (`longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apthassuites_ibfk_2` FOREIGN KEY (`suiteId`) REFERENCES `suite` (`suiteId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apthastrans`
--
ALTER TABLE `apthastrans`
  ADD CONSTRAINT `apthastrans_ibfk_1` FOREIGN KEY (`aptLongitude`,`aptLatitude`) REFERENCES `apartment` (`longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apthastrans_ibfk_2` FOREIGN KEY (`modeName`) REFERENCES `modeoftransportation` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `busstops`
--
ALTER TABLE `busstops`
  ADD CONSTRAINT `busstops_ibfk_1` FOREIGN KEY (`modeName`,`route`) REFERENCES `bus` (`modeName`, `route`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `busstops_ibfk_2` FOREIGN KEY (`stopName`,`stopTime`,`longitude`,`latitude`) REFERENCES `stops` (`name`, `stopTime`, `longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schoolsystemhasgrades`
--
ALTER TABLE `schoolsystemhasgrades`
  ADD CONSTRAINT `schoolsystemhasgrades_ibfk_1` FOREIGN KEY (`schoolLongitude`,`schoolLatitude`) REFERENCES `schoolsystems` (`longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schoolsystemhasgrades_ibfk_2` FOREIGN KEY (`gradeLevel`) REFERENCES `grade` (`gradeLevel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tenanthassuite`
--
ALTER TABLE `tenanthassuite`
  ADD CONSTRAINT `tenanthassuite_ibfk_1` FOREIGN KEY (`tenPhoneNum`) REFERENCES `tenant` (`phoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenanthassuite_ibfk_2` FOREIGN KEY (`suiteId`) REFERENCES `suite` (`suiteId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tenanthobbies`
--
ALTER TABLE `tenanthobbies`
  ADD CONSTRAINT `tenanthobbies_ibfk_1` FOREIGN KEY (`tenantPhoneNumber`) REFERENCES `tenant` (`phoneNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenanthobbies_ibfk_2` FOREIGN KEY (`hobbyName`) REFERENCES `hobbies` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainstops`
--
ALTER TABLE `trainstops`
  ADD CONSTRAINT `trainstops_ibfk_1` FOREIGN KEY (`modeName`,`route`) REFERENCES `train` (`modeName`, `route`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trainstops_ibfk_2` FOREIGN KEY (`stopName`,`stopTime`,`longitude`,`latitude`) REFERENCES `stops` (`name`, `stopTime`, `longitude`, `latitude`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
