create schema db453029



CREATE TABLE `453029_students` (
  `StdID` int(11) NOT NULL,
  `StdName` varchar(50) NOT NULL,
  `StdEmail` varchar(50) NOT NULL,
  `IntakeYear` int(11) NOT NULL,
  PRIMARY KEY (`StdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `453029_lecturer` (
  `lctID` int(11) NOT NULL,
  `lctName` varchar(50) NOT NULL,
  PRIMARY KEY (`lctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `453029_course` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(50) NOT NULL,
  `lctID` int(11) NOT NULL,
  PRIMARY KEY (`courseID`),
  KEY `lctID` (`lctID`),
  CONSTRAINT `950453029_course_ibfk_1` FOREIGN KEY (`lctID`) REFERENCES `950453029_lecturer` (`lctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `453029_enrolment` (
  `EnrolmentID` int(11) NOT NULL,
  `StdID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  PRIMARY KEY (`EnrolmentID`),
  KEY `StdID` (`StdID`),
  KEY `courseID` (`courseID`),
  CONSTRAINT `950453029_enrolment_ibfk_1` FOREIGN KEY (`StdID`) REFERENCES `950453029_students` (`StdID`),
  CONSTRAINT `950453029_enrolment_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `950453029_course` (`courseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


