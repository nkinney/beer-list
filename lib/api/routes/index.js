var express = require('express');
var path = require('path');
var Beers = require('../models/beers.js');
var user = require('../models/user.json');

var router = express.Router();

router.get('/', function(req, res) {
	res.sendFile(path.join(__dirname + '/../../ui/index.html'));
});

router.get('/api/', function(req, res) {
	res.send('Hello World!');
});

router.get('/api/user', function(req, res) {
	res.send(user);
});

router.get('/api/beers', function(req, res) {
    Beers.find().lean().exec(function (err, beers) {
        return res.send(JSON.stringify(beers));
    });
});

module.exports = router;