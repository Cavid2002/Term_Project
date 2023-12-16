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
        await db.doctor.updateExamination(req.body.time, req.body.id, req.body.details);
        return res.redirect('/main/doctor?success=Record has been updated!');
    }

    for(let key in req.body)
    {
        if(req.body[key] == "")
        {
            return res.redirect('/main/doctor?failure=Make sure to fill all the gaps')
        }
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
    
    await db.doctor.addExamination(req.body.time, req.body.details, patient.id, req.session.userData.id)
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
        await db.nurse.updateTreatment(req.body.time, req.body.id, req.body.details);
        return res.redirect('/main/nurse?success=Record has been updated!');
    }
    for(let key in req.body)
    {
        if(req.body[key] == "")
        {
            return res.redirect('/main/nurse?failure=Make sure to fill all the gaps')
        }
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
    
    await db.nurse.addTreatment(req.body.time ,req.body.details, patient.id, req.session.userData.id)
    return res.redirect('/main/nurse?success=New record added!');

});


router.get('/view-patient', async (req, res) => {
    if(req.session.userData.role != "Nurse" && req.session.userData.role != "Doctor")
    {
        return res.redirect('/?fail=Access denied!');
    }
    let role = req.session.userData.role;
    if(!req.query.ssn)
    {
        return res.redirect(`/main/${role.toLowerCase()}?failure=provide ssn`);
    }
    let ssn = req.query.ssn;
    let [patientData] = await db.user.getDataByCol('Patient', 'ssn', ssn);
    return res.render('view-patient', {patient : patientData, roleName: role});
});

router.get('/patient', async (req, res) => {
    console.log(req.session.userData);
    if(!req.session.userData){
        return res.redirect('/?fail=You are not logged in!');
    }
    if(req.session.userData.role != "Patient")
    {
        return res.redirect('/?fail=Access denined!');
    }
    let patientData = await db.user.getDataByID(req.session.userData.role, req.session.userData.id);
    console.log(patientData);
    let reservationData = await db.patient.checkReservation(req.session.userData.id);
    return res.render('patient', {patient : patientData, reservation : reservationData, failure: req.query.failure, success: req.query.success});
});

router.post('/patient', async (req, res) => {
    if(req.body.send == "delete")
    {
        await db.patient.deleteReservation(req.body.id);
        return res.redirect('/main/patient?success=Reservation canceled!');
    }
    if(req.body.send == "edit")
    {
        console.log(req.body);
        await db.patient.updateReservation(req.body.id, req.body.reservation_date, req.body.dprt_id);
        return res.redirect('/main/patient?success=Reservation updated!');
    }
    for(let key in req.body)
    {
        if(req.body[key] == "")
        {
            return res.redirect('/main/patient?failure=Make sure to fill all the gaps')
        }
    }
    let result = await db.patient.addReservation(req.body.reservation_date, req.session.userData.id, req.body.dprt_id);
    return res.redirect('/main/patient?success=Reservation added');
});

router.get('/search', async (req, res)=> {
    if(!req.session.userData)
    {
        return res.redirect('/?fail=Access denied!');
    }
    if(req.session.userData.role != "Doctor" && req.session.userData.role != "Nurse")
    {
        return res.redirect('/?fail=Access denied!');
    }
    return res.render('search', {patient: "", failure : req.query.failure, roleName: req.session.userData.role});
});

router.post('/search', async (req, res) => {
    let filter = req.body.search;
    if(filter == "")
    {
        return res.redirect('/main/search?failure=Specify filter parameters');
    }
    try{
        let data = await db.patient.getPatientsByFilter(filter);
        return res.render('search', {patient: data, failure : "", roleName: req.session.userData.role});
    }
    catch(err)
    {
        return res.redirect('/main/search?failure=Wrong filter parameters');
    }
   
});

module.exports = router;