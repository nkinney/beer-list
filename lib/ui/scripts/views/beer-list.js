'use-strict'

var template = require('../../templates/beer-list.hbs');
var BeerView = require('./beer');

module.exports = Backbone.Marionette.CollectionView.extend({
	template: template,
	childViewContainer: '[data-region=beers]',
	childView: BeerView
});