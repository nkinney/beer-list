'use strict';

var template = require('../../../templates/modals/beer-modal.hbs');

// var defaultEvents = {
//   'hide.bs.modal': 'cancel',
//   'hidden.bs.modal': 'destroy'
// };

var BaseView = Backbone.Marionette.LayoutView;

module.exports = BaseView.extend({
  id: 'beer-modal-view',
  template: template,

  ui: {
    triedBeerButton: '#modal-tried-beer'
  },

  events: {
    "click #modal-tried-beer": "onBeerTried"
  },

  constructor: function(options) {

    // this.events = _.extend({}, defaultEvents, this.events);

    BaseView.prototype.constructor.apply(this, arguments);

    this.$el.attr('tabindex', '-1').
      attr('role', 'dialog').
      attr('aria-labelledby', this.id).
      attr('aria-hidden', 'true').
      addClass('modal fade');

    this.on('destroy', function() {
      this.$el.modal('hide');
    });

    this.on('show', function() {
      this.$el.modal();
    });
  },

  cancel: function() {
    this.trigger('cancel');
  },

  show: function() {
    Application.showModal(this);
  },

  hide: function() {
    this.$el.modal('hide');
  }, 

  onBeerTried: function() {
    Application.userView.model.tryBeer(this.model.attributes.id);
    this.$el.modal('hide');
  },

  serializeData: function() {
    return this.model.attributes;
  }
});
