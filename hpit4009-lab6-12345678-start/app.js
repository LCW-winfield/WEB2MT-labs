const mysql = require("mysql2");
const express = require("express");
const bodyparser = require("body-parser");
var app = express();
//Configuring express server
app.use(bodyparser.json());

const con = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "12345678",
  database: "hpit4009",
});

con.connect((err) => {
  if (!err) console.log("Connection Established Successfully");
  else console.log("Connection Failed!" + JSON.stringify(err, undefined, 2));
});

//Router to GET a collection of to-do records
app.get("/todos", (req, res) => {
  con.query("SELECT * FROM todos", (err, rows, fields) => {
    if (!err) {
      console.log(rows);
      res.send(rows);
    } else console.log(err);
  });
});

//Router to GET a single to-do record
app.get("/todos/:id", (req, res) => {
  con.query(
    "SELECT * FROM todos WHERE id = ?",
    [req.params.id],
    (err, rows, fields) => {
      if (!err) {
        console.log(rows);
        res.send(rows[0]);
      } else console.log(err);
    }
  );
});

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}..`));
