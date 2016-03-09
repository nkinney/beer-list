var Beer = require('../models/beer');

exports.getBeers = function(req, res) {
  Beer.find(function(err, beers) {
    if (err)
      res.send(err);
    res.json(beers);
  });
};