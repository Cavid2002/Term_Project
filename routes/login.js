const express = require('express');
const db = require('../database/sql');
const router = express.Router();


router.get('/', async (req, res) => {
    return res.render('login', {fail : req.query.fail, success : req.query.success});
});

router.post('/', async (req, res) => {
    let formData = req.body;
    console.log(formData);
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

module.exports = router;