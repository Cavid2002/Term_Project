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
    
    let userData = db.user.getDataByID(req.session.userData.role, req.session.userData.id);
    let departmentData = db.user.getDataByID('Department', data.department_id);
    return res.render('doctor', {user : userData, department: departmentData});
});

router.post('/doctor', async (req, res) => {
    
});



module.exports = router;