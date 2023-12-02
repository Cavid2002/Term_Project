DELETE FROM Inpatient;
DELETE FROM Patient;
DELETE FROM Nurse;
DELETE FROM Doctor;
DELETE FROM Department;

INSERT INTO Department (name, email, phone) VALUES
('Cardiology', 'cardiology@example.com', '123-456-7890'),
('Orthopedics', 'orthopedics@example.com', '234-567-8901'),
('Pediatrics', 'pediatrics@example.com', '345-678-9012'),
('Neurology', 'neurology@example.com', '456-789-0123'),
('Dermatology', 'dermatology@example.com', '567-890-1234');


INSERT INTO Doctor (full_name, phone, address, email, password, department_id) VALUES
('Dr. John Smith', '555-1234', '123 Main St', 'john.smith@example.com', 'password1', 1),
('Dr. Emily Davis', '555-5678', '456 Oak St', 'emily.davis@example.com', 'password2', 2),
('Dr. Michael Johnson', '555-9012', '789 Pine St', 'michael.johnson@example.com', 'password3', 3),
('Dr. Sarah Brown', '555-3456', '101 Maple St', 'sarah.brown@example.com', 'password4', 4),
('Dr. Robert White', '555-7890', '202 Elm St', 'robert.white@example.com', 'password5', 5),
('Dr. Emma Brown', '555-5555', '555 Birch St', 'emma.brown@example.com', 'password17', 5),
('Dr. Noah Davis', '555-6666', '666 Cedar St', 'noah.davis@example.com', 'password18', 1),
('Dr. Sophia Miller', '555-7777', '777 Walnut St', 'sophia.miller@example.com', 'password19', 2),
('Dr. Liam Johnson', '555-8888', '888 Cedar St', 'liam.johnson@example.com', 'password20', 3),
('Dr. Ava Anderson', '555-9999', '999 Walnut St', 'ava.anderson@example.com', 'password21', 4),
('Dr. Ethan Garcia', '555-1236', '123 Walnut St', 'ethan.garcia@example.com', 'password22', 5);


INSERT INTO Nurse (full_name, phone, address, email, password, department_id) VALUES
('Nurse Jessica Miller', '555-1111', '111 Birch St', 'jessica.miller@example.com', 'password6', 1),
('Nurse Brian Wilson', '555-2222', '222 Pine St', 'brian.wilson@example.com', 'password7', 2),
('Nurse Samantha Taylor', '555-3333', '333 Oak St', 'samantha.taylor@example.com', 'password8', 3),
('Nurse David Anderson', '555-4444', '444 Maple St', 'david.anderson@example.com', 'password9', 4),
('Nurse Olivia Garcia', '555-5555', '555 Elm St', 'olivia.garcia@example.com', 'password10', 5),
('Nurse Harper Wilson', '555-1111', '111 Pine St', 'harper.wilson@example.com', 'password23', 1),
('Nurse Benjamin Taylor', '555-2222', '222 Oak St', 'benjamin.taylor@example.com', 'password24', 2),
('Nurse Scarlett Brown', '555-3333', '333 Maple St', 'scarlett.brown@example.com', 'password25', 3),
('Nurse Henry Davis', '555-4444', '444 Elm St', 'henry.davis@example.com', 'password26', 4),
('Nurse Amelia Smith', '555-5555', '555 Birch St', 'amelia.smith@example.com', 'password27', 5),
('Nurse Oliver Anderson', '555-6666', '666 Cedar St', 'oliver.anderson@example.com', 'password28', 1),
('Nurse Lily Miller', '555-7777', '777 Walnut St', 'lily.miller@example.com', 'password29', 2),
('Nurse Jackson Johnson', '555-8888', '888 Cedar St', 'jackson.johnson@example.com', 'password30', 3),
('Nurse Chloe Anderson', '555-9999', '999 Walnut St', 'chloe.anderson@example.com', 'password31', 4),
('Nurse Sebastian Garcia', '555-1234', '123 Walnut St', 'sebastian.garcia@example.com', 'password32', 5);


-- Insert 20 patients
INSERT INTO Patient (full_name, gender, blood_type, height, weight, ssn, phone, address, email, password) VALUES
('Alice Johnson', 'F', 'O+', 160.5, 55.5, 123456789, '555-1111', '123 First St', 'alice.johnson@example.com', 'password11'),
('Bob Davis', 'M', 'A-', 175.2, 70.8, 987654321, '555-2222', '456 Second St', 'bob.davis@example.com', 'password12'),
('Catherine Wilson', 'F', 'B+', 162.3, 50.2, 345678901, '555-3333', '789 Third St', 'catherine.wilson@example.com', 'password33'),
('Daniel Smith', 'M', 'AB-', 180.0, 80.5, 234567890, '555-4444', '101 Fourth St', 'daniel.smith@example.com', 'password34'),
('Emily Brown', 'F', 'O-', 155.8, 45.7, 567890123, '555-5555', '202 Fifth St', 'emily.brown@example.com', 'password35'),
('Frank Davis', 'M', 'A+', 170.5, 65.3, 678901234, '555-6666', '303 Sixth St', 'frank.davis@example.com', 'password36'),
('Grace Miller', 'F', 'B-', 168.2, 60.9, 789012345, '555-7777', '404 Seventh St', 'grace.miller@example.com', 'password37'),
('Henry Johnson', 'M', 'AB+', 175.5, 72.8, 890123456, '555-8888', '505 Eighth St', 'henry.johnson@example.com', 'password38'),
('Isabella Garcia', 'F', 'O+', 160.0, 55.0, 901234567, '555-9999', '606 Ninth St', 'isabella.garcia@example.com', 'password39'),
('James Anderson', 'M', 'A-', 182.5, 85.5, 345678912, '555-1234', '707 Tenth St', 'james.anderson@example.com', 'password40'),
('Kayla Taylor', 'F', 'B+', 165.7, 58.3, 456789123, '555-2345', '808 Eleventh St', 'kayla.taylor@example.com', 'password41'),
('Liam Wilson', 'M', 'AB-', 178.4, 78.6, 567891234, '555-3456', '909 Twelfth St', 'liam.wilson@example.com', 'password42'),
('Mia Davis', 'F', 'O-', 157.0, 48.5, 678912345, '555-4567', '101 Thirteenth St', 'mia.davis@example.com', 'password43'),
('Nathan Smith', 'M', 'A+', 175.8, 70.2, 789123456, '555-5678', '202 Fourteenth St', 'nathan.smith@example.com', 'password44'),
('Olivia Brown', 'F', 'B-', 163.2, 52.9, 890234567, '555-6789', '303 Fifteenth St', 'olivia.brown@example.com', 'password45'),
('Patrick Davis', 'M', 'AB+', 180.7, 82.4, 901345678, '555-7890', '404 Sixteenth St', 'patrick.davis@example.com', 'password46'),
('Quinn Garcia', 'F', 'O+', 159.5, 54.8, 123456790, '555-8901', '505 Seventeenth St', 'quinn.garcia@example.com', 'password47'),
('Ryan Taylor', 'M', 'A-', 177.3, 76.1, 234567901, '555-9012', '606 Eighteenth St', 'ryan.taylor@example.com', 'password48'),
('Sophia Smith', 'F', 'B+', 166.1, 59.7, 345678912, '555-0123', '707 Nineteenth St', 'sophia.smith@example.com', 'password49'),
('Thomas Johnson', 'M', 'AB-', 181.2, 83.7, 456789023, '555-1234', '808 Twentieth St', 'thomas.johnson@example.com', 'password50'),
('Evelyn Wilson', 'F', 'O-', 163.5, 56.2, 456789012, '555-1111', '123 First St', 'evelyn.wilson@example.com', 'password71'),
('Aiden Brown', 'M', 'A+', 176.7, 72.4, 567890123, '555-2222', '456 Second St', 'aiden.brown@example.com', 'password72'),
('Zoe Smith', 'F', 'B-', 160.2, 54.1, 678901234, '555-3333', '789 Third St', 'zoe.smith@example.com', 'password73'),
('Caleb Davis', 'M', 'AB+', 179.0, 80.8, 789012345, '555-4444', '101 Fourth St', 'caleb.davis@example.com', 'password74'),
('Avery Garcia', 'F', 'O+', 157.7, 49.7, 890123456, '555-5555', '202 Fifth St', 'avery.garcia@example.com', 'password75'),
('Henry Taylor', 'M', 'A-', 183.2, 85.3, 901234567, '555-6666', '303 Sixth St', 'henry.taylor@example.com', 'password76'),
('Luna Anderson', 'F', 'B+', 165.1, 57.5, 123456789, '555-7777', '404 Seventh St', 'luna.anderson@example.com', 'password77'),
('Carter Johnson', 'M', 'AB-', 178.5, 75.1, 234567890, '555-8888', '505 Eighth St', 'carter.johnson@example.com', 'password78'),
('Mila Taylor', 'F', 'O+', 160.8, 53.3, 345678901, '555-9999', '606 Ninth St', 'mila.taylor@example.com', 'password79'),
('Gabriel Smith', 'M', 'A-', 180.2, 78.6, 456789012, '555-1234', '707 Tenth St', 'gabriel.smith@example.com', 'password80'),
('Hazel Garcia', 'F', 'B+', 166.3, 59.8, 567890123, '555-2345', '808 Eleventh St', 'hazel.garcia@example.com', 'password81'),
('Jackson Wilson', 'M', 'AB-', 177.8, 76.5, 678901234, '555-3456', '909 Twelfth St', 'jackson.wilson@example.com', 'password82'),
('Aria Davis', 'F', 'O-', 158.7, 52.9, 789012345, '555-4567', '101 Thirteenth St', 'aria.davis@example.com', 'password83'),
('Elijah Brown', 'M', 'A+', 181.1, 83.5, 890123456, '555-5678', '202 Fourteenth St', 'elijah.brown@example.com', 'password84'),
('Scarlett Garcia', 'F', 'B-', 163.5, 56.7, 901234567, '555-6789', '303 Fifteenth St', 'scarlett.garcia@example.com', 'password85'),
('Logan Smith', 'M', 'AB+', 175.2, 71.2, 123456790, '555-7890', '404 Sixteenth St', 'logan.smith@example.com', 'password86'),
('Aurora Davis', 'F', 'O+', 161.2, 54.5, 234567901, '555-8901', '505 Seventeenth St', 'aurora.davis@example.com', 'password87'),
('Lucas Wilson', 'M', 'A-', 178.3, 79.1, 345678912, '555-9012', '606 Eighteenth St', 'lucas.wilson@example.com', 'password88'),
('Stella Taylor', 'F', 'B+', 164.7, 57.9, 456789012, '555-0123', '707 Nineteenth St', 'stella.taylor@example.com', 'password89'),
('Parker Davis', 'M', 'AB-', 179.8, 82.4, 567890123, '555-1234', '808 Twentieth St', 'parker.davis@example.com', 'password90'),
('Leah Garcia', 'F', 'O-', 159.9, 54.2, 678901234, '555-2345', '909 Twenty-First St', 'leah.garcia@example.com', 'password91'),
('Wyatt Smith', 'M', 'A+', 180.6, 83.7, 789012345, '555-3456', '101 Twenty-Second St', 'wyatt.smith@example.com', 'password92'),
('Bella Taylor', 'F', 'B-', 162.3, 55.8, 890123456, '555-4567', '202 Twenty-Third St', 'bella.taylor@example.com', 'password93'),
('Grayson Davis', 'M', 'AB+', 176.4, 72.1, 901234567, '555-5678', '303 Twenty-Fourth St', 'grayson.davis@example.com', 'password94'),
('Nova Garcia', 'F', 'O+', 160.4, 53.6, 123456790, '555-6789', '404 Twenty-Fifth St', 'nova.garcia@example.com', 'password95'),
('Silas Wilson', 'M', 'A-', 182.1, 84.2, 234567901, '555-7890', '505 Twenty-Sixth St', 'silas.wilson@example.com', 'password96'),
('Adeline Smith', 'F', 'B+', 166.2, 59.4, 345678912, '555-8901', '606 Twenty-Seventh St', 'adeline.smith@example.com', 'password97'),
('Leo Davis', 'M', 'AB-', 177.5, 76.9, 456789012, '555-9012', '707 Twenty-Eighth St', 'leo.davis@example.com', 'password98'),
('Lily Taylor', 'F', 'O+', 161.8, 54.7, 567890123, '555-0123', '808 Twenty-Ninth St', 'lily.taylor@example.com', 'password99'),
('Owen Garcia', 'M', 'A+', 179.3, 81.4, 678901234, '555-1234', '909 Thirtieth St', 'owen.garcia@example.com', 'password100');



-- Insert 7 inpatient records
INSERT INTO Inpatient (room, admission, discharge, patient_id) VALUES
(101, '2023-01-01', '2023-01-05', 1),
(202, '2023-02-01', '2023-02-10', 2),
(303, '2023-03-01', '2023-03-10', 3),
(404, '2023-04-01', '2023-04-15', 4),
(505, '2023-05-01', '2023-05-12', 5),
(606, '2023-06-01', '2023-06-08', 6),
(707, '2023-07-01', '2023-07-20', 7);