var express = require('express');
var path = require('path');
var beers = require('../models/beers.json');
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
	res.send(beers);
});

module.exports = router;