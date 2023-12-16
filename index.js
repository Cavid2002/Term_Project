const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
const path = require('path');


const app = express();
const PORT = 5000;

app.use(express.static('public'));
app.use("/",express.static("./node_modules/bootstrap/dist/"));
app.set('view engine', 'hbs');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(
    session({
        secret : 'secret-key',
        resave : false,
        saveUninitialized : false
    })
);


const loginRouter = require('./routes/login');
const mainRouter = require('./routes/main');
const adminRouter = require('./routes/admin');
app.use('/', loginRouter);
app.use('/main', mainRouter);
app.use('/admin', adminRouter);


app.listen(PORT, () => {
    console.log("[INFO] Listenting at Port:", PORT);
});