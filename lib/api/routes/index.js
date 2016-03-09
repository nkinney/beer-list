var express = require('express');
var path = require('path');
var BeerController = require('../controllers/beer.js');
var user = require('../models/user.json');

var router = express.Router();

router.get('/', function(req, res) {
	res.sendFile(path.join(__dirname + '/../../ui/index.html'));
});

router.get('/api/', function(req, res) {
	res.send('Beer List API');
});

router.get('/api/user', function(req, res) {
	res.send(user);
});

router.get('/api/beers', function(req, res) {
	BeerController.getBeers(req, res);
});

module.exports = router;