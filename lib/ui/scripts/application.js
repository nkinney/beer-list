'use-strict'

var Router = require('./routers/application');

var MarionetteApplication = Backbone.Marionette.Application.extend({
  routers: null,
  username: undefined,
  password: undefined,

  constructor: function(options) {
    options = options || {};
    options.routers = [];
    Backbone.Marionette.Application.prototype.constructor.call(this, options);

    this.on('start', function() {
      this.history.start();
    });

    this.addInitializer(function() {
      this.addRegions({
        content: '[data-region=content]',
        modal: '[data-region=modal]'
      });
      this.history = Backbone.history;

      this.routers.push(new Router());
    });
  },

  showModal: function(modal) {
    this.modal.show(modal);
  },

  stop: function() {
    this.destroyRegions();
    Backbone.history.stop();
  },

  authToken: function() {
    var user = "nick";
    var pass = "password";
    var token = user.concat(":", pass);
    return btoa(token);
  }
});

window.Application = new MarionetteApplication();
