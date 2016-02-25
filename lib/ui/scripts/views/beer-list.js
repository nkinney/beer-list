'use-strict'

var Beers = require('../collections/beers');
var template = require('../../templates/beer-list.hbs');

module.exports = Backbone.Marionette.LayoutView.extend({
  template: template,

  serializeData: function() {
    return {beers: this.collection.models};
  },
});