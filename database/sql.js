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
        let cmd = `SELECT * FROM ${tableName} WHERE email = '${email}';`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    },
    getDataByID: async (tableName, id) => {
        let cmd = `SELECT * FROM ${tableName} WHERE id = ${id};`;
        console.log("Command Executed:", cmd);
        let [data] = await db.query(cmd);
        return data[0];
    }
}

module.exports.user = user;  