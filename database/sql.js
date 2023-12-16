const mysql = require('mysql2');

const db =  mysql.createPool({
    host : "localhost",
    port : 3306,
    user : "root",
    password : process.env.DATABASE_PASSWORD,
    database : "Hospital"
}).promise();

const user = {
    checkUser: async (tableName, email) => {
        let cmd = `SELECT * FROM ${tableName} WHERE email = '${email}';`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    },
    getDataByID: async (tableName, id) => {
        let cmd = `SELECT * FROM ${tableName} WHERE id = ${id};`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    },
    getDataByCol: async (tableName, colname, value) => {
        let cmd = `SELECT * FROM ${tableName} WHERE ${colname} = '${value}';`;
        console.log("Command Executed:", cmd);
        let data = await db.query(cmd);
        return data[0];
    },
   
}

const doctor = {
    getExaminationData: async (doctor_id) => {
        let cmd = `SELECT Examination.id, Examination.time, Examination.details, Patient.full_name, Patient.ssn FROM Examination INNER JOIN Patient ON Examination.patient_id = Patient.id WHERE Examination.doctor_id = ${doctor_id};`
        console.log("Command Executed:", cmd);
        let data = await db.query(cmd);
        return data[0];
    },
    removeExamination: async (exam_id) =>{
        let cmd = `DELETE FROM Examination WHERE id = ${exam_id};`
        console.log("Command Executed:", cmd);
        let data = await db.query(cmd);
        return data[0];
    },
    updateExamination: async (time, exam_id, details) =>{
        let cmd = `UPDATE Examination SET time = '${time}', details='${details}' where id = ${exam_id}`;
        console.log("Command Executed:", cmd);
        let data = await db.query(cmd);
        return data[0];
    },
    checkPatientExists: async (ssn) => { 
        let cmd = `SELECT * FROM Patient WHERE ssn = ${ssn};`
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    },
    checkExaminationExists: async (patient_id, doctor_id) => {
        let cmd = `SELECT * FROM Examination WHERE patient_id = ${patient_id} and doctor_id = ${doctor_id};`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    },
    addExamination: async (time, details, patient_id, doctor_id) => {
        let cmd = `INSERT INTO Examination(time, details, patient_id, doctor_id) VALUES('${time}', '${details}', ${patient_id}, ${doctor_id});`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    }
}

const nurse = {
    getTreatmentData: async (nurse_id) => {
        let cmd = `SELECT Treatment.id, Treatment.time, Treatment.details, Patient.full_name, Patient.ssn FROM Treatment INNER JOIN Patient ON Treatment.patient_id = Patient.id WHERE Treatment.nurse_id = ${nurse_id};`
        console.log("Command Executed:", cmd);
        let data = await db.query(cmd);
        return data[0];
    },
    removeTreatment: async (treatment_id) =>{
        let cmd = `DELETE FROM Treatment WHERE id = ${treatment_id};`
        console.log("Command Executed:", cmd);
        let data = await db.query(cmd);
        return data[0];
    },
    updateTreatment: async (time, treatment_id, details) =>{
        let cmd = `UPDATE Treatment SET time = '${time}', details='${details}' where id = ${treatment_id}`;
        console.log("Command Executed:", cmd);
        let data = await db.query(cmd);
        return data[0];
    },
    checkPatientExists: async (ssn) => { 
        let cmd = `SELECT * FROM Patient WHERE ssn = ${ssn};`
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    },
    checkTreatmentExists: async (patient_id, nurse_id) => {
        let cmd = `SELECT * FROM Treatment WHERE patient_id = ${patient_id} and nurse_id = ${nurse_id};`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    },
    addTreatment: async (time, details, patient_id, nurse_id) => {
        let cmd = `INSERT INTO Treatment(time, details, patient_id, nurse_id) VALUES('${time}', '${details}', ${patient_id}, ${nurse_id});`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    }
};

const patient = {
    addPatient: async (obj) =>{
        let cmd = `INSERT INTO Patient(full_name, address, phone, email, password, ssn, gender, blood_type, weight, height)VALUES('${obj.full_name}', '${obj.address}', '${obj.phone}', '${obj.email}', '${obj.password}', '${obj.ssn}','${obj.gender}', '${obj.blood_type}', '${obj.weight}', '${obj.height}');`
        let res = await db.query(cmd);
        return res;
    },
    checkReservation: async (patient_id) =>{
        let cmd = `SELECT Reservation.id, Reservation.reservation_date, Department.name, Department.phone, Department.email, Department.id as department_id FROM Reservation INNER JOIN Department 
        ON Reservation.department_id = Department.id
        WHERE Reservation.patient_id = ${patient_id};`;
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    },
    deleteReservation: async (reservation_id) =>{
      let cmd = `DELETE FROM Reservation WHERE id = ${reservation_id};`
      console.log("Command Executed: ", cmd);
      let [res] = await db.query(cmd);
      return res;
    },
    updateReservation: async (reservation_id, date, department_id) =>{
        let cmd = `UPDATE Reservation SET reservation_date = '${date}', department_id = ${department_id} WHERE id = ${reservation_id};`
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    },
    addReservation: async (date, patient_id, department_id) =>{
        let cmd = `INSERT INTO Reservation(reservation_date, patient_id, department_id) VALUES('${date}', ${patient_id}, ${department_id});`;
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    },
    getPatientsByFilter: async (filter) =>{
        let cmd = `SELECT * FROM Patient WHERE ${filter}`;
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    }
};

const admin = {
    showAllDoctors : async() => {
        let cmd = 'SELECT Doctor.id, Doctor.full_name, Doctor.phone, Doctor.address, Doctor.email, Doctor.password, Department.name, Department.id as department_id FROM Doctor INNER JOIN Department ON Doctor.department_id = Department.id ORDER BY Doctor.id;'
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    },

    showAllNurses : async() => {
        let cmd = 'SELECT Nurse.id, Nurse.full_name, Nurse.phone, Nurse.address, Nurse.email, Nurse.password, Department.name, Department.id as department_id FROM Department INNER JOIN Nurse ON Nurse.department_id = Department.id ORDER BY Nurse.id;'
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    },
    deleteEmployeeByID: async(tableName, id) => {
        let cmd = `DELETE FROM ${tableName} WHERE id = ${id};`
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    },
    updateEmployeeById: async(tableName, obj) => {
        let cmd = `UPDATE ${tableName} SET full_name='${obj.full_name}', phone='${obj.phone}', email='${obj.email}', password='${obj.password}', address='${obj.address}', department_id=${obj.dprt_id} WHERE id = ${obj.id};`
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    },
    insertEmployee: async(tableName, obj) => {
        let cmd = `INSERT INTO ${tableName} (full_name, phone, address, email, password, department_id) VALUES ('${obj.full_name}', '${obj.phone}','${obj.address}','${obj.email}','${obj.password}', ${obj.dprt_id});`
        console.log("Command Executed: ", cmd);
        let [res] = await db.query(cmd);
        return res;
    }
}

module.exports.user = user;  
module.exports.doctor = doctor;
module.exports.nurse = nurse;
module.exports.patient = patient;
module.exports.admin = admin;