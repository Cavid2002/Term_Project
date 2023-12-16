
INSERT INTO Department (name, email, phone) VALUES
('Cardiology', 'cardiology@example.com', '123-456-7890'),
('Orthopedics', 'orthopedics@example.com', '234-567-8901'),
('Pediatrics', 'pediatrics@example.com', '345-678-9012'),
('Neurology', 'neurology@example.com', '456-789-0123'),
('Dermatology', 'dermatology@example.com', '567-890-1234');


INSERT INTO Doctor (full_name, phone, address, email, password, department_id) VALUES
('Dr. John Smith', '323-13-34', '123 Main St', 'john.smith@example.com', 'password1', 1),
('Dr. Emily Davis', '525-3678', '456 Oak St', 'emily.davis@example.com', 'password2', 2),
('Dr. Michael Johnson', '355-9012', '789 Pine St', 'michael.johnson@example.com', 'password3', 3),
('Dr. Sarah Brown', '556-3456', '101 Maple St', 'sarah.brown@example.com', 'password4', 4),
('Dr. Robert White', '5553-7890', '202 Elm St', 'robert.white@example.com', 'password5', 5),
('Dr. Emma Brown', '535-5355', '555 Birch St', 'emma.brown@example.com', 'password17', 5),
('Dr. Noah Davis', '544-6346', '666 Cedar St', 'noah.davis@example.com', 'password18', 1),
('Dr. Sophia Miller', '553-7777', '777 Walnut St', 'sophia.miller@example.com', 'password19', 2),
('Dr. Liam Johnson', '563-8218', '888 Cedar St', 'liam.johnson@example.com', 'password20', 3),
('Dr. Ava Anderson', '553-9469', '999 Walnut St', 'ava.anderson@example.com', 'password21', 4),
('Dr. Ethan Garcia', '563-1236', '123 Walnut St', 'ethan.garcia@example.com', 'password22', 5);


INSERT INTO Nurse (full_name, phone, address, email, password, department_id) VALUES
('Nurse Jessica Miller', '555-852-1151', '111 Birch St', 'jessica.miller@example.com', 'password6', 1),
('Nurse Brian Wilson', '555-24852-43', '222 Pine St', 'brian.wilson@example.com', 'password7', 2),
('Nurse Samantha Taylor', '555852--2332', '333 Oak St', 'samantha.taylor@example.com', 'password8', 3),
('Nurse David Anderson', '555-852-4444', '444 Maple St', 'david.anderson@example.com', 'password9', 4),
('Nurse Olivia Garcia', '555-5852-555', '555 Elm St', 'olivia.garcia@example.com', 'password10', 5),
('Nurse Harper Wilson', '525-1852-111', '111 Pine St', 'harper.wilson@example.com', 'password23', 1),
('Nurse Benjamin Taylor', '543852--2222', '222 Oak St', 'benjamin.taylor@example.com', 'password24', 2),
('Nurse Scarlett Brown', '555-852-3333', '333 Maple St', 'scarlett.brown@example.com', 'password25', 3),
('Nurse Henry Davis', '555-444852-4', '444 Elm St', 'henry.davis@example.com', 'password26', 4),
('Nurse Amelia Smith', '555-55852-55', '555 Birch St', 'amelia.smith@example.com', 'password27', 5),
('Nurse Oliver Anderson', '555852--6666', '666 Cedar St', 'oliver.anderson@example.com', 'password28', 1),
('Nurse Lily Miller', '555-777852-7', '777 Walnut St', 'lily.miller@example.com', 'password29', 2),
('Nurse Jackson Johnson', '555852--8888', '888 Cedar St', 'jackson.johnson@example.com', 'password30', 3),
('Nurse Chloe Anderson', '555-852-9999', '999 Walnut St', 'chloe.anderson@example.com', 'password31', 4),
('Nurse Sebastian Garcia', '55852-5-7234', '123 Walnut St', 'sebastian.garcia@example.com', 'password32', 5);


INSERT INTO Patient (full_name, gender, blood_type, height, weight, ssn, phone, address, email, password) VALUES
('Alice Johnson', 'F', 'O+', 160.5, 55.5, 12342360237956789, '555-01111', '123 First St', 'alice.johnson@example.com', 'password11'),
('Bob Davis', 'M', 'A-', 175.2, 70.8, 98765432236023791, '555-32220', '456 Second St', 'bob.davis@example.com', 'password12'),
('Catherine Wilson', 'F', 'B+', 162.3, 50.2, 32360237945678901, '5055-2533', '789 Third St', 'catherine.wilson@example.com', 'password33'),
('Daniel Smith', 'M', 'AB-', 180.0, 80.5, 23452360237967890, '555-04444', '101 Fourth St', 'daniel.smith@example.com', 'password34'),
('Emily Brown', 'F', 'O-', 155.8, 45.7, 56789023602379123, '555-55055', '202 Fifth St', 'emily.brown@example.com', 'password35'),
('Frank Davis', 'M', 'A+', 170.5, 65.3, 67890323602379234, '555-66066', '303 Sixth St', 'frank.davis@example.com', 'password36'),
('Grace Miller', 'F', 'B-', 168.2, 60.9, 78901236023792245, '555-70777', '404 Seventh St', 'grace.miller@example.com', 'password37'),
('Henry Johnson', 'M', 'AB+', 175.5, 72.8, 89023602379123456, '555320-8888', '505 Eighth St', 'henry.johnson@example.com', 'password38'),
('Isabella Garcia', 'F', 'O+', 160.0, 55.0, 90236023791234567, '553205-9999', '606 Ninth St', 'isabella.garcia@example.com', 'password39'),
('James Anderson', 'M', 'A-', 182.5, 85.5, 34523602379670912, '555320-2234', '707 Tenth St', 'james.anderson@example.com', 'password40'),
('Kayla Taylor', 'F', 'B+', 165.7, 58.3, 45678236023799123, '555-2320345', '808 Eleventh St', 'kayla.taylor@example.com', 'password41'),
('Liam Wilson', 'M', 'AB-', 178.4, 78.6, 56789236023791234, '555-332456', '909 Twelfth St', 'liam.wilson@example.com', 'password42'),
('Mia Davis', 'F', 'O-', 157.0, 48.5, 67891234236023795, '555-456732', '101 Thirteenth St', 'mia.davis@example.com', 'password43'),
('Nathan Smith', 'M', 'A+', 175.8, 70.2, 78912236023793456, '555-532678', '202 Fourteenth St', 'nathan.smith@example.com', 'password44'),
('Olivia Brown', 'F', 'B-', 163.2, 52.9, 89023236023794567, '555-632789', '303 Fifteenth St', 'olivia.brown@example.com', 'password45'),
('Patrick Davis', 'M', 'AB+', 180.7, 82.4, 90123602379345678, '55532-7890', '404 Sixteenth St', 'patrick.davis@example.com', 'password46'),
('Quinn Garcia', 'F', 'O+', 159.5, 54.8, 12345236023796790, '555-83312901', '505 Seventeenth St', 'quinn.garcia@example.com', 'password47'),
('Ryan Taylor', 'M', 'A-', 177.3, 76.1, 23456723602379901, '555-90313212', '606 Eighteenth St', 'ryan.taylor@example.com', 'password48'),
('Sophia Smith', 'F', 'B+', 166.1, 59.7, 34467236023798912, '555-031123', '707 Nineteenth St', 'sophia.smith@example.com', 'password49'),
('Thomas Johnson', 'M', 'AB-', 181.2, 83.7, 45236023796789023, '55331-1234', '808 Twentieth St', 'thomas.johnson@example.com', 'password50'),
('Aiden Brown', 'M', 'A+', 176.7, 72.4, 567892236023793123, '555-312222', '456 Second St', 'aiden.brown@example.com', 'password72'),
('Evelyn Wilson', 'F', 'O-', 163.5, 56.2, 45672360237989012, '555-131311', '123 First St', 'evelyn.wilson@example.com', 'password71'),
('Zoe Smith', 'F', 'B-', 160.2, 54.1, 67990123236023794, '555-321231', '789 Third St', 'zoe.smith@example.com', 'password73'),
('Caleb Davis', 'M', 'AB+', 179.0, 80.8, 78901236023792345, '555-4444', '101 Four31th St', 'caleb.davis@example.com', 'password74'),
('Avery Garcia', 'F', 'O+', 157.7, 49.7, 89012236023793456, '555-55312555', '202 Fifth St', 'avery.garcia@example.com', 'password75'),
('Henry Taylor', 'M', 'A-', 183.2, 85.3, 90123403354567, '555-63125666', '303 Sixth St', 'henry.taylor@example.com', 'password76'),
('Luna Anderson', 'F', 'B+', 165.1, 57.5, 12344033556789, '555-31257777', '404 Seventh St', 'luna.anderson@example.com', 'password77'),
('Carter Johnson', 'M', 'AB-', 178.5, 75.1, 23403354567890, '555-825888', '505 Eighth St', 'carter.johnson@example.com', 'password78'),
('Mila Taylor', 'F', 'O+', 160.8, 53.3, 34567840335901, '555-999259', '606 Ninth St', 'mila.taylor@example.com', 'password79'),
('Gabriel Smith', 'M', 'A-', 180.2, 78.6, 45674033439012, '555-223254', '707 Tenth St', 'gabriel.smith@example.com', 'password80'),
('Hazel Garcia', 'F', 'B+', 166.3, 59.8, 56789403352123, '555-234255', '808 Eleventh St', 'hazel.garcia@example.com', 'password81'),
('Jackson Wilson', 'M', 'AB-', 177.8, 76.5, 67403358901324, '555-324456', '909 Twe25lfth St', 'jackson.wilson@example.com', 'password82'),
('Aria Davis', 'F', 'O-', 158.7, 52.9, 78901234033545, '555-45766725', '101 Thirteenth St', 'aria.davis@example.com', 'password83'),
('Elijah Brown', 'M', 'A+', 181.1, 83.5, 80012403353456, '555-76567258', '202 Fourteenth St', 'elijah.brown@example.com', 'password84'),
('Scarlett Garcia', 'F', 'B-', 163.5, 56.7, 90403351234567, '57655-256789', '303 Fifteenth St', 'scarlett.garcia@example.com', 'password85'),
('Logan Smith', 'M', 'AB+', 175.2, 71.2, 12345403356790, '555-767890', '404 Sixteenth St', 'logan.smith@example.com', 'password86'),
('Aurora Davis', 'F', 'O+', 161.2, 54.5, 2345641357901, '555-768901', '505 Seventeenth St', 'aurora.davis@example.com', 'password87'),
('Lucas Wilson', 'M', 'A-', 178.3, 79.1, 34337403358912, '555-769012', '606 Eighteenth St', 'lucas.wilson@example.com', 'password88'),
('Stella Taylor', 'F', 'B+', 164.7, 57.9, 45674033589012, '55576-0123', '707 Nineteenth St', 'stella.taylor@example.com', 'password89'),
('Parker Davis', 'M', 'AB-', 179.8, 82.4, 5629403350123, '555-761224', '808 Twentieth St', 'parker.davis@example.com', 'password90'),
('Leah Garcia', 'F', 'O-', 159.9, 54.2, 67290140335234, '555-276345', '909 Twenty-First St', 'leah.garcia@example.com', 'password91'),
('Wyatt Smith', 'M', 'A+', 180.6, 83.7, 78901240335345, '555-345456', '101 Twenty-Second St', 'wyatt.smith@example.com', 'password92'),
('Bella Taylor', 'F', 'B-', 162.3, 55.8, 89012403353456, '555-454567', '202 Twenty-Third St', 'bella.taylor@example.com', 'password93'),
('Grayson Davis', 'M', 'AB+', 176.4, 72.1, 90140335234567, '555-455678', '303 Twenty-Fourth St', 'grayson.davis@example.com', 'password94'),
('Nova Garcia', 'F', 'O+', 160.4, 53.6, 12345640335790, '555-678459', '404 Twenty-Fifth St', 'nova.garcia@example.com', 'password95'),
('Silas Wilson', 'M', 'A-', 182.1, 84.2, 23456403357901, '555-784590', '505 Twenty-Sixth St', 'silas.wilson@example.com', 'password96'),
('Adeline Smith', 'F', 'B+', 166.2, 59.4, 34564033578912, '555-845901', '606 Twenty-Seventh St', 'adeline.smith@example.com', 'password97'),
('Leo Davis', 'M', 'AB-', 177.5, 76.9, 45678904033512, '555-901245', '707 Twenty-Eighth St', 'leo.davis@example.com', 'password98'),
('Lily Taylor', 'F', 'O+', 161.8, 54.7, 5678934033500, '555-012345', '808 Twenty-Ninth St', 'lily.taylor@example.com', 'password99'),
('Owen Garcia', 'M', 'A+', 179.3, 81.4, 67120140335234, '555-523454', '909 Thirtieth St', 'owen.garcia@example.com', 'password100');



-- Insert 7 inpatient records
INSERT INTO Inpatient (room, admission, discharge, patient_id) VALUES
(101, '2023-01-01', '2023-01-05', 1),
(202, '2023-02-01', '2023-02-10', 2),
(303, '2023-03-01', '2023-03-10', 3),
(404, '2023-04-01', '2023-04-15', 4),
(505, '2023-05-01', '2023-05-12', 5),
(606, '2023-06-01', '2023-06-08', 6),
(707, '2023-07-01', '2023-07-20', 7);

-- Insert 20 Examination records
INSERT INTO Examination (time, details, doctor_id, patient_id) VALUES
('2023-01-01 08:00:00', 'Heart checkup', 1, 1),
('2023-02-01 09:00:00', 'Bone examination', 2, 2),
('2023-03-01 10:00:00', 'Dermatology check', 3, 3),
('2023-04-01 11:00:00', 'Neurological exam', 4, 4),
('2023-05-01 12:00:00', 'Pediatric evaluation', 5, 5),
('2023-06-01 13:00:00', 'Cardiac stress test', 1, 6),
('2023-07-01 14:00:00', 'Orthopedic assessment', 2, 7),
('2023-08-01 15:00:00', 'Dermatology screening', 3, 8),
('2023-09-01 16:00:00', 'Neurology follow-up', 4, 9),
('2023-10-01 17:00:00', 'Pediatric checkup', 5, 10),
('2023-11-01 18:00:00', 'Cardiac echo',  1, 11),
('2023-12-01 19:00:00', 'Orthopedic consultation', 2, 12),
('2024-01-01 20:00:00', 'Dermatology biopsy', 3, 13),
('2024-02-01 21:00:00', 'Neurology MRI', 4, 14),
('2024-03-01 22:00:00', 'Pediatric vaccination review', 5, 15),
('2024-04-01 23:00:00', 'Cardiac angiogram', 1, 16),
('2024-05-01 00:00:00', 'Orthopedic surgery follow-up', 2, 17),
('2024-06-01 01:00:00', 'Dermatology laser treatment', 3, 18),
('2024-07-01 02:00:00', 'Neurology EEG', 4, 19),
('2024-08-01 03:00:00', 'Pediatric allergy testing', 5, 20);


INSERT INTO Doctor_to_Patient (patient_id, doctor_id)
SELECT Patient.id AS patient_id, Doctor.id AS doctor_id
FROM Patient, Doctor ORDER BY RAND() LIMIT 50;

INSERT INTO Nurse_to_Patient (patient_id, nurse_id)
SELECT Patient.id AS patient_id, Nurse.id AS nurse_id
FROM Patient, Nurse ORDER BY RAND() LIMIT 50;

INSERT INTO Treatment (time, details, nurse_id, patient_id) VALUES
('2023-01-01 08:00', 'Administered medication', 1, 1),
('2023-01-02 10:30', 'Checked vital signs', 2, 2),
('2023-01-03 14:15', 'Changed dressings', 3, 3),
('2023-01-04 09:45', 'Assisted with physical therapy', 4, 4),
('2023-01-05 11:20', 'Monitored patient recovery', 5, 5),
('2023-01-06 13:40', 'Provided counseling', 6, 6),
('2023-01-07 07:55', 'Administered injections', 7, 7),
('2023-01-08 16:10', 'Performed wound care', 8, 8),
('2023-01-09 12:25', 'Assisted with mobility exercises', 9, 9),
('2023-01-10 15:30', 'Monitored post-surgery recovery', 10, 10);

INSERT INTO Reservation (reservation_date, patient_id, department_id)
VALUES
('2023-12-01', 1, 1),
('2023-12-05', 2, 2),
('2023-12-10', 3, 3),
('2023-12-15', 4, 4),
('2023-12-20', 5, 5),
('2023-12-02', 6, 1),
('2023-12-08', 7, 2),
('2023-12-12', 8, 3),
('2023-12-18', 9, 4),
('2023-12-25', 10, 5),
('2023-12-03', 11, 1),
('2023-12-07', 12, 2),
('2023-12-11', 13, 3),
('2023-12-16', 14, 4),
('2023-12-21', 15, 5),
('2023-12-04', 16, 1),
('2023-12-09', 17, 2),
('2023-12-13', 18, 3),
('2023-12-19', 19, 4),
('2023-12-24', 20, 5),
('2023-12-06', 21, 1),
('2023-12-14', 22, 2),
('2023-12-17', 23, 3),
('2023-12-22', 24, 4),
('2023-12-26', 25, 5),
('2023-12-27', 26, 1),
('2023-12-28', 27, 2),
('2023-12-29', 28, 3),
('2023-12-30', 29, 4),
('2023-12-31', 30, 5);