const express = require('express');
const router = express.Router();

router.get('/', async (req, res) => {
    res.render('employee');
});

router.post('/', async (req, res) => {

});

module.exports = router;