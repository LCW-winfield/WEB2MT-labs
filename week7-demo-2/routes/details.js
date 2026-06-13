var express = require('express');
var router = express.Router();
var users = require('../users.json')

console.log(users);
/* GET details page. */
router.get('/:id', function(req, res, next) {
    //res.send("details");
  console.log("ID: " + req.params.id);
  res.render('details', { 
    title: 'Details', user: users[req.params.id-1] 
  });
});

module.exports = router;
