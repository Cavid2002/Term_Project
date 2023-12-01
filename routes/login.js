const express = require('express');
const db = require('../database/sql');
const router = express.Router();


router.get('/', async (req, res) => {
    return res.render('login', {msg : req.query.msg});
});

router.post('/', async (req, res) => {
    let formData = req.body;
    let dbName = "Doctor";
    if(formData.role == "nurse")
    {
        dbName = "Nurse";  
    } 
    let data = await db.user.checkUser(dbName, formData.email);
    if(!data || data.password != formData.password)
    {
        return res.redirect('/?msg=invalid email or password');
    }
    
    req.session.userData = {id : data.id, role : "nurse"};
    return redirect('/main');
});



module.exports = router;