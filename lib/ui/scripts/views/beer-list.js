var Beers = require('../collections/beers');

module.exports = Backbone.View.extend({
  el: '.page',
  render: function() {
    var that = this;
    var beers = new Beers();
    beers.fetch({
      success: function() {
        var template = createTemplate('beer-list', {beers: beers.models});
        that.$el.html(template);
      }
    });
  }
});