var express = require('express');
var router = express.Router();
const posts = require('../posts.json');  // 导入帖子数据

router.get('/', function(req, res, next) {
  res.render('index', { 
    title: '你的姓名',  // 记得替换成你的姓名
    posts: posts 
  });
});

module.exports = router;