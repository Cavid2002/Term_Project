const express = require('express');
const db = require('../database/sql');

const router = express.Router();

router.get('/', async (req, res) => {
   return res.render('admin-login', {fail : req.query.fail, success : req.query.success}); 
});

router.post('/', async (req, res) => {
    if(req.body.admin != "admin" || req.body.password != "admin")
    {
        return res.redirect('/?fail=Invalid password or username')
    }
    req.session.userData = {role : "admin"};
    return res.redirect('/admin/main'); 
});

router.get('/main', async (req, res) => {
    if(!req.session.userData || req.session.userData.role != "admin")
    {
        return res.redirect('/admin?fail=Admin access denied!');
    }
    let nurses = await db.admin.showAllNurses();
    let doctors = await db.admin.showAllDoctors();
    return res.render('admin', {nurse : nurses, doctor : doctors, failure : req.query.failure, success : req.query.success});   
});

router.post('/main', async (req, res) => {
    if(req.body.send == "delete")
    {
        await db.admin.deleteEmployeeByID(req.body.role, req.body.id);
        return res.redirect('/admin/main?success=Record has been deleted!');
    }
    if(req.body.send == "edit")
    {
        try{
            await db.admin.updateEmployeeById(req.body.role, req.body);
            return res.redirect('/admin/main?success=Record has been updated!');
        }
        catch(err)
        {
            return res.redirect('/admin/main?failure=Values should be unique!');
        }
        
    }
    console.log(req.body);
    for(let key in req.body)
    {
        if(req.body[key] == "")
        {
            return res.redirect('/admin/main?failure=Make sure to fill all the gaps')
        }
    }
    try{
        await db.admin.insertEmployee(req.body.role, req.body);
        return res.redirect('/admin/main?success=New record added!');
    }
    catch(err){
        return res.redirect('/admin/main?failure=Values should be unique!');
    }
   
})


module.exports = router;