-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 12:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_code` char(10) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_year` char(10) NOT NULL,
  `lec_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_code`, `sub_name`, `sub_year`, `lec_id`) VALUES
('scs0023', 'Statistic', '2', 'Le005'),
('scs0058', 'OOP Concepts', '1', 'Le003'),
('scs0096', 'Management', '3', 'Le001'),
('scs0098', 'Programming C', '1', 'Le002');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `year` char(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `contact` char(10) DEFAULT NULL,
  `img` longtext DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `role_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `fname`, `lname`, `email`, `password`, `year`, `birthday`, `contact`, `img`, `gender`, `role_id`) VALUES
('Ad001', '', '', 'admin1@gmail.com', '5a5a9e124f0d0c9b62ae48a144cbf027d54426d2', NULL, NULL, NULL, 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', NULL, '3'),
('Ad002', '', '', 'admin2@gmail.com', '64b41a1102bae4bb7e85c7eb3ad21133f3bf7c65', NULL, NULL, NULL, 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', NULL, '3'),
('Ad003', '', '', 'admin3@gmail.com', '5d6256fa3b6209d9bcf03083517349a1118122bf', NULL, NULL, NULL, 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', NULL, '3'),
('Le001', 'Samantha', 'Perera', 'kasunip@gmail.com', '5fa339bbbb1eeaced3b52e54f44576aaf0d77d96', NULL, NULL, NULL, 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', NULL, '2'),
('Le002', 'Roshani', 'Samaranayake', 'rohan65@gmail.com', 'e00c2bff75240d3c2f01037069cc3c3a7c526b39', NULL, NULL, NULL, 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', NULL, '2'),
('Le003', 'Lalaniii', 'Dissanayake', 'lalanidisa@gmail.com', '5661cab7948256496a6bf5655d21db810f9a8e4a', NULL, NULL, NULL, 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', NULL, '2'),
('Le005', 'Tharaka', 'Perera', 'tharaka78@gmail.com', 'da9089c98408361f08f431a485fe2c73d49c18fd', NULL, NULL, NULL, 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', NULL, '2'),
('St001', 'Nayana', 'Perera', 'dmc@gmail.com', '35a1307e5488bc91f49e87dd1afd8841993d890f', '2', '1993-01-18', '0778945623', 'null', 'female', '1'),
('St002', 'Kalhara', 'Perera', 'kalhara@gmail.com', 'e56f111f4f6dbedd70f05b707abba4044863bd07', '3', '1998-01-19', '0776100709', 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', 'male', '1'),
('St003', 'Dushani', 'Maneesha', 'dmc96@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '3', '1996-07-18', '0776100709', 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO        9TXL0Y4OHwAAAABJRU5ErkJggg==', 'female', '1'),
('St004', 'Dulshan', 'Shavindra', 'dulshan@gmail.com', '2f170ebc409b598737ebe663825733ab97b414a4', '1', '1993-01-16', '0778596541', 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', 'male', '1'),
('St005', 'Ayesha', 'Madushani', 'ayesha98@gmail.com', '76bdd4a04a0ffb8cde97f9f3f31e4a79967fbfd1', '1', '1995-01-02', '0778512396', 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', 'female', '1'),
('St006', 'Limali', 'Fonseka', 'limali66@gmail.com', '9661fd2b5f11f9c5672b2b3de74889627b8a8878', '1', '1997-05-24', '0778691233', 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', 'female', '1'),
('St007', 'Rohan', 'Perera', 'dmc@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '1', '1996-01-13', '0778945623', 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', 'male', '1'),
('St008', 'Isuru', 'Nishan', 'isuru96@gmail.com', 'e1fafe3ffd442cbd062293b1d47580e7925eb1ba', '1', '1996-02-14', '0778945623', 'data:image/png;base64,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', 'male', '1'),
('St009', 'Dulani', 'Maheshi', 'dmc@gmail.com', '5fa339bbbb1eeaced3b52e54f44576aaf0d77d96', '2', '1995-01-04', '0778945623', 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', 'female', '1'),
('St010', 'Tharaka', 'Samaranayake', 'tharaka78@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '1', '1998-01-02', '0778596541', 'data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAAUA\r\n    AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO\r\n        9TXL0Y4OHwAAAABJRU5ErkJggg==', 'male', '1'),
('St016', 'Dulani', 'Maheshi', 'dmc96@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '1', '1996-01-10', '0778945623', 'data:image/jpg;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEX///8AAAChoaHe3t78/PzMzMzo6Oju7u74+PjT09OXl5fh4eHExMT09PQrKyu+vr6oqKhubm5/f3+MjIy1tbXZ2dmdnZ0ZGRlOTk5mZmYSEhKnp6d1dXUxMTEJCQkaGhpHR0c+Pj5aWlqHh4ckJCR7e3tycnI/Pz9GRkbCornxAAAGbElEQVR4nO2diWLaMAyGY8IN5YZC0oNwdHv/Jxw0ZUASkkiWkLz5e4BV/0xsWZeDwOPxeDwej8fj8Xg8Ho8HSCfstYbDVi9sN6VNIWc5mW0jc0syXbVepM0iYtBYmweM9i1p66zprA6P5P1w7EnbaENrVyHvm8NE2k4sw6SOvm/60rZiWNbXdyaWthdK9wuk78TBre9xDNV35ihtNYApRqAxUShteE3arziBJ9zYVYdofSfepK2vQcNGoDFrafsrmdsJNOZduVe+txV4Oja60iLKIBB4kqh4FfsUAk8/VGkdD5nQCDRmK63kAS0qgcZ8SWsppEMnUOnR/06p0Ch04Ei20Ssf0npy9GgFKvTfomqbgSi7L1o7a3k+pTXdQbqPXmhIq7oFeeWtQJH3NmARaObSuq7wLKGiRXxhEqjnS2TYSFMiaWUXuAQaoyRxQ3inyDKV1pYCDm8DkNaWwijQDKXFnSH3uW+ZSas7QxScKUaFc/owh01CR1pewPsZqvgQmXzSCwqyw6hUYX020vqCYMWr8CCtLwjeeBUqOPNrFZRYIL+ZjpgVygdOmQUqCLlxK5Q/ELkVjqUFNrkVLrxCdrgViv9K/4Od5oNZofxpQZsYzTOQFsjutclX18yYFUrrs65jq0JBbY1VKWI1CmLCLMnRKytpfQH3gaghc7FhVSi/lQZBzCkwkVZ3hjWcqCPR/cmocCkt7hu2FLDRcN6fCfkE7qW1/cDnfMu73SlktcFZfkkr+wuXQvn7/QWmJOmrtK4rXR6F8kGoKyyLqGgJA54vUT4GdQtDnnQnrSkDfb2CfFrtHvL6RH0dFwtagRr7EGnLaDXcfHNQZoN13JqyEMak9H2EKUsqgVouTXmIaml19ualkISHFZRBlUAgUbdAgh+qup61HJbbjYJaxEo6VXOTytB0JSwBHeePtESeKkH6qAoyaRmWi/l0Pfow0TzrRXa2CIG5uNMiMeYz2cxikcluYf9ORK4HC7yMx2yjWu/Wz42Ow6c2snX6uVzFKOcrg4L9u+wX2MxX5k6fVngSFu8kueaPl9oa1znbi6Mio6dste3HO2UuX9uM65wcx9wO+vKwhOWVP0hcui7T/LeyrJhEsCswuTRLsG2z6gurcoVF/8XLxoMled8XbR+d3xV/g7OztEYKZle8sQ/G/a/13xlgH8lmvlgWb441uhv44oz1yp/K7ufN7omybT+slak7MJ2PdZ2xBF1e36xdQsYSTAV4mxvcbgApIGOQeAT8+dOuCl7HJqy9KCIPN4IL9LagxMoAXOJIXdKHurrPa16GuotfiH+d9iaCzUq8ryq/yOYYe50kdeEwl6EfRvOS4rvBxKbEmNC7sS1dS/aLMHsKtocr25o/uk+RJlx/cmSO81UjXvVnb2uaHAfZ8GHuYnU8RL4N49wLW4j2U+4eShtI+i+Jk7u0kKSK6SexUUIQu1G9hCSLyFkBTIF1Ppy5YcQe62Qc7+QSCixvim1p+6uxzMdxVqlTYadQ2vo6WDUOsc6AosLq1Qju9kkabBRK214Pi58pWZETLxYlVKyDyuiwGHmGCYFJgA7YMDUZ0IMuZVTvk15AX/VdcGhSsAoTacNrg/wQ2UfP0IEMfzvhsqUgh4CytRXSg2z55p6mRwlOoeY4aRZc3FTaagiorYaxRZse1GQC5sGktKBKbBy5WKSg+k15Z5ZQg6k+5R7iRQumQlzaZhiIpmG2Ryt4QCS8HYnRXEDEapy5/qYgEjQO+d1nEL63Oxf8FLhCWC2iPHCFbh34mNIaV2KlF+ChGrdcGswNUXeRSR54ekbaYihwt03aYijwdiFpi6GA4xiOOd4I15t58Co94G4oBwpp7gEPq2V+AogecOGQV6gOsEKn4sFn/Br+hwqdOw/Bp4VDKe4UeMWJtMVQ4HcLl/KjZ+AV7XqbnYqBx2n+/WiiUwlSVIrUseMCM0pCe7PMPZjWmYqhJMpACHSp6Atb9sX9GhcluCY95neOKEF2dTvkmmKHDzhTURMhBbrjfeOntzvi19hMVXLD/baZO+DEZmP3woAD4RrbJ6EUj4xIsR8crbxyiGIyhmr/FNmGkKGtN6VPNp2e9tkDMj4JX5ZXud8Qv6sHmxf3BDb0U/diTWGN/FRXEnpKmtd3C8apyeHkSzYYvus/4e3VZrs3nsRx47nEk0UrVPn6jMfj8Xg8Ho/H4wmCP9qAgjsvYnq7AAAAAElFTkSuQmCC', 'female', '1');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `role_id` char(10) NOT NULL,
  `role` char(20) NOT NULL,
  `username` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertypes`
--

INSERT INTO `usertypes` (`role_id`, `role`, `username`) VALUES
('1', 'student', NULL),
('2', 'lecturer', NULL),
('3', 'admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_code`),
  ADD KEY `lec_id` (`lec_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`role_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`lec_id`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
