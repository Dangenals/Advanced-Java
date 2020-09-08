CREATE TABLE groupp (
    groupId int NOT NULL,
    groupName varchar NOT NULL,
    PRIMARY KEY (groupId));

CREATE TABLE student (
    studentId int NOT NULL,
    studentName varchar(255) NOT NULL,
    studentPhone varchar(255),
    groupId int NOT NULL,
    PRIMARY KEY (studentId),
	FOREIGN KEY (groupId) REFERENCES groupp(groupId)
);


INSERT INTO groupp (groupId, groupName)
VALUES (101, 'CS-1901'),
(102, 'CS-1902'),
(103, 'CS-1903'),
(104, 'CS-1904'),
(105, 'CS-1905');

INSERT INTO student (studentId, studentName, studentPhone, groupId)
VALUES (1, 'Tony Stark', '039347234', 103),
(2, 'Aaron Ramsey', '092482934', 102),
(3, 'Steven Gerrard', '023423896', 101),
(4, 'Cristiano Ronaldo', '076237472', 105),
(5, 'Wayne Rooney', '0285934693', 104);


SELECT * FROM groupp;
SELECT * FROM student;