var Beer = require('../models/beers');

exports.getBeers = function(req, res) {
  Beer.find(function(err, beers) {
    if (err)
      res.send(err);
    res.json(beers);
  });
};