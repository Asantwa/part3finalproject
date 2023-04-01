/* load data for students */

LOAD DATA INFILE 'students.csv' 
INTO TABLE 453029_students 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

/* load data for Lecturer */

LOAD DATA INFILE 'lecturer.csv' 
INTO TABLE 453029_lecturer 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


/* load data for Courses*/

LOAD DATA INFILE 'course.csv' 
INTO TABLE 453029_course 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


/* load data for Enrolment*/

LOAD DATA INFILE 'enrolment.csv' 
INTO TABLE 453029_enrolment 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';