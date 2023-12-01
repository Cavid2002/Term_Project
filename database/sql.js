const mysql = require('mysql2');

const db =  mysql.createPool({
    host : "localhost",
    port : 3306,
    user : "root",
    password : process.env.DATABASE_PASSWORD,
    database : "Hospital"
}).promise();

const user = {
    checkUser: async (tableName, email) => {
        let cmd = `Select * from ${tableName} where email = ${email};`;
        console.log(cmd);
        let [data] = await db.query(cmd);
        return data[0];
    },
}

module.exports.user = user;  