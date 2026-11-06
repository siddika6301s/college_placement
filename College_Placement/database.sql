CREATE DATABASE IF NOT EXISTS placement_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE placement_db;
CREATE TABLE IF NOT EXISTS students (
 student_id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 roll_no VARCHAR(30) NOT NULL UNIQUE,
 branch VARCHAR(50) NOT NULL,
 cgpa DECIMAL(3,2) NOT NULL,
 email VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS companies (
 company_id INT AUTO_INCREMENT PRIMARY KEY,
 company_name VARCHAR(150) NOT NULL,
 job_role VARCHAR(100) NOT NULL,
 package DECIMAL(10,2) NOT NULL,
 eligibility_cgpa DECIMAL(3,2) NOT NULL,
 drive_date DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS applications (
 application_id INT AUTO_INCREMENT PRIMARY KEY,
 student_id INT NOT NULL,
 company_id INT NOT NULL,
 applied_date DATE NOT NULL,
 round VARCHAR(50) DEFAULT 'Applied',
 status VARCHAR(30) DEFAULT 'Pending',
 FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
 FOREIGN KEY (company_id) REFERENCES companies(company_id) ON DELETE CASCADE,
 UNIQUE KEY unique_student_company (student_id, company_id)
);
