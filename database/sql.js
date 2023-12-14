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
        let cmd = `SELECT * FROM ${tableName} WHERE ${colname} = ${value};`;
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
    updateExamination: async (exam_id, details) =>{
        let cmd = `UPDATE Examination SET time = CURRENT_TIMESTAMP, details='${details}' where id = ${exam_id}`;
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
    addExamination: async (details, patient_id, doctor_id) => {
        let cmd = `INSERT INTO Examination(time, details, patient_id, doctor_id) VALUES(CURRENT_TIMESTAMP, '${details}', ${patient_id}, ${doctor_id});`;
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
    updateTreatment: async (treatment_id, details) =>{
        let cmd = `UPDATE Treatment SET time = CURRENT_TIMESTAMP, details='${details}' where id = ${treatment_id}`;
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
    addTreatment: async (details, patient_id, nurse_id) => {
        let cmd = `INSERT INTO Treatment(time, details, patient_id, nurse_id) VALUES(CURRENT_TIMESTAMP, '${details}', ${patient_id}, ${nurse_id});`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    }
};

module.exports.user = user;  
module.exports.doctor = doctor;
module.exports.nurse = nurse;