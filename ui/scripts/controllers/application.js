'use-strict'
var IndexView = require('../views/index');

module.exports = Marionette.Controller.extend({
  constructor: function() {
    Marionette.Controller.prototype.constructor.apply(this, arguments);
  },
  defaultRoute: function() {
    Application.content.show(new IndexView());
  }
});