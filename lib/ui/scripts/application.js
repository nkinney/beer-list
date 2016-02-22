
var Router = require('./routers/application');

var MarionetteApplication = Backbone.Marionette.Application.extend({
  routers: null,

  constructor: function(options) {
  	console.log("WE ARE IN THE APPLICATION CONSTRUCTOR")
    options = options || {};
    options.routers = [];
    Backbone.Marionette.Application.prototype.constructor.call(this, options);

    this.on('start', function() {
      this.history.start();
    });

    this.addInitializer(function() {
      this.addRegions({
        content: '[data-region=content]'
      });
      this.history = Backbone.history;

      this.routers.push(new Router());
    });
  },

  stop: function() {
    this.destroyRegions();
    Backbone.history.stop();
  }
});

window.Application = new MarionetteApplication();
