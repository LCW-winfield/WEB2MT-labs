var express = require("express");
var router = express.Router();

const posts = require("../posts.json");
console.log(posts);

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", {
    title: "Instogram (Your Full Name Here)",
    posts,
  });
});

module.exports = router;
