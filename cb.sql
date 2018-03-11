-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2018 at 03:59 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `usrid` varchar(20) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(256) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  UNIQUE KEY `usrid` (`usrid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`usrid`, `fname`, `lname`, `gender`, `email`, `contact`, `address`, `passwd`) VALUES
('GO-1499531747062', 'Guba', 'Op', NULL, 'jk@lk.ko', '7845122356', 'llllllllllljdjjf', 'abcdef'),
('SB-1499531945819', 'Subia', 'Basi', NULL, 'Dubu@juku.kl', '7845125689', 'Subhianaka', 'abcdef'),
('tt-1499720990757', 'test', 'test', NULL, 'test@test.test', '9876543210', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id` varchar(20) NOT NULL,
  `usrid` varchar(20) NOT NULL,
  `source` varchar(256) NOT NULL,
  `destination` varchar(256) NOT NULL,
  `pick_date` date NOT NULL,
  `pick_time` time NOT NULL,
  `distance` varchar(5) NOT NULL,
  `est_time` varchar(10) NOT NULL,
  `car_id` varchar(20) NOT NULL,
  `base_fare` decimal(10,2) NOT NULL,
  `distance_fare` decimal(10,2) NOT NULL,
  `extra_fare` decimal(6,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `payment_type` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--


-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `car_id` varchar(20) NOT NULL,
  `car_type` varchar(128) NOT NULL,
  `car_model` varchar(128) NOT NULL,
  `car_name` varchar(128) NOT NULL,
  `car_image` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_type`, `car_model`, `car_name`, `car_image`) VALUES
('1', 'Sedan', 'Mercury', 'Topaz', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('2', 'Jeep', 'Ford', 'F-Series', 'http://dummyimage.com/200x120.jpg/cc0000/ffffff'),
('3', 'Royal', 'Kia', 'Sorento', 'http://dummyimage.com/200x120.jpg/cc0000/ffffff'),
('4', 'Jeep', 'Chevrolet', 'Astro', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('5', 'Luxury', 'Ford', 'Mustang', 'http://dummyimage.com/200x120.bmp/cc0000/ffffff'),
('6', 'Luxury', 'Chrysler', 'Pacifica', 'http://dummyimage.com/200x120.bmp/5fa2dd/ffffff'),
('7', 'Luxury', 'Toyota', 'Sequoia', 'http://dummyimage.com/200x120.png/ff4444/ffffff'),
('8', 'Prime', 'Aston Martin', 'Vantage', 'http://dummyimage.com/200x120.png/ff4444/ffffff'),
('9', 'Royal', 'Saab', '9-3', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('10', 'Luxury', 'Saturn', 'Ion', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('11', 'Prime', 'Chevrolet', 'Lumina', 'http://dummyimage.com/200x120.bmp/5fa2dd/ffffff'),
('12', 'Luxury', 'GMC', 'Rally Wagon 3500', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('13', 'Prime', 'Chevrolet', '2500', 'http://dummyimage.com/200x120.jpg/ff4444/ffffff'),
('14', 'Jeep', 'Volvo', 'V40', 'http://dummyimage.com/200x120.jpg/ff4444/ffffff'),
('15', 'Prime', 'Hyundai', 'Scoupe', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('16', 'Luxury', 'Honda', 'S2000', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('17', 'Sedan', 'Lincoln', 'Navigator', 'http://dummyimage.com/200x120.bmp/ff4444/ffffff'),
('18', 'Prime', 'GMC', 'Yukon', 'http://dummyimage.com/200x120.bmp/cc0000/ffffff'),
('19', 'Royal', 'Land Rover', 'Defender', 'http://dummyimage.com/200x120.bmp/ff4444/ffffff'),
('20', 'Jeep', 'Chevrolet', 'Cavalier', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('21', 'Royal', 'Ford', 'Thunderbird', 'http://dummyimage.com/200x120.png/ff4444/ffffff'),
('22', 'Luxury', 'Mitsubishi', 'Montero Sport', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('23', 'Prime', 'Jeep', 'Cherokee', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('24', 'Royal', 'Ford', 'Thunderbird', 'http://dummyimage.com/200x120.bmp/5fa2dd/ffffff'),
('25', 'Jeep', 'Chevrolet', 'Corvette', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('26', 'Prime', 'Oldsmobile', 'Cutlass Supreme', 'http://dummyimage.com/200x120.jpg/ff4444/ffffff'),
('27', 'Prime', 'Ford', 'E-Series', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('28', 'Royal', 'Oldsmobile', 'Achieva', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('29', 'Luxury', 'Audi', 'S8', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('30', 'Sedan', 'Mercedes-Benz', '190E', 'http://dummyimage.com/200x120.bmp/5fa2dd/ffffff'),
('31', 'Prime', 'Lincoln', 'Mark VIII', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('32', 'Royal', 'Dodge', 'Dynasty', 'http://dummyimage.com/200x120.jpg/cc0000/ffffff'),
('33', 'Sedan', 'Hummer', 'H1', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('34', 'Royal', 'Chevrolet', 'Silverado 1500', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('35', 'Prime', 'Land Rover', 'Freelander', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('36', 'Luxury', 'Nissan', 'Altima', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('37', 'Prime', 'Lincoln', 'LS', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('38', 'Prime', 'Ford', 'Econoline E350', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('39', 'Jeep', 'Mercedes-Benz', 'S-Class', 'http://dummyimage.com/200x120.bmp/cc0000/ffffff'),
('40', 'Royal', 'Subaru', 'B9 Tribeca', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('41', 'Jeep', 'BMW', '745', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('42', 'Royal', 'Nissan', 'Frontier', 'http://dummyimage.com/200x120.bmp/5fa2dd/ffffff'),
('43', 'Luxury', 'Hummer', 'H1', 'http://dummyimage.com/200x120.png/ff4444/ffffff'),
('44', 'Prime', 'Volvo', 'C70', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('45', 'Prime', 'Honda', 'Civic Si', 'http://dummyimage.com/200x120.bmp/5fa2dd/ffffff'),
('46', 'Jeep', 'Chevrolet', 'Colorado', 'http://dummyimage.com/200x120.png/ff4444/ffffff'),
('47', 'Royal', 'Dodge', 'Dakota Club', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('48', 'Prime', 'Nissan', '350Z', 'http://dummyimage.com/200x120.bmp/cc0000/ffffff'),
('49', 'Jeep', 'Ford', 'Mustang', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('50', 'Jeep', 'Nissan', 'Armada', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('51', 'Prime', 'Isuzu', 'i-370', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('52', 'Sedan', 'Pontiac', 'Grand Prix', 'http://dummyimage.com/200x120.bmp/ff4444/ffffff'),
('53', 'Jeep', 'Nissan', 'Altima', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('54', 'Sedan', 'Chevrolet', 'Suburban 2500', 'http://dummyimage.com/200x120.png/ff4444/ffffff'),
('55', 'Sedan', 'Jeep', 'Compass', 'http://dummyimage.com/200x120.png/ff4444/ffffff'),
('56', 'Jeep', 'Nissan', 'Pathfinder', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('57', 'Sedan', 'Chevrolet', 'Express 1500', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('58', 'Jeep', 'Saab', '900', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('59', 'Sedan', 'Chevrolet', 'Camaro', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('60', 'Luxury', 'Toyota', '4Runner', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('61', 'Luxury', 'Ford', 'EXP', 'http://dummyimage.com/200x120.bmp/ff4444/ffffff'),
('62', 'Royal', 'Subaru', 'Legacy', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('63', 'Jeep', 'Mitsubishi', 'Eclipse', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('64', 'Sedan', 'Maserati', '430', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('65', 'Prime', 'Toyota', 'Highlander', 'http://dummyimage.com/200x120.png/ff4444/ffffff'),
('66', 'Luxury', 'Acura', 'TL', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('67', 'Royal', 'Lexus', 'RX', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('68', 'Jeep', 'Cadillac', 'Seville', 'http://dummyimage.com/200x120.bmp/ff4444/ffffff'),
('69', 'Prime', 'GMC', 'Savana 3500', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('70', 'Jeep', 'Toyota', 'MR2', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('71', 'Luxury', 'Volvo', 'C30', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('72', 'Sedan', 'Hyundai', 'Tucson', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('73', 'Sedan', 'Volkswagen', 'GTI', 'http://dummyimage.com/200x120.jpg/cc0000/ffffff'),
('74', 'Jeep', 'Bentley', 'Continental', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('75', 'Luxury', 'Mitsubishi', 'Galant', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('76', 'Royal', 'Cadillac', 'DeVille', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('77', 'Sedan', 'Chrysler', 'PT Cruiser', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('78', 'Royal', 'Ford', 'Festiva', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('79', 'Royal', 'Audi', 'A8', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('80', 'Sedan', 'Volkswagen', 'Tiguan', 'http://dummyimage.com/200x120.jpg/cc0000/ffffff'),
('81', 'Prime', 'Subaru', 'Forester', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('82', 'Royal', 'Ford', 'E350', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff'),
('83', 'Royal', 'Jeep', 'Liberty', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('84', 'Sedan', 'Mitsubishi', 'Starion', 'http://dummyimage.com/200x120.jpg/dddddd/000000'),
('85', 'Royal', 'Mitsubishi', 'Endeavor', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('86', 'Sedan', 'Mazda', 'MPV', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('87', 'Royal', 'Volkswagen', 'GTI', 'http://dummyimage.com/200x120.jpg/cc0000/ffffff'),
('88', 'Sedan', 'Chrysler', 'Town & Country', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('89', 'Royal', 'Jaguar', 'XJ', 'http://dummyimage.com/200x120.jpg/cc0000/ffffff'),
('90', 'Royal', 'BMW', '530', 'http://dummyimage.com/200x120.bmp/5fa2dd/ffffff'),
('91', 'Prime', 'Mercedes-Benz', 'SL-Class', 'http://dummyimage.com/200x120.jpg/5fa2dd/ffffff'),
('92', 'Luxury', 'Hyundai', 'Accent', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('93', 'Royal', 'Chevrolet', 'Silverado', 'http://dummyimage.com/200x120.bmp/ff4444/ffffff'),
('94', 'Prime', 'Chrysler', 'Aspen', 'http://dummyimage.com/200x120.png/dddddd/000000'),
('95', 'Luxury', 'Ford', 'Laser', 'http://dummyimage.com/200x120.png/cc0000/ffffff'),
('96', 'Luxury', 'Cadillac', 'CTS-V', 'http://dummyimage.com/200x120.bmp/ff4444/ffffff'),
('97', 'Jeep', 'Alfa Romeo', 'Spider', 'http://dummyimage.com/200x120.bmp/cc0000/ffffff'),
('98', 'Luxury', 'Infiniti', 'I', 'http://dummyimage.com/200x120.bmp/dddddd/000000'),
('99', 'Sedan', 'Suzuki', 'XL-7', 'http://dummyimage.com/200x120.jpg/cc0000/ffffff'),
('100', 'Royal', 'Lotus', 'Esprit', 'http://dummyimage.com/200x120.png/5fa2dd/ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE IF NOT EXISTS `fare` (
  `id` int(11) DEFAULT NULL,
  `city` varchar(27) DEFAULT NULL,
  `base_fare` varchar(50) DEFAULT NULL,
  `dist_fare` varchar(50) DEFAULT NULL,
  `ride_t_fare` varchar(50) DEFAULT NULL,
  `cancel_fee` varchar(50) DEFAULT NULL,
  `fare_type` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare`
--

INSERT INTO `fare` (`id`, `city`, `base_fare`, `dist_fare`, `ride_t_fare`, `cancel_fee`, `fare_type`) VALUES
(1, 'Jaipur', '186.70', '537.99', '981.22', '51.70', 'Standard'),
(2, 'Bhubaneswar', '396.62', '601.92', '978.57', '77.74', 'Standard'),
(3, 'Kodaikanal', '596.87', '122.41', '688.91', '52.13', 'Special'),
(4, 'Panchgani', '614.38', '875.55', '202.69', '84.03', 'Special'),
(5, 'Vrindhavan', '753.46', '668.21', '696.61', '88.72', 'Special'),
(6, 'Andaman and Nicobar Islands', '47.75', '876.88', '461.43', '70.54', 'Standard'),
(7, 'Goa', '383.54', '357.67', '433.88', '81.90', 'Standard'),
(8, 'Dehradun', '936.91', '949.36', '90.81', '67.60', 'Special'),
(9, 'Sanchi', '39.14', '32.12', '894.73', '10.73', 'Standard'),
(10, 'Khajuraho', '406.69', '752.91', '562.93', '37.85', 'Special'),
(11, 'Zanskar', '542.56', '546.45', '421.94', '20.51', 'Special'),
(12, 'Thanjavur', '713.77', '545.94', '407.24', '26.59', 'Standard'),
(13, 'Gurgaon', '312.17', '75.74', '185.58', '18.45', 'Standard'),
(14, 'Mahabalipuram', '93.92', '439.11', '137.41', '33.79', 'Special'),
(15, 'Patnitop', '633.53', '795.91', '858.70', '19.39', 'Special'),
(16, 'Jabalpur', '977.36', '578.63', '824.29', '98.84', 'Standard'),
(17, 'Hyderabad', '327.99', '44.69', '298.95', '77.81', 'Special'),
(18, 'Warangal', '446.77', '767.20', '907.18', '55.59', 'Standard'),
(19, 'Sunderbans', '895.87', '156.51', '215.83', '21.18', 'Standard'),
(20, 'Ooty', '750.94', '246.01', '871.64', '15.46', 'Standard'),
(21, 'Ooty', '892.77', '685.07', '67.80', '50.75', 'Standard'),
(22, 'Tirunelveli', '797.28', '783.15', '770.40', '16.41', 'Standard'),
(23, 'Raipur', '740.18', '288.87', '757.29', '97.25', 'Special'),
(24, 'Mussoorie', '304.58', '98.89', '454.87', '38.00', 'Standard'),
(25, 'Gurgaon', '554.51', '207.58', '520.10', '60.67', 'Standard'),
(26, 'Udaipur', '10.60', '904.94', '873.99', '80.84', 'Standard'),
(27, 'Gurgaon', '801.16', '226.25', '211.76', '89.21', 'Standard'),
(28, 'Jaipur', '808.14', '574.55', '75.76', '54.92', 'Standard'),
(29, 'Agumbe', '936.42', '689.64', '819.21', '56.45', 'Standard'),
(30, 'Gurgaon', '178.33', '954.97', '586.45', '4.17', 'Special'),
(31, 'Kotagiri', '714.12', '926.65', '272.33', '9.52', 'Standard'),
(32, 'Cherrapunji', '93.48', '425.72', '495.22', '95.43', 'Special'),
(33, 'Mahabalipuram', '733.55', '876.97', '750.41', '4.30', 'Standard'),
(34, 'Mahabalipuram', '984.01', '89.11', '288.57', '97.37', 'Standard'),
(35, 'Warangal', '765.37', '221.51', '226.11', '72.93', 'Standard'),
(36, 'Bangalore', '43.83', '966.16', '471.71', '26.50', 'Standard'),
(37, 'Jodhpur', '907.83', '152.59', '863.20', '77.48', 'Standard'),
(38, 'Vijayawada', '647.24', '85.97', '482.03', '35.71', 'Standard'),
(39, 'Vrindhavan', '87.18', '629.21', '966.42', '74.78', 'Standard'),
(40, 'Konark', '965.04', '0.50', '397.56', '89.45', 'Special'),
(41, 'Bhuj', '674.74', '423.91', '719.62', '82.63', 'Standard'),
(42, 'Faridabad', '281.78', '584.95', '653.03', '60.88', 'Standard'),
(43, 'Warangal', '380.99', '99.29', '402.36', '51.05', 'Special'),
(44, 'Delhi', '113.20', '133.55', '800.07', '16.42', 'Special'),
(45, 'Chennai', '903.04', '386.99', '32.83', '38.62', 'Special'),
(46, 'Trichy', '475.40', '408.08', '319.36', '60.90', 'Special'),
(47, 'Tezpur', '466.82', '332.26', '25.05', '68.24', 'Special'),
(48, 'Madurai', '859.56', '703.20', '182.62', '81.06', 'Standard'),
(49, 'Gurgaon', '169.49', '915.36', '798.79', '93.25', 'Special'),
(50, 'Kanchipuram', '460.80', '903.54', '210.36', '9.53', 'Standard'),
(51, 'Palakkad', '521.69', '336.80', '291.83', '20.75', 'Special'),
(52, 'Gandhinagar', '819.41', '665.32', '423.80', '51.68', 'Special'),
(53, 'Kolkata', '381.18', '856.29', '491.83', '84.61', 'Standard'),
(54, 'Daman and Diu', '411.93', '109.95', '197.48', '41.88', 'Standard'),
(55, 'Mussoorie', '560.76', '768.30', '501.41', '10.13', 'Special'),
(56, 'Bhagalpur', '825.94', '780.14', '211.94', '55.45', 'Special'),
(57, 'Orchha', '748.64', '180.56', '374.76', '32.37', 'Special'),
(58, 'Wayanad', '945.16', '428.27', '931.05', '14.14', 'Standard'),
(59, 'Vijayawada', '454.80', '24.94', '566.00', '98.16', 'Standard'),
(60, 'Wayanad', '995.94', '451.48', '149.10', '82.84', 'Special'),
(61, 'Badrinath', '343.59', '336.83', '812.76', '70.24', 'Standard'),
(62, 'Vrindhavan', '500.76', '163.67', '460.09', '10.12', 'Special'),
(63, 'Kullu', '413.47', '601.69', '576.53', '17.13', 'Standard'),
(64, 'Kolkata', '878.92', '929.06', '482.47', '43.23', 'Standard'),
(65, 'Trichy', '980.26', '428.25', '985.03', '64.06', 'Special'),
(66, 'Baroda', '904.27', '975.50', '118.45', '75.67', 'Special'),
(67, 'Thiruvananthapuram', '389.47', '389.97', '142.23', '44.19', 'Special'),
(68, 'Vrindhavan', '602.00', '787.41', '568.42', '99.07', 'Special'),
(69, 'Jaipur', '893.63', '404.04', '507.81', '15.05', 'Standard'),
(70, 'Kollam', '205.29', '962.14', '367.87', '80.54', 'Standard'),
(71, 'Ahmedabad', '669.61', '604.22', '785.04', '49.34', 'Special'),
(72, 'Pondicherry', '424.52', '454.74', '560.20', '46.73', 'Special'),
(73, 'Ooty', '642.73', '512.19', '67.46', '9.58', 'Special'),
(74, 'Mumbai', '50.10', '779.87', '143.15', '18.86', 'Special'),
(75, 'Chandigarh', '327.70', '125.27', '410.61', '37.65', 'Standard'),
(76, 'Kanpur', '53.59', '560.80', '115.79', '71.21', 'Standard'),
(77, 'Delhi', '138.82', '705.99', '331.38', '93.84', 'Special'),
(78, 'Rameshwaram', '41.44', '338.09', '211.76', '22.50', 'Standard'),
(79, 'Jammu', '302.05', '444.75', '205.20', '16.07', 'Standard'),
(80, 'Rameshwaram', '808.09', '542.68', '751.51', '80.47', 'Standard'),
(81, 'Calicut', '201.09', '684.68', '431.32', '60.46', 'Standard'),
(82, 'Ranikhet', '594.23', '468.44', '898.48', '84.93', 'Standard'),
(83, 'Udaipur', '613.49', '587.37', '875.65', '23.07', 'Special'),
(84, 'Warangal', '791.37', '721.64', '31.95', '95.48', 'Standard'),
(85, 'Shillong', '884.00', '778.39', '508.36', '62.02', 'Special'),
(86, 'Agumbe', '465.43', '242.04', '631.74', '67.13', 'Standard'),
(87, 'Surat', '484.38', '161.16', '213.71', '19.96', 'Special'),
(88, 'Jodhpur', '678.48', '314.46', '406.00', '2.42', 'Special'),
(89, 'Orchha', '971.35', '76.26', '365.18', '18.68', 'Standard'),
(90, 'Shimla', '573.88', '533.30', '33.73', '4.75', 'Standard'),
(91, 'Sanchi', '544.68', '252.96', '263.12', '69.85', 'Standard'),
(92, 'Ooty', '426.80', '90.45', '183.12', '28.89', 'Special'),
(93, 'Jaipur', '902.75', '534.53', '429.97', '83.05', 'Special'),
(94, 'Shimla', '27.86', '394.27', '832.50', '27.30', 'Standard'),
(95, 'Orchha', '618.74', '97.14', '482.70', '78.01', 'Special'),
(96, 'Rameshwaram', '253.71', '572.54', '853.04', '26.81', 'Special'),
(97, 'Faridabad', '821.25', '429.05', '722.43', '37.30', 'Standard'),
(98, 'Kotagiri', '899.40', '788.73', '112.17', '38.55', 'Standard'),
(99, 'Gandhinagar', '58.66', '926.68', '235.41', '10.81', 'Standard'),
(100, 'Udaipur', '936.45', '666.12', '994.73', '76.65', 'Standard');
