var express = require("express");
var router = express.Router();

const posts = require("../posts.json");
router.get("/:postid", function (req, res, next) {
  var post = posts[req.params.postid - 1];
  console.log(post);
  res.render("view-post", { title: post.title, post });
});

module.exports = router;
