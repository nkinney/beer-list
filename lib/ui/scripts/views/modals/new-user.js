'use strict';

var template = require('../../../templates/modals/new-user.hbs');
var UserModel = require('../../models/user');

var defaultEvents = {
  'hide.bs.modal': 'cancel',
  'hidden.bs.modal': 'destroy'
};

var BaseView = Backbone.Marionette.LayoutView;

module.exports = BaseView.extend({
  id: 'new-user-view',
  template: template,

  ui: {
    username: '#new-user-name',
    email: '#new-user-email',
    password: '#new-user-password',
    firstName: '#new-user-first-name',
    lastName: '#new-user-last-name',
  },

  events: {
    "click #new-user-button": "onNewUserBtnClicked"
  },

  constructor: function(options) {
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

  onNewUserBtnClicked: function() {
    event.preventDefault();
    var self = this;
    this.model.set('username', this.ui.username.val());
    this.model.set('email', this.ui.email.val());
    this.model.set('password', this.ui.password.val());
    this.model.set('firstname', this.ui.firstName.val());
    this.model.set('lastname', this.ui.lastName.val());
    // this.model.save().done(function() {
    //   Application.user = self.ui.username.val();
    //   Application.pass = self.ui.password.val();
    //   // self.trigger('createComplete');
    //   self.$el.modal('hide');
    // }).fail(function(jqXHR, options) {
    //   self.$el.modal('hide');
    // });
    // this.model.save({
    //   success: function(model, response) {
    //     Application.user = self.ui.username.val();
    //     Application.pass = self.ui.password.val();
    //     // self.trigger('createComplete');
    //     self.$el.modal('hide');
    //   },
    //   error: function(model, error) {
    //     // self.trigger('createComplete');
    //     self.$el.modal('hide');
    //   }
    // });
    // Application.user = self.ui.username.val();
    // Application.pass = self.ui.password.val();
    // self.trigger('createComplete');
    this.$el.modal('hide');
  }
});