const express = require("express");
const app = express();
const port = 3000;
var users = require("./users.json");
var nextId = users.length;

// Welcome Route
app.get("/", (req, res) => {
  res.send("Welcome! Please access the api by /users");
});

// Get All Users
app.get("/users", (req, res) => {
  var result = { status_code: 1, status_message: "success" };
  result.data = users;
  res.json(result);
});

// Get One User by User Id
app.get("/users/:id", (req, res) => {
  var result = { status_code: 1, status_message: "success" };
  var user = users.filter((user) => user.id == req.params.id);
  if (user.length == 1) {
    result.data = user[0];
  } else {
    result.status_code = 0;
    result.status_message = `Cannot find the user ${req.params.id}`;
  }
  res.send(result);
});

// Delete a User by User Id
app.delete("/users/:id", (req, res) => {
  var user = users.filter((user) => user.id == req.params.id);
  var result = { status_code: 1, status_message: "success" };
  if (user.length != 0) {
    users = users.filter((user) => user.id != req.params.id);
  } else {
    result.status_code = 0;
    result.status_message = `user id ${req.params.id} not found`;
  }
  res.send(result);
});

// Add a New User
app.post("/users", (req, res) => {
  var result = { status_code: 1, status_message: "success" };
  nextId++;
  console.log(req.query);
  var newUser = {
    id: nextId,
    name: req.query.name,
    username: req.query.username,
    email: req.query.email,
    phone: req.query.phone,
  };
  users.push(newUser);
  result.data = newUser;
  res.send(result);
});

// Update a User
app.put("/users/:id", (req, res) => {
  var result = { status_code: 1, status_message: "success" };
  var indexId = req.params.id - 1;
  if (indexId >= 0 && indexId <= nextId) {
    users[indexId].email = req.query.email;
    users[indexId].phone = req.query.phone;
    result.data = users[indexId];
  } else {
    result.status_code = 0;
    result.status_message = `user id ${req.params.id} not found`;
  }
  res.send(result);
});

// Start App
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
