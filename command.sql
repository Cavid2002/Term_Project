SELECT Examination.id, Examination.time, Examination.details, Patient.full_name, Patient.ssn FROM Examination INNER JOIN Patient ON Examination.patient_id = Patient.id WHERE doctor_id = 1;