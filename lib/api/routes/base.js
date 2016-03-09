var express = require('express');
var path = require('path');
var passport = require('passport');

var BeerController = require('../controllers/beer.js');
var userController = require('../controllers/user');
var authController = require('../controllers/auth');
var user = require('../models/user.json');

var router = express.Router();

router.get('/', function(req, res) {
	res.sendFile(path.join(__dirname + '/../../ui/index.html'));
});

router.get('/api/', function(req, res) {
	res.send('Beer List API');
});

router.route('/api/users')
  .post(userController.postUsers)
  .get(authController.isAuthenticated, userController.getUsers);

router.route('/api/users/:username')
  .get(authController.isAuthenticated, userController.getUser);

router.route('/api/users/:username/try')
  .get(authController.isAuthenticated, userController.addBeerTried);

router.get('/api/user', function(req, res) {
	res.send(user);
});

router.route('/api/beers')
	.get(authController.isAuthenticated, BeerController.getBeers);

module.exports = router;