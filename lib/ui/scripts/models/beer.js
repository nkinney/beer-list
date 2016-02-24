module.exports = Backbone.Model.extend({
  defaults: {
    'isGood': true,
    'haveTried': false
  },
  urlRoot: '/api/beers'
});