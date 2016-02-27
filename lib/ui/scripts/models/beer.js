'use-strict'

module.exports = Backbone.Model.extend({
  defaults: {
    'isGood': true
  },
  urlRoot: '/api/beers'
});