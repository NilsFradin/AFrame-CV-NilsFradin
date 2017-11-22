-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2017 at 10:47 AM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AFrame-CV-NilsFradin`
--

CREATE DATABASE IF NOT EXISTS `AFrame-CV-NilsFradin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `AFrame-CV-NilsFradin`;

--
-- Table structure for table `ByDate`
--

CREATE TABLE `ByDate` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `reference` text CHARACTER SET latin1 NOT NULL,
  `authors` text CHARACTER SET latin1 NOT NULL,
  `title` text CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `journal` text CHARACTER SET latin1,
  `volume` text CHARACTER SET latin1,
  `number` text CHARACTER SET latin1,
  `pages` text CHARACTER SET latin1,
  `note` text CHARACTER SET latin1,
  `abstract` text CHARACTER SET latin1,
  `keywords` text CHARACTER SET latin1,
  `series` text CHARACTER SET latin1,
  `localite` text CHARACTER SET latin1,
  `publisher` text CHARACTER SET latin1,
  `editor` text CHARACTER SET latin1,
  `pdf` text CHARACTER SET latin1,
  `date_display` text CHARACTER SET latin1,
  `category_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ByDate`
--

INSERT INTO `ByDate` (`ID`, `reference`, `authors`, `title`, `date`, `journal`, `volume`, `number`, `pages`, `note`, `abstract`, `keywords`, `series`, `localite`, `publisher`, `editor`, `pdf`, `date_display`, `category_id`) VALUES
(0, 'A17', 'Author', 'Title', '2017-01-01', 'Other Title', 'volume', 'number', 'pages', 'note', 'abstract', 'key words', 'series', 'localite', 'publisher', 'edithor', 'pdf', 'date_display', 0),
(0, 'A17', 'Author', 'Title', '2017-01-01', 'Conference Title', 'volume', 'number', 'pages', 'note', 'abstract', 'key words', 'series', 'localite', 'publisher', 'edithor', 'pdf', 'date_display', 0),
(0, 'A17', 'Author', 'Title', '2017-01-01', 'Journal Title', 'volume', 'number', 'pages', 'note', 'abstract', 'key words', 'series', 'localite', 'publisher', 'edithor', 'pdf', 'date_display', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Conference`
--

CREATE TABLE `Conference` (
  `ID` int(11) NOT NULL,
  `reference` text NOT NULL,
  `authors` text NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `journal` text,
  `volume` text,
  `number` text,
  `pages` text,
  `note` text,
  `abstract` text,
  `keywords` text,
  `series` text,
  `localite` text,
  `publisher` text,
  `editor` text,
  `pdf` text,
  `date_display` text,
  `category_id` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Diverse`
--

CREATE TABLE `Diverse` (
  `ID` int(11) NOT NULL,
  `diverse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Diverse`
--

INSERT INTO `Diverse` (`ID`, `diverse`) VALUES
(7, 'Former player in the Sportive de Gannat association, supporter of the \"Association sportive de Montferrand\"'),
(8, 'Cinematography : Lover of Quentin Tarantino\'s movies, Luc Besson\'s, Peter Jackson\'s'),
(10, 'Street art : Legal practice, admirer of the work of Keith Haring, Banksy and Ash'),
(11, 'New technologies : passionate about new technologies in the field of connected objects, smartphones, hardware and virtual and augmented reality.'),
(12, 'Driving license');

-- --------------------------------------------------------

--
-- Table structure for table `Education`
--

CREATE TABLE `Education` (
  `ID` int(11) NOT NULL,
  `date` text NOT NULL,
  `education` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Education`
--

INSERT INTO `Education` (`ID`, `date`, `education`) VALUES
(2, 'September 2017', 'Registration in professional license internet / intranet application development, Clermont Ferrand (63)'),
(3, 'June 2017', 'Obtaining a Senior Technician Certificate in Computer Service to Organizations, Vichy (03)'),
(4, 'June 2015', 'Obtaining a bachelor\'s degree Scientific series, Saint Pourçain sur Sioule (03)');

-- --------------------------------------------------------

--
-- Table structure for table `Information`
--

CREATE TABLE `Information` (
  `ID` int(11) NOT NULL,
  `status` text NOT NULL,
  `name` text NOT NULL,
  `firstName` text NOT NULL,
  `photo` text,
  `age` text,
  `address` text,
  `phone` text,
  `mail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Information`
--

INSERT INTO `Information` (`ID`, `status`, `name`, `firstName`, `photo`, `age`, `address`, `phone`, `mail`) VALUES
(2, 'Professional Licensed Student Web Application Development', 'Fradin', 'Nils', 'resources/images/profilPhoto.jpeg', '19', '00 rue du test, 63000 Clermont Ferrand ', '06 00 00 00 00', 'myMail@hotmail.fr');

-- --------------------------------------------------------

--
-- Table structure for table `Journal`
--

CREATE TABLE `Journal` (
  `ID` int(11) NOT NULL,
  `reference` text NOT NULL,
  `authors` text NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `journal` text,
  `volume` text,
  `number` text,
  `pages` text,
  `note` text,
  `abstract` text,
  `keywords` text,
  `series` text,
  `localite` text,
  `publisher` text,
  `editor` text,
  `pdf` text,
  `date_display` text,
  `category_id` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Other`
--

CREATE TABLE `Other` (
  `ID` int(11) NOT NULL,
  `reference` text NOT NULL,
  `authors` text NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `journal` text,
  `volume` text,
  `number` text,
  `pages` text,
  `note` text,
  `abstract` text,
  `keywords` text,
  `series` text,
  `localite` text,
  `publisher` text,
  `editor` text,
  `pdf` text,
  `date_display` text,
  `category_id` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Skill`
--

CREATE TABLE `Skill` (
  `ID` int(11) NOT NULL,
  `category` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Skill`
--

INSERT INTO `Skill` (`ID`, `category`, `details`) VALUES
(2, 'Techniques', 'Computer languages: Java, PHP7, Javascript, Cascading Style Sheets (CSS), C #,\r\nJavaServer Pages (JSP), HTML5, ASP.NET'),
(3, 'Techniques', 'Methodologies: Agile development process, V cycle'),
(4, 'Techniques', 'Miscellaneous tools (editors, software suites, APIs, IDEs): Eclipse, NetBeans, WebBeans'),
(5, 'Techniques', 'Database Management Systems: Oracle, JPA Object Database (Java\r\nPersistence API), NoSQL, Redis, ElasticSearch, Hibernate, relational algebra'),
(6, 'Techniques', 'Operating systems and networks: Linux, Windows, IIS server, Tomcat, Glassfish'),
(7, 'Techniques', 'Programming techniques, frameworks: JSP servlets, Symfony framework, SOA\r\n(Oriented Architecture Services), cloud computing, NodeJs, ReactJs'),
(8, 'Techniques', 'Software Quality: Capability Maturity Model Integration (CMMI), Unit Testing,\r\nnon-regression, integration, functional, Sonar, JDepend, Selenium, Hampcrest,\r\nsecurity'),
(9, 'Human', 'Autonomy'),
(10, 'Human', 'Thirst for knowledge'),
(11, 'Human', 'The taste of a job well done'),
(12, 'Human', 'Team work'),
(13, 'Language', 'English B2'),
(14, 'Langage', 'Spanish B2');

-- --------------------------------------------------------

--
-- Table structure for table `WorkExp`
--

CREATE TABLE `WorkExp` (
  `ID` int(11) NOT NULL,
  `date` text NOT NULL,
  `workExp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `WorkExp`
--

INSERT INTO `WorkExp` (`ID`, `date`, `workExp`) VALUES
(2, 'January - February 2017 (6 weeks)', 'Trainee, Active Cosmetics Production, Vichy (03) : Corrective and evolutionary maintenance of an intranet site'),
(3, 'June - July 2016 (4 weeks)', 'Trainee, Active Cosmetics Production, Vichy (03) : Creating an intranet site'),
(4, 'July 2015 (4 weeks)', 'Seasonal job, Municipal swimming pool, Saint Pourçain / Sioule (03) : Maintenance and monitoring of the complex');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Conference`
--
ALTER TABLE `Conference`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Diverse`
--
ALTER TABLE `Diverse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Education`
--
ALTER TABLE `Education`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Information`
--
ALTER TABLE `Information`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Journal`
--
ALTER TABLE `Journal`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Other`
--
ALTER TABLE `Other`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Skill`
--
ALTER TABLE `Skill`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `WorkExp`
--
ALTER TABLE `WorkExp`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Diverse`
--
ALTER TABLE `Diverse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Education`
--
ALTER TABLE `Education`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Information`
--
ALTER TABLE `Information`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Skill`
--
ALTER TABLE `Skill`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `WorkExp`
--
ALTER TABLE `WorkExp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
