var express = require('express');
var router = express.Router();
var md5 = require('md5');

var conMap = {}

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Portal', rndId: md5(Date.now())});
});

router.post('/', function(req, res, next) {
    res.redirect('./portal.html?pid=' + md5(Date.now()) + '&shareId=' + req.body.peerId);
});

module.exports = router;
