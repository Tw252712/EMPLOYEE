create TABLE Department (
Department_ID INT PRIMARY KEY,
Name VARCHAR (255) NOT NULL,
Manager_name VARCHAR (255)
);


Create TABLE Employee (
Employee_ID INT PRIMARY KEY,
Name VARCHAR (255) NOT NULL,
Position VARCHAR (255),
salary DECIMAL (10,2),

Department_ID INT,
FOREIGN KEY (Department_ID)
REFERENCES Department(Department_ID) ON
DELETE SET NULL
);

Create TABLE Project(
project_id INT PRIMARY KEY,
Title VARCHAR (255) NOT NULL,
Start_Date DATE,
End_Date DATE,
Department_ID INT,
FOREIGN KEY (Department_ID)
REFERENCES Department(Department_ID) ON
DELETE CASCADE
);

Create TABLE Employee_project (
Employee_ID INT,
Project_ID INT,
role VARCHAR (255),
PRIMARY KEY (Employee_ID, Project_ID),
FOREIGN KEY (Employee_ID)
REFERENCES Employee(Employee_ID) ON
DELETE CASCADE,
FOREIGN KEY (Project_ID)
REFERENCES Project(Project_ID)
ON DELETE CASCADE
);






SELECT *FROM INFORMATION_SCHEMA. TABLES
WHERE TABLE_NAME ='Employee';


DROP TABLE Employee;


SELECT * FROM INFORMATION_SCHEMA. TABLES
WHERE TABLE_NAME= 'Department';


DROP TABLE Department;

SELECT * FROM INFORMATION_SCHEMA. TABLES
WHERE TABLE_NAME= 'Project';

DROP TABLE Project;