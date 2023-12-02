const express = require('express');
const db = require('../database/sql');
const router = express.Router();


router.get('/', async (req, res) => {
    return res.render('login', {fail : req.query.fail});
});

router.post('/', async (req, res) => {
    let formData = req.body;
    console.log(formData);
    let roleName = "Doctor";
    if(formData.role == "nurse")
    {
        roleName = "Nurse";  
    } 
    let data = await db.user.checkUser(roleName, formData.email);
    if(!data || data.password != formData.password)
    {
        return res.redirect('/?fail=invalid email or password');
    }
    
    req.session.userData = {id : data.id, role : roleName};
    return resredirect(`/main/${roleName.toLowerCase()}`);
});



module.exports = router;