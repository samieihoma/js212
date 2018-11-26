var mysql = require('mysql');
var experess=require('express');
var con = mysql.createConnection({
    host: "Localhost",
    database:"project",
    user: "root",
    password: "F@rzin"
});
module.exports =con;