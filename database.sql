CREATE DATABASE Hospital;

USE Hospital;

CREATE TABLE `Doctor` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`full_name` varchar(50) NOT NULL,
	`phone` varchar(50) NOT NULL UNIQUE,
	`address` varchar(100) NOT NULL,
	`email` varchar(100) NOT NULL,
	`password` INT(100) NOT NULL,
	`department_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Nurse` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`full_name` varchar(50) NOT NULL,
	`phone` varchar(50) NOT NULL UNIQUE,
	`address` varchar(100) NOT NULL,
	`email` varchar(100) NOT NULL,
	`password` INT(100) NOT NULL,
	`department_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Department` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	`email` varchar(50) NOT NULL,
	`phone` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Patient` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`full_name` varchar(50) NOT NULL,
	`gender` varchar(1) NOT NULL,
	`blood_type` varchar(2) NOT NULL,
	`height` FLOAT NOT NULL,
	`weight` FLOAT NOT NULL,
	`ssn` INT NOT NULL,
	`phone` varchar(50) NOT NULL UNIQUE,
	`address` varchar(100) NOT NULL,
	`email` varchar(100) NOT NULL,
	`password` INT(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Doctor_to_Patient` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`patient_id` INT NOT NULL,
	`doctor_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Nurse_to_Patient` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`patient_id` INT NOT NULL,
	`doctor_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Inpatient` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`room` INT NOT NULL,
	`admission` DATE NOT NULL,
	`discharge` DATE NOT NULL,
	`patient_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Reservation` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`reservation_date` DATE NOT NULL,
	`patient_id` INT NOT NULL,
	`department_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Examination` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`time` DATETIME NOT NULL,
	`details` TEXT NOT NULL,
	`doctor_id` INT NOT NULL,
	`patient_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Treatment` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`time` DATETIME NOT NULL,
	`deatils` TEXT NOT NULL,
	`nurse_id` INT NOT NULL,
	`patient_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Doctor` ADD FOREIGN KEY (`department_id`) REFERENCES `Department`(`id`);

ALTER TABLE `Nurse` ADD FOREIGN KEY (`department_id`) REFERENCES `Department`(`id`);

ALTER TABLE `Doctor_to_Patient` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patient`(`id`);

ALTER TABLE `Doctor_to_Patient` ADD FOREIGN KEY (`doctor_id`) REFERENCES `Doctor`(`id`);

ALTER TABLE `Nurse_to_Patient` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patient`(`id`);

ALTER TABLE `Nurse_to_Patient` ADD FOREIGN KEY (`doctor_id`) REFERENCES `Nurse`(`id`);

ALTER TABLE `Inpatient` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patient`(`id`);

ALTER TABLE `Reservation` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patient`(`id`);

ALTER TABLE `Reservation` ADD FOREIGN KEY (`department_id`) REFERENCES `Department`(`id`);

ALTER TABLE `Examination` ADD FOREIGN KEY (`doctor_id`) REFERENCES `Doctor`(`id`);

ALTER TABLE `Examination` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patient`(`id`);

ALTER TABLE `Treatment` ADD FOREIGN KEY (`nurse_id`) REFERENCES `Nurse`(`id`);

ALTER TABLE `Treatment` ADD FOREIGN KEY (`patient_id`) REFERENCES `Patient`(`id`);













