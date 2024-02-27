CREATE DATABASE university_application;


USE university_application;



CREATE TABLE universities (university_id INT PRIMARY KEY AUTO_INCREMENT,
       
        university_name VARCHAR (255) NOT NULL,
        address VARCHAR (255),
        phone VARCHAR (255),
        email VARCHAR (255)
        
        
        );


CREATE TABLE courses (course_id INT PRIMARY KEY AUTO_INCREMENT,
        university_id INT NOT NULL,
        FOREIGN KEY (university_id) REFERENCES universities (university_id),
        course_name VARCHAR (255),
        teacher VARCHAR (255),
        credits INT NOT NULL;
        
        
        );
        
        
CREATE TABLE students (student_id INT PRIMARY KEY AUTO_INCREMENT,
        student_name VARCHAR (255) NOT NULL,
        phone VARCHAR (255),
        email VARCHAR (255)
        
        
        );
        
        
CREATE TABLE student_course_grades (student_course_id INT PRIMARY KEY AUTO_INCREMENT,
        student_id INT NOT NULL,
        course_id INT NOT NULL,
        grade VARCHAR (255),
        start_date DATE,
        end_date DATE,
        FOREIGN KEY (course_id) REFERENCES courses (course_id)
        FOREIGN KEY (student_id) REFERENCES courses (student_id)
       
        
        );
        
INSERT INTO university (university_id, university_name, address, phone, email)
VALUES (1, 'Havard', '123 Main St', '555-1234', 'havard@harvad.com'),
       (2, 'MIT', '456 Elm St', '555-5678', 'mit@mit.com'
        
        );
        
INSERT INTO courses(course_id, university_id, course_name, teacher, credits)
VALUES (1, 1, 'Math 101', 'Alice', '3'),
       (2, 1, 'English 101', 'Bob', '3'),
       (3, 2, 'Physics 101', 'Carol', '3'),
       (4, 2, 'Chemistry 101', 'Dave', '3'
       
        
        );
INSERT INTO students(student_id, student_name, phone, email)
VALUES (1, 'Alice', '555-1234', 'Alice@harvad.com'),
       (2, 'Bob', '555-5678', 'Bob@mit.com'
        
        );
INSERT INTO student_course(student_id, course_id, grade, start_date, end_date)
VALUES (1, 1, 'A', '2024-01-01', '2024-06-01'),
       (1, 2, 'B', '2024-01-01', '2024-06-01'),
       (2, 3, 'C', '2024-01-01', '2024-06-01'),
       (2, 4, 'D', '2024-01-01', '2024-06-01')
ON DUPLICATE KEY UPDATE
    grade = VALUES(grade),
    start_date = VALUES(start_date),
    end_date = VALUES(end_date);
    
    
SELECT * FROM university;


SELECT * FROM courses;

SELECT * FROM students;

SELECT * FROM student_course;

SELECT students.student_name, courses.course_name, student_course.grade
FROM student_course
JOIN students ON student_course.student_id = students.student_id
JOIN courses ON student_course.course_id = courses.course_id;



