// Load required packages
var User = require('../models/user');

// Create endpoint /api/users for POST
exports.postUsers = function(req, res) {
  var user = new User({
    username: req.body.username,
    password: req.body.password,
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
  var beerTried = req.body.id
  User.findOne({ 'username': username }, 'username beersTried', function (err, user) {
    if (err) {
      res.send(err);
    }
    user.beersTried.push(beerTried);
    user.save();
    res.json(user);
  });
};

