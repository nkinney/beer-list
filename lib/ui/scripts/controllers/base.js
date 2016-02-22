'use-strict'
var BeerList = require('../views/beer-list');

module.exports = Marionette.Controller.extend({
  constructor: function() {
    Marionette.Controller.prototype.constructor.apply(this, arguments);
  },
  defaultRoute: function() {
    Application.content.show(new BeerList());
  }
});