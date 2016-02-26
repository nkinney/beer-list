'use-strict'

var Router = require('./routers/application');

var MarionetteApplication = Backbone.Marionette.Application.extend({
  routers: null,

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

      // this.listenTo(Application, 'showModal', this.onShowModal);
    });
  },

  showModal: function(modal) {
    this.modal.show(modal);
  },

  // onShowModal: function(modal) {
  //   this.modal.show(modal);
  // },

  stop: function() {
    this.destroyRegions();
    Backbone.history.stop();
  }
});

window.Application = new MarionetteApplication();
