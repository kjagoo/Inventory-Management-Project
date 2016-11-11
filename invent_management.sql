-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2016 at 08:16 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `invent_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE IF NOT EXISTS `tbl_assets` (
  `assest_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `serial` varchar(100) NOT NULL,
  `andela_serial` varchar(100) NOT NULL,
  `date_bought` date NOT NULL,
  `description` text NOT NULL,
  `avail` int(11) NOT NULL,
  PRIMARY KEY (`assest_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_assets`
--

INSERT INTO `tbl_assets` (`assest_id`, `name`, `serial`, `andela_serial`, `date_bought`, `description`, `avail`) VALUES
(12, 'dell latitude core i3', 'ew2222rt', '101s', '2016-07-05', 'win 10, 4gb ram ,250 gb hardisk, dvd wr, blooth , wifi', 0),
(13, 'mac book 4 series', 'we222wesd', '103m', '2016-04-13', 'white, core i7, 8gb ram, 1 tb', 0),
(14, 'apple phone i7', '22223333e', '11122', '2016-06-02', '5 inch , 64 gb , 2 gb ram, 16mp', 0),
(15, 'infinix', '12332', '12322', '2016-11-16', 'wile, 16gb, duosim ,5mpx camera', 1),
(16, 'nokia tablet', '111ffff3333', '3ee', '2016-11-12', 'windows 10 tablet ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets_transactions`
--

CREATE TABLE IF NOT EXISTS `tbl_assets_transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `admin_id` varchar(100) NOT NULL,
  `date_borrowed` date NOT NULL,
  `date_returned` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `tbl_assets_transactions`
--

INSERT INTO `tbl_assets_transactions` (`transaction_id`, `asset_id`, `staff_id`, `admin_id`, `date_borrowed`, `date_returned`, `status`, `comment`) VALUES
(41, 12, 1, 'joshua', '0000-00-00', '0000-00-00', 'Request', ''),
(40, 12, 5, 'elisha', '0000-00-00', '0000-00-00', 'Request', 'dfdd'),
(39, 14, 0, 'joshua', '2016-11-16', '2016-11-16', 'Request', 'swdsd'),
(38, 0, 0, 'elisha', '0000-00-00', '0000-00-00', 'Request', 'dfd'),
(37, 15, 1, 'joshua', '2016-11-09', '2016-11-11', 'Reclaimed', 'clean and xnew'),
(36, 12, 1, 'joshua', '2016-11-10', '2016-11-11', 'Reclaimed', 'ass'),
(35, 0, 1, 'joshua', '2016-11-10', '2016-11-10', 'Issued Out', 'dededd'),
(34, 0, 1, 'joshua', '2016-11-10', '2016-11-10', 'Issued Out', 'dededd'),
(33, 0, 1, 'joshua', '2016-11-10', '2016-11-10', 'Issued Out', 'hhhshhs'),
(32, 0, 0, 'elisha', '0000-00-00', '0000-00-00', 'Request', 'er'),
(31, 0, 0, 'elisha', '0000-00-00', '0000-00-00', 'Request', 'jkjkj'),
(30, 0, 2, 'joshua', '0000-00-00', '0000-00-00', 'Issued Out', 'brank new with bag and power adapter');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE IF NOT EXISTS `tbl_department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`department_id`, `name`) VALUES
(1, 'Catering Department'),
(2, 'Ops and Facilities Department');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE IF NOT EXISTS `tbl_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) NOT NULL DEFAULT '-',
  `s_name` varchar(100) NOT NULL DEFAULT '-',
  `username` varchar(100) NOT NULL DEFAULT '-',
  `password` varchar(100) DEFAULT '-',
  `email` varchar(100) NOT NULL DEFAULT '-',
  `right_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staff_id`, `f_name`, `s_name`, `username`, `password`, `email`, `right_id`, `department_id`) VALUES
(1, 'joshua', 'kagenyi', 'joshua', 'joshua', 'kagenyi2@gmail.com', 2, 1),
(2, 'justine ', 'Timberlake', 'justine', '-', 'dkfdff@dfdf.com', 2, 2),
(3, 'a', 'h', 'h', '-', 'h', 3, 1),
(5, 'Susan', 'chelangat', 'susan', '-', 'suziekirui@yahoo.com', 2, 1),
(6, 'elisha', 'nga', 'elisha', '-', 'ekl@aefl.com', 3, 2),
(7, 'justine', 'fdfdf', 'fdfdf', '-', 'fdfdf', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rights`
--

CREATE TABLE IF NOT EXISTS `tbl_user_rights` (
  `right_id` int(11) NOT NULL,
  `right_name` varchar(100) NOT NULL,
  PRIMARY KEY (`right_id`),
  KEY `right_id` (`right_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_rights`
--

INSERT INTO `tbl_user_rights` (`right_id`, `right_name`) VALUES
(1, 'Administrator'),
(2, 'Super Admin'),
(3, 'Fellow'),
(4, 'Staff');
