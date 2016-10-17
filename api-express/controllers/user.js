// Load required packages
var User = require('../models/user');

// Create endpoint /api/users for POST
exports.postUsers = function(req, res) {
  var user = new User({
    user_id: req.body.username,
    email: req.body.email,
    username: req.body.username,
    password: req.body.password,
    firstname: req.body.firstname,
    lastname: req.body.lastname,
    beersTried: []
  });

  user.save(function(err) {
    if (err)
      res.send(err);

    res.json({ message: 'New beer drinker added to the locker room!' });
  });
};

// Create endpoint /api/users for GET
exports.getUsers = function(req, res) {
  User.find(function(err, users) {
    if (err)
      res.send(err);

    res.json(users);
  });
};

exports.getUser = function(req, res) {
  var username = req.params.username
  User.findOne({ 'username': username }, 'username beersTried', function (err, user) {
    if (err) {
      res.send(err);
    }
    console.log('%s found.', user.username)
    res.json(user);
  });
};

exports.addBeerTried = function(req, res) {
  var username = req.params.username
  console.log(req.body)
  var beersTried = req.body.beersTried
  User.findOne({ 'username': username }, 'username beersTried', function (err, user) {
    if (err) {
      res.send(err);
    }
    console.log('%s found. Adding beer tried.', user.username)
    user.beersTried = beersTried;
    user.save();
    res.json(user);
  });
};

