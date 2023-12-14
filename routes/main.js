const express = require('express');
const db = require('../database/sql');

const router = express.Router();

router.get('/doctor', async (req, res) => {
    if(!req.session.userData)
    {
        return res.redirect('/?fail=You are not logged in');
    }
    if(req.session.userData.role != "Doctor")
    {
        return res.redirect('/?fail=Access Denined');
    }
    let userData = await db.user.getDataByID(req.session.userData.role, req.session.userData.id);
    let departmentData = await db.user.getDataByID('Department', userData.department_id);
    let examinationData = await db.doctor.getExaminationData(req.session.userData.id);
    return res.render('doctor', {user : userData, department: departmentData, examination: examinationData, success : req.query.success, failure : req.query.failure});
});

router.post('/doctor', async (req, res) => {
    if(req.body.send == "delete")
    {
        await db.doctor.removeExamination(req.body.id);
        return res.redirect('/main/doctor?success=Record has been deleted!');
    }
    if(req.body.send == "edit")
    {
        await db.doctor.updateExamination(req.body.id, req.body.details);
        return res.redirect('/main/doctor?success=Record has been updated!');
    }
    let patient = await db.doctor.checkPatientExists(req.body.ssn)
    if(!patient)
    {
        return res.redirect('/main/doctor?failure=Patient with given ssn does not exists!');
    }
    console.log(patient);
    let result = await db.doctor.checkExaminationExists(patient.id, req.session.userData.id);
    if(result)
    {
        return res.redirect('/main/doctor?failure=Examination already exists');
    }
    
    await db.doctor.addExamination(req.body.details, patient.id, req.session.userData.id)
    return res.redirect('/main/doctor?success=New record added!');
});

router.get('/nurse', async (req, res) => {
    if(!req.session.userData)
    {
        return res.redirect('/?fail=You are not logged in');
    }
    if(req.session.userData.role != "Nurse")
    {
        return res.redirect('/?fail=Access Denined');
    }
    let userData = await db.user.getDataByID(req.session.userData.role, req.session.userData.id);
    let departmentData = await db.user.getDataByID('Department', userData.department_id);
    let treatmentData = await db.nurse.getTreatmentData(req.session.userData.id);
    return res.render('nurse', {user : userData, department: departmentData, treatment: treatmentData, success : req.query.success, failure : req.query.failure});
});

router.post('/nurse', async (req, res) => {
    if(req.body.send == "delete")
    {
        await db.nurse.removeTreatment(req.body.id);
        return res.redirect('/main/nurse?success=Record has been deleted!');
    }
    if(req.body.send == "edit")
    {
        await db.nurse.updateTreatment(req.body.id, req.body.details);
        return res.redirect('/main/nurse?success=Record has been updated!');
    }


    let patient = await db.nurse.checkPatientExists(req.body.ssn)
    if(!patient)
    {
        return res.redirect('/main/nurse?failure=Patient with given ssn does not exists!');
    }
    console.log(patient);
    let result = await db.nurse.checkTreatmentExists(patient.id, req.session.userData.id);
    if(result)
    {
        return res.redirect('/main/nurse?failure=Treatment already exists');
    }
    
    await db.nurse.addTreatment(req.body.details, patient.id, req.session.userData.id)
    return res.redirect('/main/nurse?success=New record added!');

});

module.exports = router;