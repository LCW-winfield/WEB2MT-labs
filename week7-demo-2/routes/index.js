var express = require('express');
var router = express.Router();
var users = require('../users.json')

console.log(users);
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { 
    title: 'Phonebook', users: users 
  });
  //res.send("hello");
});

module.exports = router;
