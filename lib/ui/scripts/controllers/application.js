'use-strict'
var IndexView = require('../views/index');
var BeerListCollection = require('../collections/beers');

module.exports = Marionette.Controller.extend({
  constructor: function() {
    Marionette.Controller.prototype.constructor.apply(this, arguments);
  },
  defaultRoute: function() {
  	var beers = new BeerListCollection();
    beers.fetch({
      success: function() {
        Application.content.show(new IndexView({
        	beers: beers
        }));
      }
    });
  }
});