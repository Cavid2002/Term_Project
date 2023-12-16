const express = require('express');
const db = require('../database/sql');
const router = express.Router();


router.get('/', async (req, res) => {
    return res.render('login', {fail : req.query.fail, success : req.query.success});
});

router.post('/', async (req, res) => {
    let formData = req.body;
    console.log(formData);
    for(let key in req.body)
    {
        if(req.body[key] == "")
        {
            return res.redirect('/?failure=Make sure to fill all the gaps')
        }
    }
    let roleName = req.body.role
    let data = await db.user.checkUser(roleName, formData.email);
    if(!data || data.password != formData.password)
    {
        return res.redirect('/?fail=invalid email or password');
    }
    
    req.session.userData = {id : data.id, role : roleName};
    return res.redirect(`/main/${roleName.toLowerCase()}`);
});

router.get('/logout', async (req, res) =>{
    if(!req.session.userData)
    {
        return res.redirect('/?fail=You are not logged in!');
    }
    delete req.session.userData;
    return res.redirect('/?success=You Logged Out!');
})


router.get('/sign-up', async (req, res) => {
    res.render('sign-up', {failure : req.query.failure});
});

router.post('/sign-up', async (req, res) => {
    for(let key in req.body)
    {
        if(req.body[key] == "")
        {
            return res.redirect('/sign-up?failure=Make sure to fill all the gaps')
        }
    }
    console.log(req.body.password, req.body.repassword, req.body.password!=req.body.repassword);
    if(req.body.repassword != req.body.password)
    {
        return res.redirect('/sign-up?failure=Passwords do not match!'); 
    }
    let [result] = await db.user.getDataByCol('Patient', 'email', req.body.email);
    if(result)
    {
       return res.redirect('/sign-up?failure=User with email exists!'); 
    }
    [result] = await db.user.getDataByCol('Patient', 'ssn', req.body.ssn);
    if(result)
    {
        return res.redirect('/sign-up?failure=User with given ssn exists!');
    }
    await db.patient.addPatient(req.body);
    return res.redirect('/?success=New patient account is created!');
});

module.exports = router;