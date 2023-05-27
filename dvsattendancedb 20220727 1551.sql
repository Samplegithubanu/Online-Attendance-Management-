-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dvsattendence
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ dvsattendence;
USE dvsattendence;

--
-- Table structure for table `dvsattendence`.`activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `sem` varchar(50) DEFAULT NULL,
  `couse` varchar(50) DEFAULT NULL,
  `activity` varchar(50) DEFAULT NULL,
  `assaignmentdate` varchar(50) DEFAULT NULL,
  `submisiondate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`activity`
--

/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` (`sem`,`couse`,`activity`,`assaignmentdate`,`submisiondate`) VALUES 
 ('BCA','I sem','tomorrow social test','',''),
 ('BCA','I sem','','2019-12-31','2018-01-01'),
 ('I sem','tomorrow social test','tomorrow social test','',''),
 ('BCA','I sem','sports and cultural compitaiton','2019-03-05','2019-03-07'),
 ('MCA','IV sem','dgsggffd','2019-02-28','2019-02-28'),
 ('MCA','Isem','works on java','2020-03-20','2020-03-27'),
 ('MCA','Isem','Work shop Android','2017-03-10','2017-03-26');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`allotment`
--

DROP TABLE IF EXISTS `allotment`;
CREATE TABLE `allotment` (
  `name` varchar(50) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `sem` varchar(50) DEFAULT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`allotment`
--

/*!40000 ALTER TABLE `allotment` DISABLE KEYS */;
INSERT INTO `allotment` (`name`,`course`,`sem`) VALUES 
 ('mohan','MCA','Isem'),
 ('arun','MCA','IIsem');
/*!40000 ALTER TABLE `allotment` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`attendence`
--

DROP TABLE IF EXISTS `attendence`;
CREATE TABLE `attendence` (
  `faculty` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `regno` varchar(50) NOT NULL,
  `totaldays` int(11) NOT NULL DEFAULT '0',
  `attendeddays` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`regno`,`course`,`sem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`attendence`
--

/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` (`faculty`,`course`,`sem`,`regno`,`totaldays`,`attendeddays`) VALUES 
 ('mohan','MCA','Isem','3',100,84),
 ('mohan','MCA','Isem','2',100,77),
 ('mohan','MCA','Isem','1',100,65),
 ('mohan','MCA','Isem','10',100,70),
 ('mohan','MCA','Isem','14',100,89),
 ('mohan','MCA','Isem','8',100,89),
 ('mohan','MCA','Isem','16',100,97);
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`lecture`
--

DROP TABLE IF EXISTS `lecture`;
CREATE TABLE `lecture` (
  `designation` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`lecture`
--

/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` (`designation`,`name`,`Qualification`,`phone`,`gender`,`username`,`password`,`id`) VALUES 
 ('lecture','mohan','Mtech','9949939393','male','mohan','mohan123',5),
 ('professor','arun','Mtech','9987545463','male','arun','arun123',6),
 ('professor','guru','mba','59565896','male','guru123','password',7);
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password'),
 ('ravish','ravish');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE `marks` (
  `regno` varchar(50) NOT NULL,
  `sem` varchar(50) DEFAULT NULL,
  `sub1` int(11) DEFAULT NULL,
  `sub2` int(11) DEFAULT NULL,
  `sub3` int(11) DEFAULT NULL,
  `sub4` varchar(50) DEFAULT NULL,
  `sub5` varchar(50) DEFAULT NULL,
  `sub6` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`marks`
--

/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` (`regno`,`sem`,`sub1`,`sub2`,`sub3`,`sub4`,`sub5`,`sub6`,`remarks`) VALUES 
 ('1','I sem',43,34,34,'34','54','64','dull student'),
 ('2','I sem',45,23,45,'65','55','67','very good'),
 ('6','Isem',90,69,68,'54','89','60','');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE `parents` (
  `regno` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `sem` varchar(50) NOT NULL DEFAULT '',
  `course` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(50) NOT NULL DEFAULT '',
  `answer` varchar(50) NOT NULL DEFAULT '',
  UNIQUE KEY `regno_sem_course` (`regno`,`sem`,`course`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`parents`
--

/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` (`regno`,`password`,`sem`,`course`,`question`,`answer`) VALUES 
 ('2','lokesh','I sem','BCA','which is my native','shimoga'),
 ('3','ravi123','I sem','BCA','my favorit color','black');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`username`,`password`,`phone`) VALUES 
 ('ravish','ravish','456789045678'),
 ('sdkfjg','fhfd','dfghfd'),
 ('preety','preety','1234567890');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`studentemail`
--

DROP TABLE IF EXISTS `studentemail`;
CREATE TABLE `studentemail` (
  `regno` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`email`),
  KEY `FK_studentemail_marks` (`regno`),
  CONSTRAINT `FK_studentemail_marks` FOREIGN KEY (`regno`) REFERENCES `marks` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`studentemail`
--

/*!40000 ALTER TABLE `studentemail` DISABLE KEYS */;
INSERT INTO `studentemail` (`regno`,`email`) VALUES 
 ('1','shivkumarkl@gmail.com'),
 ('2','ravishkumarkl@gmail.com');
/*!40000 ALTER TABLE `studentemail` ENABLE KEYS */;


--
-- Table structure for table `dvsattendence`.`studentinfo`
--

DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `regno` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  PRIMARY KEY (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsattendence`.`studentinfo`
--

/*!40000 ALTER TABLE `studentinfo` DISABLE KEYS */;
INSERT INTO `studentinfo` (`regno`,`name`,`address`,`course`,`sem`) VALUES 
 ('1','Avi','shimoga','MCA','Isem'),
 ('10','arun','shimoga','MCA','Isem'),
 ('11','souu','shimoga','MCA','Isem'),
 ('12','rohan','shimoga','MCA','Isem'),
 ('13','kethan','shimoga','MCA','Isem'),
 ('14','lokesh','shimoga','MCA','Isem'),
 ('15','vijay','shimoga','MCA','Isem'),
 ('16','praven','shimoga','MCA','Isem'),
 ('2','ravi','shioga','MCA','Isem'),
 ('3','sumana','chitradurga','MCA','Isem'),
 ('7','sumana','shimoga','BCA','IIsem'),
 ('8','bhoomi','mysore','MCA','Isem');
/*!40000 ALTER TABLE `studentinfo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
