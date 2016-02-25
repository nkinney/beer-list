'use-strict'

BeerModel = require('../models/beer.js');

module.exports = Backbone.Collection.extend({
	model: BeerModel,
    url:  '/api/beers'
});