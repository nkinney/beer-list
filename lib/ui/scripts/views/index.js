'use-strict'

var Beers = require('../collections/beers');
var BeersListView = require('./beer-list');
var template = require('../../templates/application.hbs');

module.exports = Backbone.Marionette.LayoutView.extend({
  template: template,

  regions: {
    beerList: '[data-region=beer-list]'
  },

  initialize: function(options) {
  	this.beers = options.beers;
  },

  onRender: function() {
  	var beerListView = new BeersListView({
      collection: this.beers
    });
  	this.beerList.show(beerListView);
  }
});