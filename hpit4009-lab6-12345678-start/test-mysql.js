// get the client
const mysql = require("mysql2");

// create the connection to database
const connection = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "12345678",
  database: "mysql",
});

// simple query
connection.query(
  "SELECT user, host FROM `user` ",
  function (err, results, fields) {
    console.log(results); // results contains rows returned by server
    //console.log(fields); // fields contains extra meta data about results, if available
  }
);

//connection.close();
